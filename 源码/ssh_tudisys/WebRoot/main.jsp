<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="common.jsp"%>
	</head>
	<frameset rows="79,*" cols="*" frameborder="no" border="0"
		framespacing="0">
		<frame src="top.jsp" name="topFrame" scrolling="no"
			noresize="noresize" id="topFrame" title="topFrame" />
		<frameset cols="168,*" frameborder="no" border="0" framespacing="0">
			<frame src="left.jsp" name="leftFrame" scrolling="no"
				noresize="noresize" id="leftFrame" title="leftFrame" />
			<frame src="index.jsp" name="Conframe" id="Conframe"
				title="Conframe" />
		</frameset>
	</frameset>
	<noframes>
		<body>
		</body>
	</noframes>
</html>