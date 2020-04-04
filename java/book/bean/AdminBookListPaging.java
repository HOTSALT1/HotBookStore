package book.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class AdminBookListPaging {
	private int currentPage;
	private int pageBlock;
	private int pageSize;
	private int totalA;
	private StringBuffer pagingHTML;

	public void makePagingHTML() {
		pagingHTML = new StringBuffer();

		int totalP = (totalA + pageSize - 1) / pageSize;
		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		if (endPage > totalP)
			endPage = totalP;

		if (startPage > pageBlock)
			pagingHTML.append("<li><a href='javascript:void(0)'><i class='zmdi zmdi-chevron-left'></i></a></li>");

		for (int i = startPage; i <= endPage; i++) {
			if (i == currentPage)
				pagingHTML.append("<li class='active'><a href='javascript:void(0)'>" + i + "</a></li>");
			else
				pagingHTML.append("<li><a href='javascript:void(0)'>" + i + "</a></li>");
		}

		if (endPage < totalP)
			pagingHTML.append("<li><a href='javascript:void(0)'><i class='zmdi zmdi-chevron-right'></i></a></li>");
	}

}
