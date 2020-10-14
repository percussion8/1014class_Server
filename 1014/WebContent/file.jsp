<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*" %>
<%

//파일 입출력 연습
//파일 클래스는 파일을 처리하기 위한 클래스
/* 입출력을 위해 필요한 파일과 폴더를 다루며 파일의 날짜와
시간 표식도 관리하고 서브폴더 계층도 관리
방법1: File dir = new File("c:\\temp\\myfolder");
File dir = new File("c:/temp/myfolder");
방법2: 특정 파일을 위한 파일클래스의 객체 생성
File infile = new File("c:\\temp\\myfolder", "myfile.txt");
방법3: 방법2와 비슷하지만 string 유형의 값으로 경로를 지정하는 대신 이전에 File객체로 생성한 객체 이름을 전달함
File dir = new File("c:/temp/myfolder");
File infile = new File(dir, myfile.txt);
File infile = new File(new File("c:\\temp\\myfolder"), myfile.txt);
1) 메서드 exists() = 파일이 있으면 true, 없으면 false 반환
getName() : 파일 이름을 문자열로 반환
getParent() : 상위 폴더의 이름반환, 존재하지 않으면 null반환
IsDirectory() : 현재 객체가 폴더이면 t겨e반환
length() : 파일의 바이트 반환
lest() : 파일클래스의 폴더내용 열거, 각 파일과 폴더 이름을 배열로 반환 폴더인 파일클래스객체에만 동작
mkdir() : 현재폴더와 관련된 파일 클래스에 폴더생성(??????????) 성공적으로 생성되면 true반환, 지정된 상위폴더는 반드시 존재해야함
mkdirs() : 위와 비슷하지만 경로를 지정한 폴더가 상위폴더를 가지지 않으면 상위폴더부터 생성한 다음 지정폴더 생성.  */




String indir = "c:/MonicaJSP";
String infile = "count.txt";

int i = 0;
File dir = new File(indir);
File afile = null;
File check = new File(indir, infile);

if(check.exists()){
	out.println(indir + "경로에" + infile + "파일이 존재합니다.");
} else {
	out.println(indir + "경로에 " + infile + "파일은 없습니다. ");
}

out.println("<p>");
String [] dirlist = dir.list();
System.out.println("dirlist에 들어있는 값"+dirlist);
/* for(i=0; i<dirlist.length; i++){
	System.out.println("dirlist i에 들어있는 값"+dirlist[i]);
} */





out.println("디렉터리/폴더들 <br>");
out.println("<select size=10>");
for(i=1; i<dirlist.length; i++){
	afile = new File(indir, dirlist[i]);
	out.print("<option>" + dirlist[i]);
	if(afile.isFile()){
		out.print("(" + afile.length() + " Byte)");
	}
	out.print("</option>");
}
out.print("</select>");
%>