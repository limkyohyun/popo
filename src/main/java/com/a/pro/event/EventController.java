package com.a.pro.event;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.a.pro.movie.MovieDTO;
import com.a.pro.movie.Service1;



@Controller
public class EventController {
	@Autowired
	SqlSession sqlSession;
	
	
	@RequestMapping(value="/eventinput")
	public String ev0() {
		return "event_input";
	}

	@RequestMapping(value="/eventsave")
	public String ev1(MultipartHttpServletRequest mul) {
		String ename=mul.getParameter("ename");
		String startday= mul.getParameter("startday");
		String endday= mul.getParameter("endday");

		MultipartFile mf = mul.getFile("eposter");
		String eposter=mf.getOriginalFilename();
		
		MultipartFile mf2 = mul.getFile("eposterdetail");
		String eposterdetail=mf2.getOriginalFilename();
		
		Service2 ss2 = sqlSession.getMapper(Service2.class);
		ss2.eventinput(ename,startday,endday,eposter,eposterdetail);
		return "event_input";
	}
	
	@RequestMapping(value="/eventout")
	public String ev2(Model mo) {
		
		Service2 ss2 = sqlSession.getMapper(Service2.class);
		ArrayList<EventDTO> list =  ss2.eventout();
		mo.addAttribute("list",list);
		return "event_out";
	}
	
	@RequestMapping(value = "/eventdetail")
	public String ev3(HttpServletRequest request, Model mo) {
		int ebun =  Integer.parseInt(request.getParameter("ebun"));
		//조회수를 1증가
		readcntup(ebun);//조회수 1증가 함수 콜		
		/////
		Service2 ss2 =sqlSession.getMapper(Service2.class);
		ArrayList<EventDTO>  list2	=ss2.eventdetail(ebun);
		mo.addAttribute("list2", list2);	
		return "event_detail";//
	}

	private void readcntup(int ebun) {
		Service2 ss2 =sqlSession.getMapper(Service2.class);
		ss2.readcnt(ebun);
		
	}
	@RequestMapping(value="/eventdelete")
	   public String ev4(HttpServletRequest request) {
		   String ename = request.getParameter("ename");
		   Service2 ss2 = sqlSession.getMapper(Service2.class);
		   ss2.eventdelete(ename);
		   
		 return "redirect:eventout";
		 }
	
	   @RequestMapping(value="/eventmodify")
	   public String ev5(HttpServletRequest request,Model mo) {
		   String ename = request.getParameter("ename");
		   
		   Service2 ss2 = sqlSession.getMapper(Service2.class);
		 ArrayList<EventDTO> list2 = ss2.eventmodify(ename);
		   mo.addAttribute("list2", list2);
		 return "event_modify";
		 }
	   
	   @RequestMapping(value="/eventmodifysave")
		public String ev6(MultipartHttpServletRequest mul) {
			String ename=mul.getParameter("ename");
			String startday= mul.getParameter("startday");
			String endday= mul.getParameter("endday");

			MultipartFile mf = mul.getFile("eposter");
			String eposter=mf.getOriginalFilename();
			
			MultipartFile mf2 = mul.getFile("eposterdetail");
			String eposterdetail=mf2.getOriginalFilename();
			
			Service2 ss2 = sqlSession.getMapper(Service2.class);
			ss2.eventmodify2(ename, startday, endday, eposter, eposterdetail);
			return "redirect:main";
		}  
	
	   @RequestMapping(value ="/eventsearchsave" )
		public String ev7(HttpServletRequest request,Model mo) {
			String item=request.getParameter("item");
			String value=request.getParameter("value");	
			Service2 ss=sqlSession.getMapper(Service2.class);
			ArrayList<EventDTO> list=null;
			if(item.equals("ename")) {
				list=ss.searchename(value);
			}
			mo.addAttribute("list", list);
			
			return "event_out";
		}

}
