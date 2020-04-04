package order.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import book.bean.BookDTO;
import order.bean.BookOrderDTO;
import order.bean.CartDTO;
import order.bean.OrderDTO;
import order.bean.PointDTO;
import order.bean.ViewCartDTO;

@Repository
@Transactional
public class OrderDAOMybatis implements OrderDAO {
	@Autowired
	private SqlSession session;
	
	@Override
	public String getCartId(Map<String, String> map) {
		return session.selectOne("orderSQL.getCartId", map);
	}

	@Override
	public int addToCart(Map<String, String> map) {
		return session.insert("orderSQL.addToCart", map);
	}

	@Override
	public int updateCart(Map<String, String> map) {
		return session.update("orderSQL.updateCart", map);
	}

	@Override
	public List<ViewCartDTO> getCart(String memId) {
		return session.selectList("orderSQL.getCart", memId);
	}
	
	@Override
	public BookDTO getBook(int book_id) {
		return session.selectOne("shopSQL.getBook", book_id);
	}

	@Override
	public int removeCart(Map<String, String> map) {
		return session.update("orderSQL.removeCart", map);
	}

	@Override
	public ViewCartDTO getCartByIds(Map<String, String> map) {
		return session.selectOne("orderSQL.getCartByIds", map);
	}

	@Override
	public void removeCarts(Map<String, Object> map) {
		session.delete("orderSQL.removeCarts", map);
	}

	@Override
	public void addBookOrders(Map<String, Object> map) {
		session.insert("orderSQL.addBookOrders", map);
	}

	@Override
	public void addOrderList(Map<String, Object> map) {
		session.insert("orderSQL.addOrderList", map);
	}

	@Override
	public List<BookDTO> getBooksByViewCart(List<ViewCartDTO> list) {
		return session.selectList("orderSQL.getBooksByViewCart", list);
	}

	@Override
	public List<OrderDTO> admin_order_list() {
		return session.selectList("orderSQL.admin_order_list");
	}

	@Override
	public List<OrderDTO> loadOrder(Map<String, Object> map) {
		return session.selectList("orderSQL.loadOrder", map);
	}

	@Override
	public List<BookOrderDTO> getBookOrders(String order_id) {
		return session.selectList("orderSQL.getBookOrders", order_id);
	}

	@Override
	public List<PointDTO> loadPoint(Map<String, String> map) {
		return session.selectList("orderSQL.getPoint_log", map);
	}

	@Override
	public int getPointTotalA(String user_id) {
		return session.selectOne("orderSQL.getPoint_log_count", user_id);
	}

	@Override
	public int getPoint(String user_id) {
		return session.selectOne("orderSQL.getPoint", user_id);
	}

}
