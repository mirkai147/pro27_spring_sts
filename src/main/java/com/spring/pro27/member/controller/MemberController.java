package com.spring.pro27.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.pro27.member.vo.MemberVO;

public interface MemberController {
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView removeMember(String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView addMember(MemberVO member, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView modMember(MemberVO member, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView login(MemberVO memberVO, RedirectAttributes rAttr, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	

}
