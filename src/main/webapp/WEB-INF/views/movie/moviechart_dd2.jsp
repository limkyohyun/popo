<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Booking</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>

<style>
body{
    min-height: 20vh;
    max-width: 3000px;
    margin: 0 auto;
	padding-top : 300px;

    font-family: 'Lato', sans-serif;
    background-color: #242333;
    color: #fff;
}

#container{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 500px;
}
.moviesel{
color: black;
}
.pickMovie{
    color: black;
}

.movieContainer{
    margin: 20px 0px;

}

.showcase{
    background-color: #777;
    background: rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    display: flex;
    justify-content: center;
    margin: 16px 0;
    padding: 5px 10px;
}

.movieContainer select{
    margin: 10px;
    padding: 5px 15px 5px 15px;
    border-radius: 7px;
    appearance: none;
    border: 0;
}

.movieContainer select option{

   text-align: left;
}

li{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-left: 10px;
}

.small{
    color: #777;
    margin-left: 2px;
}

.showcase .seat:hover{
    cursor: default;
    scale: 1;
}

.showcase .selectedSeat:hover{
    cursor: default;
    scale: 1;
}

.screen{
   background-color: #fff;
   margin: 25px;
   padding: 5px;
   width: 140px;
   height: 80px;
   transform: rotateX(-45deg);
   box-shadow: 0 3px 10px rgb(255 255 255 / 70%);
}

.seat{
    background-color: #444451;
    width: 15px;
    height: 12px;
    margin: 3px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    cursor: pointer;
}

.availableSeat{
    background-color: #444451;
    width: 15px;
    height: 12px;
    margin: 3px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    cursor: default;
}

.selectedSeatIcon{
    background-color: #6feaf6;
    width: 15px;
    height: 12px;
    margin: 3px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    cursor: default;
}

.seat:hover{
    scale: 1.2;
}

.selectedSeat:hover{
    scale: 1.2;
}

.seat:nth-of-type(2){
    margin-right: 18px;
}

.seat:nth-of-type(7){
    margin-left: 18px;
}

.occupiedSeat:nth-of-type(2){
    margin-right: 18px;
}
.occupiedSeat:nth-of-type(7){
    margin-left: 18px;
}

.selectedSeat{
    background-color: #6feaf6;
    width: 15px;
    height: 12px;
    margin: 3px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    cursor: pointer;
}

.occupiedSeat{
    background-color: #fff;
    width: 15px;
    height: 12px;
    margin: 3px;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
}

.row{
    display: flex;
    font-size: 10px;
}

.text{
    margin-top: 30px;
    padding: 20px;
}

#count{
    color: #6feaf6;
}

#costs{
    color: #6feaf6;
}

</style>

<body>


                            
           
    <div id="container">
           
        <div class="movieContainer">
            <label for="movie">
           	영화 예매
            </label>
 
            <div class="moviesel">

            <select name="pickMovie" id="movie">
            <c:forEach var="i" begin="0" end="${fn:length(list)-1}" step="1">
                <option class="price" value="10000">${list[i].mname}</option>
                        </c:forEach>
            </select>
    
            </div>
            
        </div>
        <ul class="showcase">
            <li>
                <div class="availableSeat"></div>
                <small class="small">예약가능</small>
            </li>
            <li>
                <div class="selectedSeatIcon"></div>
                <small class="small">선택한 좌석</small>
            </li>
            <li>
                <div class="occupiedSeat"></div>
                <small class="small">예약불가</small>
            </li>
        </ul>

        <div class="seatContaineri">
            <div class="screen"></div>
            
            <div class="row">

                <span class="seat">A1</span>
                <span class="seat">A2</span>
                <span class="seat">A3</span>
                <span class="seat">A4</span>
                <span class="seat">A5</span>
                <span class="seat">A6</span>
                <span class="seat">A7</span>
                <span class="seat">A8</span>
            </div>

            <div class="row">
                <span class="seat">B1</span>
                <span class="seat">B2</span>
                <span class="seat">B3</span>
                <span class="seat">B4</span>
                <span class="occupiedSeat">B5</span>
                <span class="occupiedSeat">B6</span>
                <span class="seat">B7</span>
                <span class="seat">B8</span>
            </div>

            <div class="row">
                <span class="seat">C1</span>
                <span class="seat">C2</span>
                <span class="seat">C3</span>
                <span class="seat">C4</span>
                <span class="seat">C5</span>
                <span class="seat">C6</span>
                <span class="occupiedSeat">C7</span>
                <span class="seat">C8</span>
            </div>

            <div class="row">
                <span class="seat">D1</span>
                <span class="seat">D2</span>
                <span class="seat">D3</span>
                <span class="seat">D4</span>
                <span class="seat">D5</span>
                <span class="seat">D6</span>
                <span class="occupiedSeat">D7</span>
                <span class="occupiedSeat">D8</span>
            </div>

            <div class="row">
                <span class="seat">F1</span>
                <span class="seat">F2</span>
                <span class="seat">F3</span>
                <span class="seat">F4</span>
                <span class="seat">F5</span>
                <span class="seat">F6</span>
                <span class="seat">F7</span>
                <span class="seat">F8</span>
            </div>

            <div class="row">
                <span class="seat">G1</span>
                <span class="occupiedSeat">G2</span>
                <span class="occupiedSeat">G3</span>
                <span class="seat">G4</span>
                <span class="seat">G5</span>
                <span class="seat">G6</span>
                <span class="occupiedSeat">G7</span>
                <span class="seat">G8</span>
            </div>

        </div>

        <p class="text">선택한 좌석 <span id="count">0</span> 비용 <span id="costs">0</span>원</p>




    </div>

    <script>
        document.addEventListener('DOMContentLoaded', () =>{

const seatContainer = document.querySelector('.seatContainer');

const movie = document.getElementById('movie'); // 선택할 영화
let moviePrice = Number(movie.value); // 영화과격 

let count = document.querySelector('#count'); // 인원수
let costs = document.querySelector('#costs'); // 가격

// 선택한 좌석수 텍스트 변경해주기

function countSeatPrice(){
    const selectedSeatCount = document.querySelectorAll('.selectedSeat').length;

    count.textContent = selectedSeatCount;
    costs.textContent = selectedSeatCount * moviePrice;
    
}


//좌석 클릭했을때

seatContainer.addEventListener('click', (e) => {

    if(e.target.className === 'seat'){
        e.target.className = 'selectedSeat';
    } else if(e.target.className === 'selectedSeat'){
        e.target.className = 'seat';
    }

    countSeatPrice();
})

// 영화 변경할때

movie.addEventListener('change', (e) => {

    moviePrice = Number(e.target.value);

    countSeatPrice()
    
})




})
    </script>


</body>
</html>