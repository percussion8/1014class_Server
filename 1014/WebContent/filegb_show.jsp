<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*" %>

<html>
<head>
    <link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
    
<%

//File객체 생성하세요 참조변수 board_file
//생성자의 파라미터는 "c:/jsp/write.txt"
//문자열 변수 s 선언 후 null값 대입
//try catch문으로 감싸서 FileReader객체 in1을 생성, 생성자의 파라미터는 board_file
//BufferedReader 객체 생성 in2, 생성자의 파라미터는 in1
//while(in2의 메서드 readLine의 반환값을 s에 대입하고 대입한 결과가 null이 아닌동안 반복함), 반복하면서 out.println(s); 출력
//while문 밖에서 in2.close()
//catch문에서 out.println(e.getMessage())

File board_file = new File("c:/MonicaJSP/write.txt");
String s = null;

try{
    FileReader in1 = new FileReader(board_file);
    BufferedReader in2 = new BufferedReader(in1);
    while((s=in2.readLine()) != null){
        out.println(s);
    }
    in2.close();
} catch(IOException e){
    out.println(e.getMessage());
}





%>


</body>
</html>

