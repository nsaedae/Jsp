<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<script>
	$(function(){
		$('input[name=uid]').keyup(function(){
			let value = $(this).val();
			console.log(value);
			
			if(value.length > 3){
				
				let jsonData = {"uid": value};
				
				$.ajax({
					url: '/Farmstory2/user/checkUid.do',
					type: 'GET',
					data: jsonData,
					dataType: 'json',
					success: function(data){
						if(data.result == 1){
							$('.resultId').css('color', 'red').text('이미 사용중인 아이디 입니다.');
						}else{							
							$('.resultId').css('color', 'green').text('사용 가능한 아이디 입니다.');
						}						
					}					
				});
			}else{
				$('.resultId').text('아이디는 최소 4자 이상 이어야 합니다.');
			}
		});
	});
</script>

<section id="user" class="register">
    <form action="/Farmstory2/user/register.do" method="POST">
        <table border="1">
            <caption>사이트 이용정보 입력</caption>
            <tr>
                <td>아이디</td>
                <td>
                    <input type="text" name="uid" placeholder="아이디 입력"/>
                    <span class="resultId"></span>
                </td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td>
                    <input type="password" name="pass1" placeholder="비밀번호 입력"/>                            
                </td>
            </tr>
            <tr>
                <td>비밀번호 확인</td>
                <td>
                    <input type="password" name="pass2" placeholder="비밀번호 확인 입력"/>
                    <span class="resultPass"></span>
                </td>
            </tr>
        </table>
        <table border="1">
            <caption>개인정보 입력</caption>
            <tr>
                <td>이름</td>
                <td>
                    <input type="text" name="name" placeholder="이름 입력"/>                            
                </td>
            </tr>
            <tr>
                <td>별명</td>
                <td>
                    <p>공백없이 한글, 영문, 숫자만 입력가능</p>
                    <input type="text" name="nick" placeholder="별명 입력"/>
                    <span class="resultNick"></span>                            
                </td>
            </tr>
            <tr>
                <td>E-Mail</td>
                <td>
                    <input type="email" name="email" placeholder="이메일 입력"/>
                </td>
            </tr>
            <tr>
                <td>휴대폰</td>
                <td>
                    <input type="text" name="hp" placeholder="- 포함 13자리 입력" minlength="13" maxlength="13" />
                </td>
            </tr>
            <tr>
                <td>주소</td>
                <td>
                    <div>
                        <input type="text" name="zip" placeholder="우편번호" readonly/>
                        <button class="btnZip">주소검색</button>
                    </div>                            
                    <div>
                        <input type="text" name="addr1" placeholder="주소를 검색하세요." readonly/>
                    </div>
                    <div>
                        <input type="text" name="addr2" placeholder="상세주소를 입력하세요."/>
                    </div>
                </td>
            </tr>
        </table>

        <div>
            <a href="/Farmstory2/user/login.do" class="btnCancel">취소</a>
            <input type="submit"   class="btnJoin" value="회원가입"/>
        </div>

    </form>
</section>
<%@ include file="../_footer.jsp" %>