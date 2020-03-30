package admin.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;
import book.service.BookAdminService;
import shop.service.ShopService;

@Controller
@RequestMapping(value = "admin")
public class AdminController {
	@Autowired
	BookAdminService bookAdminService;
	@Autowired
	ShopService shopService;
	
	//상품등록페이지 매핑
	@RequestMapping(value = "/admin_insertForm")
	public String admin_insertForm() {
		return "/admin/admin_insertForm";
	}
	
	//상품등록완료 매핑
	@RequestMapping(value = "/admin_insert")
	public String admin_insert() {
		return "admin_insert";
	}
	
	//상품등록 처리 매핑
	@RequestMapping(value = "/admin_insert", method = RequestMethod.POST)
	//@ResponseBody
	public void admin_insert(@ModelAttribute BookDTO bookDTO, @RequestParam MultipartFile[] img) {	
		System.out.println("admin_insert controller");
		// 파일 복사
		String filePath = "E:\\spring\\workSTS\\hotSalt\\src\\main\\webapp\\storage";
		String fileName;
		File file;
		
		if (img[0] != null) {
			fileName = img[0].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[0].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			bookDTO.setDetail(fileName);
		} else {
			bookDTO.setDetail("");
		}
		
		if (img[1] != null) {
			fileName = img[1].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[1].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			bookDTO.setImg1(fileName);
		} else {
			bookDTO.setImg1("");
		} //
		
		if (img[2] != null) {
			fileName = img[2].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[2].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			bookDTO.setImg2(fileName);
		} else {
			bookDTO.setImg2("");
		} //

		if (img[3] != null) {
			fileName = img[3].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[3].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			bookDTO.setImg3(fileName);
		} else {
			bookDTO.setImg3("");
		} //

		if (img[4] != null) {
			fileName = img[4].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[4].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			bookDTO.setImg4(fileName);
		} else {
			bookDTO.setImg4("");
		} //

		if (img[5] != null) {
			fileName = img[5].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[5].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			bookDTO.setImg5(fileName);
		} else {
			
			bookDTO.setImg5("");
		} 

		if (img[6] != null) {
			fileName = img[6].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[6].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			bookDTO.setImg6(fileName);
		} else {
			bookDTO.setImg6("");
		} 
		if (img[7] != null) {
			fileName = img[7].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[7].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			bookDTO.setImg7(fileName);
		} else {
			bookDTO.setImg7("");
		} 
		
		bookAdminService.insertBook(bookDTO);
		
	}
	
	//admin 홈페이지 페이지 매핑
	@RequestMapping(value = "/admin_index")
	public String admin_index() {
		return "/admin/admin_index";
	}
	
	//상품리스트에서 삭제버튼 확인
	@RequestMapping(value = "/admin_bookDelete")
	public String admin_bookDelete() {
		return "/admin/admin_bookDelete";
	}

}
