<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="common.jsp"%>
</head>
<body style="background: #f0f9fd;">
	<div class="lefttop">
		<span></span>ϵͳ�˵�
	</div>
	<dl class="leftmenu">
		<c:if test="${type == 'admin'}">
			<dd>
				<div class="title">
					<span><img
						src="${pageContext.request.contextPath}/common/images/leftico01.png" />
					</span>�û�����
				</div>
				<ul class="menuson">
					<li class="active"><cite></cite><a
						href="${pageContext.request.contextPath}/admin/User/saveOrUpdate.jsp"
						target="Conframe">�����û�</a><i></i>
					</li>
					<li><cite></cite><a
						href="${pageContext.request.contextPath}/User-getAllUtil.action"
						target="Conframe">��ѯ�û�</a><i></i>
					</li>
				</ul>
			</dd>
		</c:if>
		<dd>
			<div class="title">
				<span><img
					src="${pageContext.request.contextPath}/common/images/leftico02.png" />
				</span>�������
			</div>
			<ul class="menuson">
				<c:if test="${type == 'admin'}">
					<li class="active"><cite></cite><a
						href="${pageContext.request.contextPath}/admin/FenLei/saveOrUpdate.jsp"
						target="Conframe">����</a><i></i>
					</li>
				</c:if>
				<li><cite></cite><a
					href="${pageContext.request.contextPath}/FenLei-getAllUtil.action"
					target="Conframe">��ѯ</a><i></i>
				</li>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span><img
					src="${pageContext.request.contextPath}/common/images/leftico03.png" />
				</span>��������
			</div>
			<ul class="menuson">
				<c:if test="${type == 'admin'}">
					<li class="active"><cite></cite><a
						href="${pageContext.request.contextPath}/DangAn-initUtil.action"
						target="Conframe">����</a><i></i>
					</li>
				</c:if>
				<li><cite></cite><a
					href="${pageContext.request.contextPath}/DangAn-getAllUtil.action"
					target="Conframe">��ѯ</a><i></i>
				</li>
				<%-- <li><cite></cite><a
					href="${pageContext.request.contextPath}/JiLu-getAllUtil.action"
					target="Conframe">���ļ�¼</a><i></i>
				</li> --%>
			</ul>
		</dd>
	</dl>
</body>
</html>