package book.service;

import java.util.List;

import book.bean.AdminBookListPaging;
import book.bean.BookDTO;

public interface BookAdminService {

	public void insertBook(BookDTO bookDTO);

	public List<BookDTO> getAdminBookList(String pg);

	public AdminBookListPaging adminBookListPaging(String pg);

}
