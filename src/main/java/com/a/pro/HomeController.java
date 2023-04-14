package com.a.pro;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.a.pro.movie.MovieDTO;
import com.a.pro.movie.Service1;
import com.a.pro.event.EventDTO;
import com.a.pro.event.Service2;
@Controller
public class HomeController {
	@Autowired
	SqlSession sqlSession;
   @RequestMapping(value="/")
   public String ko1(HttpServletRequest request, Model mo) {
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	   ArrayList<MovieDTO> list2 = ss1.movieout();
	   mo.addAttribute("list2", list2);
	   
	   Service2 ss2 = sqlSession.getMapper(Service2.class);
	   ArrayList<EventDTO> list3 = ss2.eventout();
	   mo.addAttribute("list3", list3);
	  
      return "main";
   }
   @RequestMapping(value="/main")
   public String ko2(HttpServletRequest request, Model mo) {
	   
		  
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	   ArrayList<MovieDTO> list2 = ss1.movieout();
	   mo.addAttribute("list2", list2);
	   
	   Service2 ss2 = sqlSession.getMapper(Service2.class);
	   ArrayList<EventDTO> list3 = ss2.eventout();
	   mo.addAttribute("list3", list3);
	   
	  
      return "main";
   }
   
   
}