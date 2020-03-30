package shop.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;
import shop.dao.ShopDAO;

@Service
public class ShopServiceImpl implements ShopService {
	@Autowired
	ShopDAO shopDAO;

	@Override
	public List<BookDTO> getBookList(String pg) {
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
	
	public ModelAndView getBooks(ModelAndView mav, Map<String, Object> map) {
		nvl(map, "startNum", "1");
		nvl(map, "endNum", "12");
		nvl(map, "min", "0");
		nvl(map, "max", "0");
		
		List<BookDTO> list = shopDAO.getBooks(map);
		mav.addObject("book_list", list);
		
		mav.addObject("totalA", list.size()); // 총 검색된 갯수
		mav.addObject("articles", list.size() > 12 ? 12 : list.size());
		mav.addObject("cate1", map.get("cate1"));
		mav.addObject("keyword", map.get("titleOrAuthor"));
		
		return mav;
	}
	
	public Map<String, Object> nvl(Map<String, Object> map, String key, Object defaultValue){
		if(map.get(key)==null) {
			map.put(key, defaultValue);
		}
		return map;
	}
	
}
