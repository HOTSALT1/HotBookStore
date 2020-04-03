package board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import board.bean.BoardDTO;
import board.bean.BoardPaging;
import board.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	private BoardPaging boardPaging;
	

	@Override
	public List<BoardDTO> getBoardList(String pg) {
		//1페이지당 5개씩
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<BoardDTO> list = boardDAO.getBoardList(map);
		
		return list;
	}
	
	@Override
	public List<BoardDTO> getBoardSearch(Map<String, String> map) {
		//1페이지당 5개씩
		int endNum = Integer.parseInt(map.get("pg"))*5;
		int startNum = endNum-4;
		
		//Map안에는 pg, searchOption, keyword
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		
		List<BoardDTO> list = boardDAO.getBoardSearch(map);
		
		return list;
	}

	@Override
	public BoardPaging boardPaging(String pg) {
		int totalA = boardDAO.getBoardTotalA();//총글수
		
		boardPaging.setCurrentPage(Integer.parseInt(pg));
		boardPaging.setPageBlock(3);
		boardPaging.setPageSize(5);
		boardPaging.setTotalA(totalA);
		boardPaging.makePagingHTML();
		return boardPaging;
	}
	
	@Override
	public BoardPaging boardPaging(Map<String, String> map) {
		int totalA = boardDAO.getBoardSearchTotalA(map);//총글수
		
		boardPaging.setCurrentPage(Integer.parseInt(map.get("pg")));
		boardPaging.setPageBlock(3);
		boardPaging.setPageSize(5);
		boardPaging.setTotalA(totalA);
		boardPaging.makeSearchPagingHTML();
		return boardPaging;
	}

	@Override
	public BoardDTO getBoard(String seq) {
		return boardDAO.getBoard(seq);
	}

	@Override
	public void boardReply(Map<String, String> map) {
		//map안에는 이미 pseq, subject, content
		map.put("id", (String)session.getAttribute("memId"));
		map.put("name", (String)session.getAttribute("memName"));
		map.put("email", (String)session.getAttribute("memEmail"));
		
		//원글
		BoardDTO pDTO = boardDAO.getBoard(map.get("pseq"));
//		map.put("ref", pDTO.getRef()+"");
//		map.put("lev", pDTO.getLev()+"");
//		map.put("step", pDTO.getStep()+"");
		
		boardDAO.boardReply(map);		
	}

	@Override
	public void boardWrite(BoardDTO boardDTO) {
		boardDAO.boardWrite(boardDTO);
	}

}













