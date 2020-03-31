package shop.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class ShopPaging {

	private int currentPage; 	// 현재 페이지
	private int pageBlock; 		// [이전][1][2][3][다음]
	private int pageSize;		// 1페이지당 보여질 개수
	private int totalA;			// 총 글 수
	private StringBuffer pagingHTML;
	
	public void makePagingHTML() {
		pagingHTML = new StringBuffer();
		
		int totalP = (totalA + pageSize - 1) / pageSize;
		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;;
		int endPage = startPage + pageBlock - 1;
		if(endPage > totalP)
			endPage = totalP;
		
		if(startPage > pageBlock)
			pagingHTML.append("<li><a href='javascript:void(0)'><i class='zmdi zmdi-chevron-left'></i></a></li>");
		
		for(int i = startPage; i <= endPage; i++) {
			if(i == currentPage) {
				pagingHTML.append("<li class='active'><a href='javascript:void(0)'>" + i + "</a></li>");
			}else {
				pagingHTML.append("<li><a href='javascript:void(0)'>" + i + "</a></li>");
			}
		}
		if(endPage < totalP)
			pagingHTML.append("<li><a href='javascript:void(0)'><i class='zmdi zmdi-chevron-right'></i></a></li>");
		
	}
}