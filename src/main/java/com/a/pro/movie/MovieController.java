package com.a.pro.movie;

import java.util.List;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

	@Controller
	public class MovieController {

	@Autowired
	SqlSession sqlSession;
	
   @RequestMapping(value="/moviechartinput")
   public String ko1() {
      return "moviechart_input";
   }
   @RequestMapping(value="/moviechardd")
   public String ko9(Model mo,HttpServletRequest request) {
	   String mname=request.getParameter("mname");
	   
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	   ArrayList<MovieDTO> list = ss1.movieddd(mname);
	   mo.addAttribute("list",list);
      return "moviechart_dd";
   }
   
   @RequestMapping(value="/moviechartddout")
   public String ko10(Model mo) {
	  
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	   ArrayList<MovieDTO> list = ss1.movieout();
	   mo.addAttribute("list", list);
	   
	 return "moviechart_dd";
	 }
   
   
    
   @RequestMapping(value="/movieticketsave")
   public String ko11(HttpServletRequest request) {
		

	   String id = request.getParameter("id");
	  String day = request.getParameter("day");
	  String mname = request.getParameter("mname");
	  String time = request.getParameter("time");
	   String[] seat2 = request.getParameterValues("seat");
	   String seat ="";
	   for(int i=0; i<seat2.length;i++) {
		   seat+=seat2[i]+"";
	   }
	   
	  String pay = request.getParameter("pay");
	  
	  System.out.println(id+day+"영화제목"+mname+"시간"+time+"좌석"+seat+"금액"+pay);
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	   ss1.movieticketinsert(id,day,mname,time,seat,pay);
	   
	 return "redirect:main";
	 
	 }
   @RequestMapping(value="/moviechartsave",method = RequestMethod.POST)
   public String ko2(MultipartHttpServletRequest mul ) {
	   String mname =mul.getParameter("mname");
	   String director = mul.getParameter("director");
	   String actor = mul.getParameter("actor");
	   int time = Integer.parseInt(mul.getParameter("time"));
	   String day = mul.getParameter("day");
	   String[] gerne = mul.getParameterValues("gerne");
	   String gerne2 ="";
	   for(int i=0; i<gerne.length;i++) {
		   gerne2+=gerne[i]+"";
	   }
	   
	   String show = mul.getParameter("show");
	   MultipartFile mf = mul.getFile("mposter");
	   String mposter = mf.getOriginalFilename();
	   
	   MultipartFile mf1 = mul.getFile("stillposter1");
	   String stillposter1 = mf1.getOriginalFilename();
	   
	   MultipartFile mf2 = mul.getFile("stillposter2");
	   String stillposter2 = mf2.getOriginalFilename();
	   
	   MultipartFile mf3 = mul.getFile("stillposter3");
	   String stillposter3 = mf3.getOriginalFilename();
	   
	   MultipartFile mf4 = mul.getFile("stillposter4");
	   String stillposter4 = mf4.getOriginalFilename();
	   
	   MultipartFile mf5 = mul.getFile("stillposter5");
	   String stillposter5 = mf5.getOriginalFilename();
	   
	   
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	   ss1.movieinsert(mname,gerne2,director,actor,day,time,show,mposter,stillposter1,stillposter2,stillposter3,stillposter4,stillposter5);
	   
	 return "moviechart_input";
	 
	 }
   
   @RequestMapping(value="/moviechartout")
   public String ko3(Model mo) {
	  
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	   ArrayList<MovieDTO> list = ss1.movieout();
	   mo.addAttribute("list", list);
	   
	 return "moviechart_out";
	 
	 }
   
   @RequestMapping(value="/detail")
   public String ko3(HttpServletRequest request,Model mo) {
	   String mname = request.getParameter("mname");
	   
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	  ArrayList<MovieDTO> list2 =ss1.moviedetail(mname);
	   mo.addAttribute("list2", list2);
	 return "moviechart_detail";
	 }
   
   @RequestMapping(value="/moviedelete")
   public String ko4(HttpServletRequest request) {
	   String mname = request.getParameter("mname");
	   
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	 ss1.moviedelete(mname);
	 return "redirect:moviechartout";
	 }
   
   @RequestMapping(value="/moviemodify")
   public String ko5(HttpServletRequest request,Model mo) {
	   String mname = request.getParameter("mname");
	   
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	 ArrayList<MovieDTO> list2 = ss1.moviemodify(mname);
	   mo.addAttribute("list2", list2);
	 return "moviechart_modify";
	 }
   
   @RequestMapping(value="/moviemodifysave",method = RequestMethod.POST)
   public String ko3(MultipartHttpServletRequest mul ) {
	   String mname =mul.getParameter("mname");
	   String director = mul.getParameter("director");
	   String actor = mul.getParameter("actor");
	   int time = Integer.parseInt(mul.getParameter("time"));
	   String day = mul.getParameter("day");
	   String[] gerne = mul.getParameterValues("gerne");
	   String gerne2 ="";
	   for(int i=0; i<gerne.length;i++) {
		   gerne2+=gerne[i]+"";
	   }
	   
	   String show = mul.getParameter("show");
	   MultipartFile mf = mul.getFile("mposter");
	   String mposter = mf.getOriginalFilename();
		   
	   MultipartFile mf1 = mul.getFile("stillposter1");
	   String stillposter1 = mf1.getOriginalFilename();
	   
	   MultipartFile mf2 = mul.getFile("stillposter2");
	   String stillposter2 = mf2.getOriginalFilename();
	   
	   MultipartFile mf3 = mul.getFile("stillposter3");
	   String stillposter3 = mf3.getOriginalFilename();
	   
	   MultipartFile mf4 = mul.getFile("stillposter4");
	   String stillposter4 = mf4.getOriginalFilename();
	   
	   MultipartFile mf5 = mul.getFile("stillposter5");
	   String stillposter5 = mf5.getOriginalFilename();
	   
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	   ss1.moviemodify2(mname,gerne2,director,actor,day,time,show,mposter,stillposter1,stillposter2,stillposter3,stillposter4,stillposter5);
	   
	 return "redirect: main";
	 }
   
   @RequestMapping(value ="/moviechartsearchsave" )
	public String ko10(HttpServletRequest request,Model mo) {
		String item=request.getParameter("item");
		String value=request.getParameter("value");	
		Service1 ss=sqlSession.getMapper(Service1.class);
		ArrayList<MovieDTO> list2=null;
		if(item.equals("mname")) {
			list2=ss.searchmname(value);
		}
		else if(item.equals("director"))
		{
			list2=ss.searchdirector(value);
		}
			
		else if(item.equals("gerne"))
		{			
			list2=ss.searchgerne(value);
		}
		mo.addAttribute("list2", list2);
		
		System.out.println(list2);
		return "moviechart_out2";
	}
   
   @RequestMapping(value="/stllcut")
   public String ko11() {
	   
      return "moviechart_stillcut";
   }
   
   /*
   @RequestMapping(value="/stllcutsave",method = RequestMethod.POST)
   public String ko12(MultipartHttpServletRequest mul) {
	  
	   MultipartFile mf = mul.getFile("mposter");
	   String mposter = mf.getOriginalFilename();
	   
	   Service1 ss1 = sqlSession.getMapper(Service1.class);
	   ss1.stillcut(mposter);
	   
	 return "main";
	 
	 }*/
   @RequestMapping(value ="/stllcutsave")
   public String requestupload2(MultipartHttpServletRequest mul,Model mo) {
	   String mname =mul.getParameter("mname");
       List<MultipartFile> fileList = mul.getFiles("mposter");
       String src = mul.getParameter("src");

       String path = "C:\\12월국비\\spring\\CGV_Project\\src\\main\\webapp\\image";

       for (MultipartFile mf : fileList) {
           String originFileName = mf.getOriginalFilename(); // 원본 파일 명
           long fileSize = mf.getSize(); // 파일 사이즈

           System.out.println("originFileName : " + originFileName);
           System.out.println("fileSize : " + fileSize);

           String safeFile = path + originFileName;
           
           Service1 ss1 = sqlSession.getMapper(Service1.class);
    	   ss1.stillcut(mname,originFileName);
           
    	   ArrayList<MovieDTO> list3 = ss1.stillcutout();
    	   mo.addAttribute("list3", list3);
    	   
           try {
               mf.transferTo(new File(safeFile));
           } catch (IllegalStateException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
           } catch (IOException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
           }
       }
       
       return "moviechart_detail";
   }
   
   
	}

  