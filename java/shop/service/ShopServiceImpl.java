package shop.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO_list;
import shop.bean.ShopPaging;
import shop.dao.ShopDAO;

@Service
public class ShopServiceImpl implements ShopService {
	@Autowired
	ShopDAO shopDAO;
	
	@Autowired
	ShopPaging shopPaging;

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
	
	public ModelAndView getBooks(ModelAndView mav, Map<String, Object> map) {
		int articlesPerPage = 12;
		
		nvl(map, "orderBy", "1");
		nvl(map, "pg", "1");
		String pg = (String) map.get("pg");
		
		map.put("endNum", (Integer.parseInt(pg) * articlesPerPage) + "");
		map.put("startNum", (Integer.parseInt((String)map.get("endNum")) - (articlesPerPage - 1)) + "");
		nvl(map, "min", "1000");
		nvl(map, "max", "100000");
		
		List<BookDTO_list> list = shopDAO.getBooks(map);
		for(BookDTO_list dto: list) {
			if(dto.getInfo()!=null)
				dto.setInfo(dto.getInfo().replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", ""));
		}
		
		mav.addObject("book_list", list);
		
		mav.addObject("totalA", shopDAO.getBoardTotalA(map)); // 총 검색된 갯수
		mav.addObject("articles", list.size() > articlesPerPage ? articlesPerPage : list.size());
		mav.addObject("cate1", map.get("cate1"));
		mav.addObject("keyword", map.get("titleOrAuthor"));
		mav.addObject("orderBy", map.get("orderBy"));
		mav.addObject("min", map.get("min"));
		mav.addObject("max", map.get("max"));
		mav.addObject("pg", map.get("pg"));
		
		System.out.println(map);
		shopPaging.setTotalA(shopDAO.getBoardTotalA(map));
		shopPaging.setCurrentPage(Integer.parseInt((String)map.get("pg")));
		shopPaging.setPageSize(articlesPerPage);
		shopPaging.setPageBlock(10);
		shopPaging.makePagingHTML();
		
		mav.addObject("paging", shopPaging.getPagingHTML());
		
		return mav;
	}
	
	public Map<String, Object> nvl(Map<String, Object> map, String key, Object defaultValue){
		if(map.get(key)==null) {
			map.put(key, defaultValue);
		}
		return map;
	}
	
}
