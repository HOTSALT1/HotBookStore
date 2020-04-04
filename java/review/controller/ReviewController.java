package review.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import book.bean.BookDTO;
import review.bean.ReviewDTO;
import review.bean.ReviewPaging;
import review.service.ReviewService;

@Controller
//@RequestMapping("review")
public class ReviewController {

	@Autowired
	ReviewService reviewService;
	
	
	@RequestMapping(value="reviewWrite", method=RequestMethod.POST)
	@ResponseBody
	public void boardWrite(@RequestParam Map<String, String> map,
							Model model) {
		reviewService.reviewWrite(map);
	}
	
	@RequestMapping(value="review", method=RequestMethod.GET)
	public String reviewList(Model model) {
		String pg = "1";
		List<ReviewDTO> list = reviewService.getReviewList(pg);
		
		ReviewPaging reviewPaging = reviewService.reviewPaging(pg);
				
		model.addAttribute("pg", pg);
		model.addAttribute("reviewDTO", list);
		model.addAttribute("reviewPaging", reviewPaging.getPagingHTML().toString());
		return "/review";
	}

	@ResponseBody
	@RequestMapping(value="getReviewList", method=RequestMethod.POST)
	public ModelAndView getReviewList(@RequestParam(required=false, defaultValue="1") String pg) {
		
		System.out.println(pg);
		
		List<ReviewDTO> list = reviewService.getReviewList(pg);
		
		ReviewPaging reviewPaging = reviewService.reviewPaging(pg);
		
		System.out.println(reviewPaging);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("reviewDTO", list);
		mav.addObject("reviewPaging", reviewPaging);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="review-details", method=RequestMethod.GET)
	public ModelAndView reviewView(@RequestParam int review_seq) {	
		ReviewDTO reviewDTO = reviewService.getReviewView(review_seq);
		System.out.println(reviewDTO);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("reviewDTO", reviewDTO);
		mav.setViewName("/review-details");
		return mav;		
	}
	
	@ResponseBody
	@RequestMapping(value="community-reviewboard", method=RequestMethod.POST)
	public ModelAndView communityreviewboard(@RequestParam(required=false, defaultValue="1") String pg) {
		
		System.out.println(pg);
		
		List<ReviewDTO> list = reviewService.getReviewList(pg);
		
		ReviewPaging reviewPaging = reviewService.reviewPaging(pg);
		
		System.out.println(reviewPaging);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("reviewDTO", list);
		mav.addObject("reviewPaging", reviewPaging);
		mav.setViewName("/community-reviewboard");
		return mav;
	}

}
