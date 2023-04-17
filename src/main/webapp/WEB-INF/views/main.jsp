<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<style>

.row1{
margin-top: 70px;
}
.btn{
 background-color: skyblue;

	  color: white;
	  border: none;
	  width: 290px;
	  height: 30px;
	  margin-left:30px;
	  padding-right: 10px;
}

.body {
margin: 0;
      }
      
.wrap {
margin-top:0px;
  background: url(/pro/image/그라데이션.jfif);
  background-size: cover;
  height: 85vh;
}

</style>

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Document</title>
    
    
</head>




<body>
<div class="wrap">

 <div class="container text-center">
 
 <div class="row">



   <div class="row1">
    <div class="col" style="color: white;">
      <h3>무비차트</h3>
    </div>
    <div class="col" align="right" style="color: white;" >
      <a href="moviechartout">더 많은 영화보기</a> 
    </div>
  </div>
  
  <div class="row">
            <c:forEach var="i" begin="0" end="3" step="1">
            
    <div class="col-sm-3">

    <div class="card" style="width: 100%; height:100%; float: left;">

         <a href="detail?mname=${list2[i].mname}"><img src="/pro/image/${list2[i].mposter}" class="card-img-top" style="width: 350px; height: 450px; padding: 30px;">
         </a>
       
            <div style=" margin-bottom: 15px; " >
			<a href="moviechardd?mname=${list2[i].mname}"><button type="button" class="btn" >예매하기</button></a>
           
 			&emsp;
   </div>
        </div>
           </div>
           </c:forEach>
           </div>   
           </div>
    
  <div>
  
  <div class="row">
    <div class="col-sm-4">
    <div class="input-group mb-3">
      <form action="moviechartsearchsave" method="post" >
      
        <select name="item" hidden>
	     	<option value="mname">영화</option>
	     	<option value="director">감독</option>
	     	<option value="gerne">장르</option>
	     </select>
	     
  <input type="text" name ="value" class="form-control" placeholder="영화이름을 입력해주세요" aria-label="Recipient's username" aria-describedby="button-addon2">
  <button class="btn btn-outline-secondary" type="submit" id="button-addon2">검색하기</button>
</form>
</div>

    </div>
    <div class="col-sm-4" style="color: white">
     <a href="moviechartout"><h2>무비차트</h2></a>
    </div>
    <div class="col-sm-4" style="color: white">
     <a href="moviechartddout"><h2>빠른예매</h2></a>
    </div>
  </div>
</div>
  
 
  </div>
 
   </div> <!-- 첫번째 div -->
   
   
   <div align="left" style="margin-top: 20px;">
   <div class="container text-center">
   
     <div class="row">
     <div class="col-md-8" align="left" >
   <h3> EVENT </h3> 
   
    </div>
    <div class="col-md-8">

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->

    <div class="carousel-inner">

      <div class="item active">
   		<img src="/pro/image/이벤트1.jpg" alt="" style="width:100%; height: 320px;">
      </div>

      <div class="item">
       <img src="/pro/image/이벤트2.jpg" alt="" style="width:100%; height: 320px;">
      </div>
    
      <div class="item">
       <img src="/pro/image/이벤트3.jpg" alt="" style="width:100%; height: 320px;">
      </div>

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
  <img src="/pro/image/이벤4.jpg" align="left" style="width: 365px; height: 280px; margin-top: 10px; ">
    <img src="/pro/image/이벤5.jpg" style="width: 365px; height: 280px; margin-top: 10px;   margin-left: 15px;">
</div>
<div align="right">
   <a href="eventout">더 많은 이벤트 보기</a>
   </div> 
    <div class="col-md-4">
      <img src="/pro/image/파벨만스.jfif" align="right" style="width:100%; height: 620px; padding-right: 0px;">
    </div>
</div>
</div>
</div>

</body>
</html>