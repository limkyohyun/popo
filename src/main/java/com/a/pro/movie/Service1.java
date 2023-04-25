package com.a.pro.movie;

import java.util.ArrayList;

public interface Service1 {
	
public void movieinsert(String mname,String gerne2,String director,String actor,String day,int time,String show,String mposter,String stillposter1,String stillposter2,String stillposter3,String stillposter4,String stillposter5);
public ArrayList<MovieDTO> movieout();
public ArrayList<MovieDTO> moviedetail(String mname);
public void moviedelete(String mname);

public ArrayList<MovieDTO> moviemodify(String mname);
public void moviemodify2(String mname,String gerne2,String director,String actor,String day,int time,String show,String mposter,String stillposter1,String stillposter2,String stillposter3,String stillposter4,String stillposter5);
public  ArrayList<MovieDTO> searchmname(String value);
public  ArrayList<MovieDTO> searchdirector(String value);
public  ArrayList<MovieDTO> searchgerne(String value);


public void stillcut(String mname, String mposter);
public ArrayList<MovieDTO> movieddd(String mname);
public ArrayList<MovieDTO> stillcutout();

public void movieticketinsert(String id, String day,String mname,String time,String seat,String pay);
} 