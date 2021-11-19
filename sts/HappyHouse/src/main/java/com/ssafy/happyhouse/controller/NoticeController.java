package com.ssafy.happyhouse.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.NoticeDto;
import com.ssafy.happyhouse.model.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("/")
	public String page() throws Exception {
		return "/notice/list";
	}
	
	//@RequestParam("key") String key, @RequestParam("word") String word
	@GetMapping("/list")
	public @ResponseBody ResponseEntity<List<NoticeDto>> getList() throws Exception {
		return new ResponseEntity<List<NoticeDto>>(noticeService.listArticle(), HttpStatus.OK);
	}
	
	@GetMapping("/register")
	public String mvregister() throws Exception {
		return "/notice/write";
	}
	
	@PostMapping("/register")
	public String register(NoticeDto noticeDto, HttpSession session) throws Exception {
		MemberDto memberDto = (MemberDto)session.getAttribute("userinfo");
		noticeDto.setUserId(memberDto.getUserid());
		noticeService.registerArticle(noticeDto);
		return "redirect:/notice/";
	}
	
	@GetMapping("/delete")
	public String delete(String articleNo) throws Exception {
		noticeService.deleteArticle(Integer.parseInt(articleNo));
		return "redirect:/notice/";
	}
	
	@GetMapping("/modify")
	public ModelAndView mvmodify(@RequestParam("articleNo") String articleNo) throws Exception {
		ModelAndView mav = new ModelAndView();
		NoticeDto noticeDto = noticeService.getArticle(Integer.parseInt(articleNo));
		mav.addObject("article", noticeDto);
		mav.setViewName("/notice/modify");
		return mav;
	}
	
	@PostMapping("/modify")
	public String modify(NoticeDto noticeDto) throws Exception {
		noticeService.updateArticle(noticeDto);
		return "redirect:/notice/";
	}
}
