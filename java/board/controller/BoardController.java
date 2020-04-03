package board.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardDTO;
import board.bean.BoardPaging;
import board.service.BoardService;

@Controller
@RequestMapping(value="board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value="boardWriteForm", method=RequestMethod.GET)
	public String boardWriteForm() {
		return "/board/boardWriteForm";
	}
	
	//상품등록 처리 매핑
	@RequestMapping(value = "/boardWrite", method = RequestMethod.POST)
	@ResponseBody
	public void boardWrite(@ModelAttribute BoardDTO boardDTO, @RequestParam MultipartFile[] img) {	
		// 파일 복사
		String filePath = "E:\\nahyun\\hotSalt\\src\\main\\webapp\\board_storage\\";
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
			boardDTO.setBoard_image1(fileName);
		} else {
			boardDTO.setBoard_image1("");
		}
		
		if (img[1] != null) {
			fileName = img[1].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[1].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			boardDTO.setBoard_image2(filePath+"/"+fileName);
		} else {
			boardDTO.setBoard_image2("");
		} //
		
		if (img[2] != null) {
			fileName = img[2].getOriginalFilename();
			file = new File(filePath, fileName);
			try {
				FileCopyUtils.copy(img[2].getInputStream(), new FileOutputStream(file));
			} catch (IOException e) {
				e.printStackTrace();
			}
			boardDTO.setBoard_image3(fileName);
		} else {
			boardDTO.setBoard_image3("");
		}

		
		boardService.boardWrite(boardDTO);
		
//		List<BoardDTO> list = boardService.getBoardList("1");
//		BoardPaging boardPaging = boardService.boardListPaging("1");
		
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("pg", 1);
//		mav.addObject("list", list);
//		mav.addObject("boardListPaging", boardListPaging);
//		mav.setViewName("/board/boardWriteForm");
//		return mav;
	}
//	@RequestMapping(value = "admin_booklist", method = RequestMethod.GET)
//	public ModelAndView admin_booklist(@RequestParam(required = false, defaultValue = "1") String pg) {
//		List<BookDTO> list = bookAdminService.getAdminBookList(pg);
//		AdminBookListPaging adminBookListPaging = bookAdminService.adminBookListPaging(pg);
//		
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("pg", pg);
//		mav.addObject("list", list);
//		mav.addObject("adminBookListPaging", adminBookListPaging.getPagingHTML());
//		mav.setViewName("/admin/admin_booklist");
//		return mav;
//	}
	//게시글작성
//	@RequestMapping(value="boardWrite", method=RequestMethod.POST)
//	@ResponseBody
//	public void boardWrite(@ModelAttribute BoardDTO boardDTO,
//								@RequestPart MultipartFile board_image1) {
//		
//		System.out.println(boardDTO);
//		if(board_image1!=null) {
//			System.out.println(board_image1);
//
//			//이거 상대경로로 변경해줘야 함
//			String filePath = "E:\\nahyun\\hotSalt\\src\\main\\webapp\\board_storage";
//			String fileName = board_image1.getOriginalFilename();
//			File file = new File(filePath, fileName);
//			
//			//파일 복사
//			try {
//				FileCopyUtils.copy(board_image1.getInputStream(), new FileOutputStream(file));
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//			
//			boardDTO.setBoard_imageName(fileName);
//			System.out.println(boardDTO);
//		}
//		boardService.boardWrite(boardDTO);
//	}
	
	@RequestMapping(value="boardList", method=RequestMethod.GET)
	public String boardList(@RequestParam(required=false, defaultValue="1") String pg,
							Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/board/boardList.jsp");
		return "/main/index";
	}
	
	@RequestMapping(value="getBoardList", method=RequestMethod.POST)
	public ModelAndView getBoardList(
			@RequestParam(required=false, defaultValue="1") String pg,
			HttpSession session) {
		List<BoardDTO> list = boardService.getBoardList(pg);
		
		//페이징 처리
		BoardPaging boardPaging = boardService.boardPaging(pg);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("list", list);
		mav.addObject("memId", session.getAttribute("memId"));
		mav.addObject("boardPaging", boardPaging);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="boardView", method=RequestMethod.GET)
	public String boardView(@RequestParam String seq,
							@RequestParam(required=false, defaultValue="1") String pg,
							Model model) {
		
		model.addAttribute("seq", seq);
		model.addAttribute("pg", pg);
		model.addAttribute("display", "/board/boardView.jsp");
		return "/main/index";
	}
	
	@RequestMapping(value="getBoardView", method=RequestMethod.POST)
	public ModelAndView getBoardView(
			@RequestParam String seq,
			@RequestParam(required=false, defaultValue="1") String pg,
			HttpSession session) {
		
		BoardDTO boardDTO = boardService.getBoard(seq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("memId", session.getAttribute("memId"));
		mav.addObject("boardDTO", boardDTO);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="boardReply", method=RequestMethod.POST)
	public String boardReply(@RequestParam Map<String, String> map,
							 Model model) {

		boardService.boardReply(map);
		
		model.addAttribute("pg", map.get("pg"));
		model.addAttribute("display", "/board/boardReply.jsp");
		return "/main/index";
	}
	
}














