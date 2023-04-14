package com.a.pro.event;

import java.util.ArrayList;


public interface Service2 {
public void eventinput(String ename,String startday,String endday,String eposter,String eposterdetail);
public ArrayList<EventDTO> eventout();
public void readcnt(int ebun);
public ArrayList<EventDTO> eventdetail(int ebun);
public void eventdelete(String ename);
public ArrayList<EventDTO> eventmodify(String ename);
public void eventmodify2(String ename,String startday,String endday,String eposter,String eposterdetail);

public  ArrayList<EventDTO> searchename(String value);


}