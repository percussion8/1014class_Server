<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.*" %>
<%
request.setCharacterEncoding("utf-8");

//문자열 변수 board_file에 "c:/MonicaJSP/write.txt"저장
//문자열 변수 email에 null값 대입
//File 객체 check 생성, 파라미터 board_file
//check변수의 메서드 exists호출
//만약 파일이 존재하지 않으면 FileWriter객체 filew 생성 파라미터는 board_file
//객체 filew의 write메서드 호출 전달하는 파라미터는 공백문자열
//filew.close();

//request 매서드 getParameter호출("email")
//호출한 결과의 값이 ""(공백)이 아니면 아래 코드 실행
//email = "<a href = mailto: ";
//email += request.getParameter("email");
//email += ">" + request.getParameter("email");
//email += "</a>";

String board_file = "c:/MonicaJSP/write.txt";
String email = null;
File check = new File(board_file);
if(!check.exists()){
	FileWriter filew = new FileWriter(board_file);
	filew.write("");
	filew.close();
}


if(request.getParameter("email") != ""){
	email = "<a href = mailto: ";
	email += request.getParameter("email");
	email += ">" + request.getParameter("email");
	email += "</a>";
}






try {   
	 PrintWriter pw = new PrintWriter(new FileWriter(board_file, true));
	 pw.println("<table border='0' width='600' cellspacing='0' cellpadding='2'>");
	 pw.println("<tr align='right'>");
	 pw.println("<td height='22'>&nbsp;</td></tr>");
	 pw.println("<tr align='center'>");
	 pw.println("<td height='1' bgcolor='#1F4F8F'></td>");
	 pw.println("</tr>");
	 pw.println("<tr align='center' bgcolor='#DFEDFF'>");
	 pw.println("<td class='button' bgcolor='#DFEDFF'>"); 
	 pw.println("<div align='left'><font size='2'>"+request.getParameter("subject"));
	 pw.println("</div></td>");
	 pw.println("</tr>");
	 pw.println("<tr align='center' bgcolor='#FFFFFF'>");
	 pw.println("<td align='center' bgcolor='#F4F4F4'>"); 
	 pw.println("<table width='100%' border='0' cellpadding='0'cellspacing='4'>");
	 pw.println("<tr bgcolor='#F4F4F4'>");
	 pw.println("<td width='13%' height='7'></td>");
	 pw.println("<td width='38%' height='7'>글쓴이:" + request.getParameter("name") + "</td>");
	 pw.println("<td width='38%' height='7'>E-mail: "+ email +"</td>");
	 pw.println("<td width='11%' height='7'></td>");
	 pw.println("</tr>");
	 pw.println("<tr bgcolor='#F4F4F4'>");
	 pw.println("<td width='13%'></td>");
	 pw.println("<td colspan=2>작성일:" + (new java.util.Date()).toLocaleString() + "</td>");
	 pw.println("<td width='11%'></td>");
	 pw.println("</tr></table>");
	 pw.println("</td></tr>");
	 pw.println("<tr align='center'>");
	 pw.println("<td bgcolor='#1F4F8F' height='1'></td>");
	 pw.println("</tr>");
	 pw.println("<tr align='center'>");
	 pw.println("<td style='padding:10 0 0 0'>");
	 pw.println("<div align='left'><br>");
	 pw.println("<font size='3' color='#333333'><PRE>"+request.getParameter("content"));
	 pw.println("</PRE></div>");
	 pw.println("<br>");
	 pw.println("</td></tr>");
	 pw.println("<tr align='center'>");
	 pw.println("<td class='button' height='1'></td>");
	 pw.println("</tr>");
	 pw.println("<tr align='center'>");
	 pw.println("<td bgcolor='#1F4F8F' height='1'></td>");
	 pw.println("</tr>");
	 pw.println("</table>");
	 pw.close();
	} catch(IOException e) {
		out.println(e.getMessage());
	}
%>

<html>
<body>
	<center>
		<font color="blue" size="+1"><a href="filegb_write.html">
			<img src="image/write.gif" alt="">
			작성하는 곳으로
		</a>
		</font>
	</center>
</body>
</html>