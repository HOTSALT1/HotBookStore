package order.dao;

import java.util.List;
import java.util.Map;

import book.bean.BookDTO;
import order.bean.BookOrderDTO;
import order.bean.OrderDTO;
import order.bean.PointDTO;
import order.bean.ViewCartDTO;

public interface OrderDAO {

	public String getCartId(Map<String, String> map);

	public int addToCart(Map<String, String> map);
	public int updateCart(Map<String, String> map);
	public int removeCart(Map<String, String> map);
	public void removeCarts(Map<String, Object> map);

	public ViewCartDTO getCartByIds(Map<String, String> map);
	
	public List<ViewCartDTO> getCart(String memId);

	public BookDTO getBook(int book_id);
	public List<BookDTO> getBooksByViewCart(List<ViewCartDTO> checkout_list);

	public void addBookOrders(Map<String, Object> book_orderMap);

	public void addOrderList(Map<String, Object> order_listMap);

	public List<OrderDTO> admin_order_list();

	public List<OrderDTO> loadOrder(Map<String, Object> map);

	public List<BookOrderDTO> getBookOrders(String order_id);

	public List<PointDTO> loadPoint(Map<String, String> map);

	public int getPointTotalA(String user_id);

	public int getPoint(String user_id);

}
