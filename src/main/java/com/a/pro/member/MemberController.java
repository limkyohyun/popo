package com.a.pro.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberController {
	@Autowired
	SqlSession sqlsession;
	@RequestMapping(value="/member_jo")
	public String ko1() {
		return "member_join";
	}
	@RequestMapping(value="membersave")
	public String ko2(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String jumin = request.getParameter("jumin");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		Service2 ss2 = sqlsession.getMapper(Service2.class);
		ss2.insert(id, pw, name, jumin, phone, address, email);
		return "redirect:member_jo";
	}
	
	@ResponseBody
	@RequestMapping(value="/idcheck")
	public String ko3(String id) {
		Service2 ss2 = sqlsession.getMapper(Service2.class);
		String cnt = ss2.idcheck(id);
		return cnt;
	}
	@RequestMapping(value="/member_lo")
	public String ko4() {
		return "member_login";
	}
	@RequestMapping(value="logincheck")
	public String ko5(HttpServletRequest request,RedirectAttributes ra) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		Service2 ss2 = sqlsession.getMapper(Service2.class);
		MemberDTO dto =ss2.logincheck(id,pw);
		HttpSession hs = request.getSession();
		if(dto != null) {
			hs.setAttribute("dto", dto);
			hs.setAttribute("login", true);
		}
		else {
			hs.setAttribute("login", false);
			ra.addAttribute("result", "loginfail");
			return "redirect:loginin";
		}
		return "redirect:main";
	}   
	@RequestMapping(value="/logout")
	public String ko5(HttpServletRequest request) {
		Service2 ss2 = sqlsession.getMapper(Service2.class);
		HttpSession hs = request.getSession();
		
		hs.removeAttribute("dto");
		hs.removeAttribute("login");
		hs.setAttribute("login", false);
		return "redirect: main";
	}
	
	@RequestMapping(value="/member_MY")
	public String ko6(HttpServletRequest request,Model mo) {
			String id = request.getParameter("id");
			Service2 ss2 = sqlsession.getMapper(Service2.class);
		ArrayList<MemberDTO> list = ss2.mycgv(id);
		mo.addAttribute("list",list);
		
		return "member_MYCGV";
	}

		  }	 
