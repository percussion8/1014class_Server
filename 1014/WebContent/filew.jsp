<%@page import="com.sun.org.apache.bcel.internal.generic.NEW"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.io.*" %>
<%
String infile = "D:/박성연Monica/서버/1014/WebContent/filew.jsp";
String outfile = "c:/MonicaJSP/filew_copy.txt";

int ch = 0;
File inf = new File(infile);
File outf = new File(outfile);

FileReader filer = new FileReader(inf);
FileWriter filew = new FileWriter(outfile);
try{
	while((ch=filer.read()) != -1){
		filew.write(ch);
	}
	filew.close();
	filer.close();
} catch(IOException e){
	out.println(e.getMessage());
}


// filew_copy 텍스트파일에 내용 복사저장



%>