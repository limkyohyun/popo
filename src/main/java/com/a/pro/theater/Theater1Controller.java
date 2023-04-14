package com.a.pro.theater;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Theater1Controller {
	@Autowired
	SqlSession sqlsession;
	@RequestMapping(value="/map")
	public String k1() {return "map";}
	@RequestMapping(value="/map2")
	public String k2() {return "map2";}
	@RequestMapping(value="/map3")
	public String k3() {return "map3";}
	@RequestMapping(value="/map4")
	public String k4() {return "map4";}
	@RequestMapping(value="/map5")
	public String k5() {return "map5";}
	@RequestMapping(value="/map6")
	public String k6() {return "map6";}
	@RequestMapping(value="/map7")
	public String k7() {return "map7";}
	@RequestMapping(value="/map8")
	public String k8() {return "map8";}
	@RequestMapping(value="/map9")
	public String k9() {return "map9";}
	@RequestMapping(value="/map10")
	public String k10() {return "map10";}
	@RequestMapping(value="/theaterin")
	public String ko1() {return "theaterinput";}
	@RequestMapping(value="/theaterin2")
	public String ko2() {return "theaterin2";}
	@RequestMapping(value="/theaterin3")
	public String ko3() {return "theaterin3";}
	@RequestMapping(value="/theaterin4")
	public String ko4() {return "theaterin4";}
	@RequestMapping(value="/theaterin5")
	public String ko5() {return "theaterin5";}
	@RequestMapping(value="/theaterin6")
	public String ko6() {return "theaterin6";}
	@RequestMapping(value="/theaterin7")
	public String ko7() {return "theaterin7";}
	@RequestMapping(value="/theaterin8")
	public String ko8() {return "theaterin8";}
	@RequestMapping(value="/theaterin9")
	public String ko9() {return "theaterin9";}
	@RequestMapping(value="/theaterin10")
	public String ko10() {return "theaterin10";}
	
}