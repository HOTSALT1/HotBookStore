package order.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.http.HttpResponse;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;
import kr.co.bootpay.javaApache.BootpayApi;
import kr.co.bootpay.javaApache.model.request.Cancel;
import order.bean.CartDTO;
import order.bean.ViewCartDTO;
import order.dao.OrderDAO;
import shop.dao.ShopDAO;

@Service(value = "orderService")
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;
	
	@Autowired
	private ShopDAO shopDAO;
	
	@Autowired
	private BootpayApi bootpayApi;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpServletResponse response;

	@Override
	public List<String> test() {
		return orderDAO.test();
	}

	/* 선택된 상품을 장바구니에 추가하거나 수량을 업데이트하는 메소드 */
	@Override
	public String addToCart(Map<String, String> map) {
		int result = 0;
		
		// 회원일 경우
		String memId = (String) session.getAttribute("memId");
		if(memId != null) {
			map.put("user_id", memId);
			
			// 동일한 책을 장바구니에 담으려고 할 때 cart_id를 생성하지 않고 기존 정보를 업데이트함 
			String cart_id = orderDAO.getCartId(map);
			if(cart_id != null) {
				map.put("cart_id", cart_id + "");
				result = orderDAO.updateCart(map);
			}else {
				// 기존에 카트에 없는 책을 장바구니에 담았을 경우 새로운 cart_id 생성
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				cart_id = sdf.format(new Date());
				
				map.put("cart_id", cart_id);
				result = orderDAO.addToCart(map);
			}
			
		// 비회원일 경우
		}else {
			// 장바구니 정보를 쿠키에 담아서 보관 
			Cookie cookie = new Cookie("cart_" + map.get("book_id"), map.get("qty"));
			cookie.setMaxAge(60*60*24); // 기간을 하루로 지정
			cookie.setPath("/");
			response.addCookie(cookie);
			result = 1;
		}
		
		if(result > 0) {
			BookDTO bookDTO = orderDAO.getBook(Integer.parseInt(map.get("book_id")));
			int qty = Integer.parseInt(map.get("qty"));
			return (bookDTO.getPrice() * qty) + "/" + (bookDTO.getD_price() * qty);
		}
		return "error";
	}

	@Override
	public ModelAndView loadCart(ModelAndView model) {
		List<ViewCartDTO> cart_list = new ArrayList<ViewCartDTO>();
		
		// 회원일 경우
		String memId = (String) session.getAttribute("memId");
		if(memId != null) {
			System.out.println("회원 접속(" + memId + ")");
			cart_list = getCart(memId);
			
		// 비회원일 경우
		}else {
			System.out.println("비회원 접속");
			cart_list = getCartInCookies();
		}
		
		System.out.println("카트에 담긴 상품 수 : " + cart_list.size());
		List<BookDTO> book_list = getBooksInCart(cart_list);
		
		model.addObject("list", book_list);
		model.addObject("cart_list", cart_list);
		
		return model;
	}
	
	@Override
	public List<ViewCartDTO> getCart(String memId) {
		return orderDAO.getCart(memId);
	}
		
	/* 장바구니 쿠키에서 book_id(seq)와 수량(qty)을 불러와서 리스트로 돌려주는 메소드 */  
	@Override
	public List<ViewCartDTO> getCartInCookies() {
		List<ViewCartDTO> list = new ArrayList<ViewCartDTO>();
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null){
			for(int i = 0; i < cookies.length; i++){
				Cookie c = cookies[i];
				
				String cookie_name = c.getName();
				if(cookie_name.split("cart_").length > 1) {
					System.out.println(c.getName());
					int book_id = Integer.parseInt(c.getName().split("cart_")[1]); 	
					int qty = Integer.parseInt(c.getValue()); 	
					
					if(qty > 0) {
						System.out.println("쿠키 이름: " + c.getName() + " / path: " + c.getPath());
						ViewCartDTO ViewCartDTO = new ViewCartDTO();
						ViewCartDTO.setBook_id(book_id);
						ViewCartDTO.setQty(Integer.parseInt(c.getValue())); 	
						list.add(ViewCartDTO);
					}
				}
			}
		}
		return list;
	}

	/* 장바구니 리스트에 담겨있는 상품 데이터 리스트를 반환하는 메소드 */
	@Override
	public List<BookDTO> getBooksInCart(List<ViewCartDTO> cart_list) {
		List<BookDTO> list = new ArrayList<BookDTO>();
		for(ViewCartDTO cart : cart_list) {
			if(cart.getQty()>0) {
				BookDTO bookDTO = orderDAO.getBook(cart.getBook_id());
				if(bookDTO != null)
					list.add(bookDTO);
			}
		}
		return list;
	}

	/* 선택된 상품을 장바구니에서 삭제하는 메소드 */
	@Override
	public String removeCart(String book_id) {
		int result = 0;
		Map<String, String> map = new HashMap<String, String>();
		map.put("book_id", book_id);
		
		// 회원일 경우
		String memId = (String) session.getAttribute("memId");
		if(memId != null) {
			map.put("user_id", memId);
			result = orderDAO.removeCart(map);
			
		// 비회원일 경우
		}else {
			Cookie cookie = new Cookie("cart_" + map.get("book_id"), "0");
			cookie.setPath("/");
			cookie.setMaxAge(0); // 쿠키에서 삭제
			response.addCookie(cookie);
			result = 1;
		}
		
		if(result > 0) return "true";
		else return "error";
	}

	/* 구매 버튼 클릭시 구매할 cart_id 리스트를 세션에 임시 저장 */
	@Override
	public void addCheckout(List<Map<String, String>> list) {
		List<ViewCartDTO> checkout_list = new ArrayList<ViewCartDTO>();
		session.setAttribute("tax_ref", list.get(list.size()-1).get("tax_ref"));
		
		list.remove(list.size()-1);
		// 회원 구매시
		if(session.getAttribute("memId")!=null) {
			for(Map<String, String> map : list) {
				map.put("mem_id", (String)session.getAttribute("memId"));
				checkout_list.add(orderDAO.getCartByIds(map));
			}
		}else {
		// 비회원 구매시
			for(ViewCartDTO viewCartDTO: getCartInCookies()) {
				for(Map<String, String> map : list) {
					if((viewCartDTO.getBook_id()+"").equals(map.get("book_id"))) {
						checkout_list.add(viewCartDTO);
						break;
					}
				}
			}
		}
		
		List<BookDTO> book_list = orderDAO.getBooksByViewCart(checkout_list);
		
		for(int i = 0; i < book_list.size(); i++) {
			checkout_list.get(i).setPrice(book_list.get(i).getPrice());
			checkout_list.get(i).setD_price(book_list.get(i).getD_price());
			checkout_list.get(i).setTitle(book_list.get(i).getTitle());
			checkout_list.get(i).setCate1(book_list.get(i).getCate1());
			checkout_list.get(i).setCate2(book_list.get(i).getCate2());
		}
		
//		System.out.println(book_list.get(0));
		session.setAttribute("books", book_list);
		session.setAttribute("cart_checkout", checkout_list);
		
		// 결제 검증용
		int order_price = 0; 
		for(int i = 0; i < checkout_list.size(); i++) {
			order_price += checkout_list.get(i).getQty() * book_list.get(i).getD_price();
		}
		if(order_price < 30000) order_price += 3000;
		
		session.setAttribute("order_id", "hotSalt_" + new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
		session.setAttribute("order_price", order_price);
		
	}
	
	/* 장바구니 거치지 않고 바로 구매시 */
	@Override
	public void checkoutDirect(List<Map<String, String>> list) {
		List<ViewCartDTO> checkout_list = new ArrayList<ViewCartDTO>();
		session.setAttribute("tax_ref", list.get(list.size()-1).get("tax_ref"));
		
		list.remove(list.size()-1);
		
		Map<String, String> map = list.get(0);
		ViewCartDTO viewCartDTO = new ViewCartDTO();
		viewCartDTO.setBook_id(Integer.parseInt(map.get("book_id")));
		viewCartDTO.setQty(Integer.parseInt(map.get("qty")));
		checkout_list.add(viewCartDTO);
		
		// 회원 구매시
		if(session.getAttribute("memId")!=null) {
			viewCartDTO.setUser_id((String)session.getAttribute("memId"));
		}else {
		// 비회원 구매시
			viewCartDTO.setUser_id("비회원");
		}
		
		List<BookDTO> book_list = orderDAO.getBooksByViewCart(checkout_list);
		
		for(int i = 0; i < book_list.size(); i++) {
			checkout_list.get(i).setPrice(book_list.get(i).getPrice());
			checkout_list.get(i).setD_price(book_list.get(i).getD_price());
			checkout_list.get(i).setTitle(book_list.get(i).getTitle());
			checkout_list.get(i).setCate1(book_list.get(i).getCate1());
			checkout_list.get(i).setCate2(book_list.get(i).getCate2());
		}
		
//		System.out.println(book_list.get(0));
		session.setAttribute("books", book_list);
		session.setAttribute("cart_checkout", checkout_list);
		
		// 결제 검증용
		int order_price = 0; 
		for(int i = 0; i < checkout_list.size(); i++) {
			order_price += checkout_list.get(i).getQty() * book_list.get(i).getD_price();
		}
		if(order_price < 30000) order_price += 3000;
		
		session.setAttribute("order_id", "hotSalt_" + new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
		session.setAttribute("order_price", order_price);
		
	}
	
	@Override
	public ModelAndView verify(ModelAndView mav, String receipt_id) {
		try {
			bootpayApi.getAccessToken();
			HttpResponse res = bootpayApi.verify(receipt_id);
			String str = IOUtils.toString(res.getEntity().getContent(), "UTF-8");
			JSONObject result = new JSONObject(str);
			JSONObject result_data = result.getJSONObject("data");
			
			//System.out.println(result);
			
			String user_id = "비회원";
			int status = (Integer) result.get("status");
			String order_id = (String) (result_data.get("order_id"));
			int order_price = (Integer) result_data.get("price");
			List<CartDTO> checkout_list = (List<CartDTO>) session.getAttribute("cart_checkout");
			
			// order_list 테이블에 등록하기 위해 Map 생성
			Map<String, Object> order_listMap = new HashMap<String, Object>();
			order_listMap.put("order_id", order_id);
			order_listMap.put("price", order_price);
			order_listMap.put("name", result_data.get("name") + " 외");
			order_listMap.put("pg_name", result_data.get("pg_name"));
			order_listMap.put("method", result_data.get("method"));
			order_listMap.put("method_name", result_data.get("method_name"));
			order_listMap.put("status", result_data.get("status_ko"));
			order_listMap.put("receipt_id", result_data.get("receipt_id"));
			order_listMap.put("tax_ref", session.getAttribute("tax_ref"));
			//order_listMap.put("payment_data", result_data.getString("payment_data"));
			order_listMap.put("payment_data", "테스트중");
			
			// 정상 결제시
			if(	status == 200 && 
				order_id.equals(session.getAttribute("order_id")) &&
				order_price == (Integer) session.getAttribute("order_price") ) {
				System.out.println("주문번호: " + order_id);
				System.out.println("결제 검증 결과: 정상");
				
				
				// 로그인 한 회원이면 
				if(session.getAttribute("memId") != null) {
					user_id = (String)session.getAttribute("memId");
					
					// 구매 내역을 list에 담기
					Map<String, Object> map = new HashMap<String, Object>();
					map.put("list", checkout_list);
					map.put("user_id", user_id);
					
					// 구매 내역을 DB의 장바구니 테이블에서 삭제
					orderDAO.removeCarts(map);
					
				// 비회원이면 
				}else {
					// 구매 내역을 쿠키의 장바구니 데이터에서 삭제
					for(CartDTO cart: checkout_list) {
						Cookie cookie = new Cookie("cart_" + cart.getBook_id(), "0");
						cookie.setPath("/");
						cookie.setMaxAge(0); // 쿠키에서 삭제
						response.addCookie(cookie);
					}
				}
				// book_order 테이블에 등록
				Map<String, Object> book_orderMap = new HashMap<String, Object>();
				book_orderMap.put("order_id", order_id);
				book_orderMap.put("user_id", user_id);
				book_orderMap.put("list", checkout_list);
				
				orderDAO.addBookOrders(book_orderMap);
				
				// order_listMap에 정상 결제되었음을 알리는 note 추가
				order_listMap.put("note", "정상 결제");
				
			}else {
			// 비정상적인 결제시 취소 처리
				System.out.println("주문번호: " + order_id);
				System.out.println("결제 검증 결과: 비정상");
				if(order_price != (Integer) session.getAttribute("order_price"))
					System.out.println("결제 예상 금액: " + session.getAttribute("order_price") + " / 실제 결제 금액: " + order_price);
				System.out.println("결제 예상 금액이 일치하지 않습니다. 결제 취소를 요청합니다.");
				
				goCancel(receipt_id, "관리자", "결제 금액 불일치");
				
				order_listMap.put("status", "결제취소");
				order_listMap.put("note", "결제 금액 불일치");
			}
			
			// user_id를 추가하여 내역을 order_list 테이블에 등록
			order_listMap.put("user_id", user_id);
			orderDAO.addOrderList(order_listMap);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("/verify");
		return mav;
	}
	
	public void goCancel(String receipt_id, String name, String reason) {
        Cancel cancel = new Cancel();
        cancel.receipt_id = receipt_id;
        cancel.name = name;
        cancel.reason = reason;

        try {
            HttpResponse res = bootpayApi.cancel(cancel);
            String str = IOUtils.toString(res.getEntity().getContent(), "UTF-8");
            System.out.println(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	
}

