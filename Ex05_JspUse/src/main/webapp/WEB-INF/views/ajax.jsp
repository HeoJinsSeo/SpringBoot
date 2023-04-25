<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <input type="button" id="btn1" value="js-ajax 실행">
    <div id="result" style="border: 1px solid red;">내용없음</div>
    <script>
        // 참고 : https://poiemaweb.com/js-ajax#3-xmlhttprequest

        let btn1 = document.querySelector("#btn1");
        btn1.addEventListener("click", function(){
            
            // ajax 객체 생성
            const xhr = new XMLHttpRequest();
            
            // 보낼 준비
            let url = "http://localhost:8080/test1";
            xhr.open("GET", url);
            
            // 실행을 지시. 단! 언제 끝날지 모름
            xhr.send();

            // 다녀오는게 끝났을때(응답 이후)
            xhr.onload = function(){
                console.log(xhr.responseText);

                let result = document.querySelector("#result");
                result.innerText = xhr.responseText
                // result.innerHTML = xhr.responseText
            }
        })
    </script>
</body>
</html>