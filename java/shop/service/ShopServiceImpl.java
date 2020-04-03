package shop.service;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO_list;
import shop.bean.OrderBy;
import shop.bean.ShopPaging;
import shop.dao.ShopDAO;

@Service
public class ShopServiceImpl implements ShopService {
	@Autowired
	ShopDAO shopDAO;
	
	@Autowired
	ShopPaging shopPaging;
	
	@Autowired
	HttpSession session;

	@Override
	public List<BookDTO_list> getBookList(String pg) {
		int articlesPerPage = 12;
		int endNum = Integer.parseInt(pg) * articlesPerPage;
		int startNum = endNum - articlesPerPage + 1;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		
//		map.put("title", "드론");
//		map.put("author", "");
//		map.put("cate1", "");
//		map.put("p_date", "202003");
		nvl(map, "min", "0");
		nvl(map, "max", "0");
		
		return shopDAO.getBooks(map);
	}
	
	@Override
	public ModelAndView getBooks(ModelAndView mav, Map<String, Object> map) {
		int articlesPerPage = 12;
		
		nvl(map, "orderBy", "1");
		nvl(map, "pg", "1");
		String pg = (String) map.get("pg");
		
		map.put("endNum", (Integer.parseInt(pg) * articlesPerPage) + "");
		map.put("startNum", (Integer.parseInt((String)map.get("endNum")) - (articlesPerPage - 1)) + "");
		nvl(map, "min", "1000");
		nvl(map, "max", "100000");
		nvl(map, "cate1", "all");
		nvl(map, "cate2", "all");
		
		List<BookDTO_list> list = shopDAO.getBooks(map);
		for(BookDTO_list dto: list) {
			if(dto.getInfo()!=null)
				dto.setInfo(dto.getInfo().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", ""));
		}
		
		mav.addObject("book_list", list);
		
		mav.addObject("totalA", shopDAO.getBoardTotalA(map)); // 총 검색된 갯수
		mav.addObject("articles", list.size() > articlesPerPage ? articlesPerPage : list.size());
		mav.addObject("cate1", map.get("cate1"));
		mav.addObject("cate2", map.get("cate2"));
		mav.addObject("keyword", map.get("titleOrAuthor"));
		mav.addObject("orderBy", map.get("orderBy"));
		mav.addObject("min", map.get("min"));
		mav.addObject("max", map.get("max"));
		mav.addObject("pg", map.get("pg"));
		
		mav.addObject("grid_list", map.get("grid_list"));
		
		System.out.println(map);
		shopPaging.setTotalA(shopDAO.getBoardTotalA(map));
		shopPaging.setCurrentPage(Integer.parseInt((String)map.get("pg")));
		shopPaging.setPageSize(articlesPerPage);
		shopPaging.setPageBlock(10);
		shopPaging.makePagingHTML();
		
		mav.addObject("paging", shopPaging.getPagingHTML());
		
		return mav;
	}
	
	@Override
	// 인덱스 페이지에 뿌려줄 책들 가져오기 
	public ModelAndView getDPBooks(ModelAndView mav, String cate1, String cate2, int count, OrderBy orderBy, String list_name) {
		Map<String, Object> map = new HashMap<String, Object>();
		nvl(map, "orderBy", orderBy.getValue());	// 입력 받은 순서로(orderBy)
		map.put("startNum", 1 + "");				// 1개부터
		map.put("endNum", count + "");				// 입력받은 수까지
		nvl(map, "min", "1000");					// 최소 가격
		nvl(map, "max", "100000");					// 최대 가격
		map.put("cate1", cate1);					// 입력받은 카테고리 중에서 고르기
		map.put("cate2", cate2);					// 입력받은 카테고리 중에서 고르기
		
		List<BookDTO_list> list = shopDAO.getBooks(map);
		for(BookDTO_list dto: list) {
			if(dto.getInfo()!=null)
				dto.setInfo(dto.getInfo().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", ""));
		}
		mav.addObject(list_name, list); // 입력받은 이름으로 리스트를 만들어서 뷰에 싣기
		return mav;
	}
	
	public Map<String, Object> nvl(Map<String, Object> map, String key, Object defaultValue){
		if(map.get(key)==null) {
			map.put(key, defaultValue);
		}
		return map;
	}

	@Override
	public ModelAndView getWishlist(ModelAndView model) {
		String user_id = "n/a";
		if(session.getAttribute("memId")!=null) {
			user_id = (String) session.getAttribute("memId");
		}
		
		model.addObject("list_wishlist", shopDAO.getWishlist(user_id));
		return model;
	}

	@Override
	public String addWishlist(ModelAndView model, String book_id) {
		try {
			if(session.getAttribute("memId")==null) {
				return URLEncoder.encode("로그인이 필요한 서비스입니다.", "UTF-8");
			}
			
			Map<String, String> map = new HashMap<String, String>();
			map.put("user_id", (String) session.getAttribute("memId"));
			map.put("book_id", book_id);
			int result = shopDAO.getWishlist(map);
			
			if(result == 0) {
				System.out.println("addWishlist " + map);
				shopDAO.addWishlist(map);
				return URLEncoder.encode("찜 목록에 추가했습니다.", "UTF-8");
			}else {
				return URLEncoder.encode("이미 찜한 상품입니다.", "UTF-8");
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String removeFromWishlist(String book_id) {
		String user_id = (String) session.getAttribute("memId");

		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", user_id);
		map.put("book_id", book_id);
		System.out.println("removeFromWishlist " + map);
		shopDAO.removeFromWishlist(map);
		try {
			return URLEncoder.encode("찜 목록에서 삭제되었습니다.", "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
