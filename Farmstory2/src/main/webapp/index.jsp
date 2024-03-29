<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="./_header.jsp" %>
   <main>
       <div class="slider">
           <ul>
               <li><img src="./img/main_slide_img1.jpg" alt="슬라이더1"></li>
               <li><img src="./img/main_slide_img2.jpg" alt="슬라이더2"></li>
               <li><img src="./img/main_slide_img3.jpg" alt="슬라이더3"></li>
           </ul>

           <img src="./img/main_slide_img_tit.png" alt="사람과 자연을 사랑하는 팜스토리"/>

           <div class="banner">
               <img src="./img/main_banner_txt.png" alt="GRAND OPEN"/>
               <img src="./img/main_banner_tit.png" alt="팜스토리 오픈기념 30% 할인 이벤트"/>
               <img src="./img/main_banner_img.png" alt="과일"/>
           </div>
       </div>

       <div class="quick">
           <a href="#"><img src="./img/main_banner_sub1_tit.png" alt="오늘의 식단"></a>
           <a href="#"><img src="./img/main_banner_sub2_tit.png" alt="나도 요리사"></a>                
       </div>

       <div class="latest">
           <div>
               <a href="#"><img src="./img/main_latest1_tit.png" alt="텃밭 가꾸기"/></a>
               <img src="./img/main_latest1_img.jpg" alt="이미지"/>
               <table border="0">
				<c:forEach var="article" items="${latests1}">
                   <tr>
                       <td>></td>
                       <td><a href="/Farmstory2/board/view.do?cate=croptalk&type=${article.type}&no=${article.no}">${article.title}</a></td>
                       <td>${article.rdate}</td>
                   </tr>
				</c:forEach>
               </table>
           </div>
           <div>
               <a href="#"><img src="./img/main_latest2_tit.png" alt="귀농학교"/></a>
               <img src="./img/main_latest2_img.jpg" alt="이미지"/>
               <table border="0">
                   <c:forEach var="article" items="${latests2}">
                   <tr>
                       <td>></td>
                       <td><a href="/Farmstory2/board/view.do?cate=croptalk&type=${article.type}&no=${article.no}">${article.title}</a></td>
                       <td>${article.rdate}</td>
                   </tr>
					</c:forEach>
               </table>
           </div>
           <div>
               <a href="#"><img src="./img/main_latest3_tit.png" alt="농작물 이야기"/></a>
               <img src="./img/main_latest3_img.jpg" alt="이미지"/>
               <table border="0">
                   <c:forEach var="article" items="${latests3}">
                   <tr>
                       <td>></td>
                       <td><a href="/Farmstory2/board/view.do?cate=croptalk&type=${article.type}&no=${article.no}">${article.title}</a></td>
                       <td>${article.rdate}</td>
                   </tr>
					</c:forEach>
               </table>
           </div>
           
       </div>

       <div class="info">
           <div>
               <img src="./img/main_sub2_cs_tit.png" class="tit" alt="고객센터 안내"/>

			<div>
				<img src="./img/main_sub2_cs_img.png" alt="아이콘"/>
				<img src="./img/main_sub2_cs_txt.png" alt="1666-777"/>						
			</div>
			<div>
				<a href="#"><img src="./img/main_sub2_cs_bt1.png" alt=""/></a>
				<a href="#"><img src="./img/main_sub2_cs_bt2.png" alt=""/></a>
				<a href="#"><img src="./img/main_sub2_cs_bt3.png" alt=""/></a>
			</div>				

           </div>
           <div>
               <img src="./img/main_sub2_account_tit.png" class="tit" alt="계좌안내"/>
               <p class="account">
                   기업은행 123-456789-01-01-012<br />
                   국민은행 01-1234-56789<br />
                   우리은행 123-456789-01-01-012<br />
                   하나은행 123-456789-01-01<br />
                   예 금 주 (주)팜스토리
               </p>
           </div>
           <div>
               
           </div>
       </div>
   </main>
<%@ include file="./_footer.jsp" %>        
        