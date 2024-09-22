<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../com.jsp"%>
<script type="text/javascript">
	function topPage() {
		var contextPath = "${pageContext.request.contextPath}";
		var field = document.getElementById("field").value;
		var fieldValue = document.getElementById("fieldValue").value;
		var pageNo = "${pageModel.topPageNo}";
		window.location = contextPath
				+ '/ZhuanChu-getAllUtil.action?pageModel.currentPageNo='
				+ pageNo + '&field=' + field + '&fieldValue=' + fieldValue + '';
	}

	function previousPage() {
		var contextPath = "${pageContext.request.contextPath}";
		var field = document.getElementById("field").value;
		var fieldValue = document.getElementById("fieldValue").value;
		var pageNo = "${pageModel.previousPageNo}";
		window.location = contextPath
				+ '/ZhuanChu-getAllUtil.action?pageModel.currentPageNo='
				+ pageNo + '&field=' + field + '&fieldValue=' + fieldValue + '';
	}

	function nextPage() {
		var contextPath = "${pageContext.request.contextPath}";
		var field = document.getElementById("field").value;
		var fieldValue = document.getElementById("fieldValue").value;
		var pageNo = "${pageModel.nextPageNo}";
		window.location = contextPath
				+ '/ZhuanChu-getAllUtil.action?pageModel.currentPageNo='
				+ pageNo + '&field=' + field + '&fieldValue=' + fieldValue + '';
	}

	function bottomPage() {
		var contextPath = "${pageContext.request.contextPath}";
		var field = document.getElementById("field").value;
		var fieldValue = document.getElementById("fieldValue").value;
		var pageNo = "${pageModel.buttomPageNo}";
		window.location = contextPath
				+ '/ZhuanChu-getAllUtil.action?pageModel.currentPageNo='
				+ pageNo + '&field=' + field + '&fieldValue=' + fieldValue + '';
	}
	$(document).ready(function() {
		$(".click").click(function() {

			var ids = document.getElementsByName("id");
			var flag = 0;
			for ( var i = 0; i < ids.length; i++) {
				if (ids[i].checked) {
					flag = 1;
					break;
				}
			}
			if (flag == 1) {
				$(".tip").fadeIn(200);
			} else {
				alert("����ѡ��һ����¼");
			}

		});

		$(".tiptop a").click(function() {
			$(".tip").fadeOut(200);
		});

		$(".sure").click(function() {
			$(".tip").fadeOut(100);

		});

		$(".cancel").click(function() {
			$(".tip").fadeOut(100);
		});

	});

	function check() {
		return true;
	}
</script>
</head>
<body>
	<div class="place">
		<span>��ǰλ��</span>
		<ul class="placeul">
			<li>ת������</li>
			<li>��ѯ����</li>
		</ul>
	</div>
	<div class="rightinfo">
		<div class="tools">

			<c:if test="${type == 'admin'}">
				<ul class="toolbar" style="margin-top:-10px;">
					<li class="click"><span><img
							src="${pageContext.request.contextPath}/common/images/t03.png" />
					</span>����ɾ��</li>
				</ul>
			</c:if>
			<form
				action="${pageContext.request.contextPath}/ZhuanChu-getAllUtil.action">
				<ul class="toolbar1" style="float: left;margin-top:-10px;">
					<li style="font-size: 16px; margin-left: 26px;">����д��ѯ���� <span>
					</span></li>
					<li style="margin-left: 26px;"><select id="field" name="field"
						style="font-size: 20px; background-color: #F9F9F9; margin: 3px 0px 0px 10px;">
							<option <c:if test="${field == 'dangAn.s_0'}">selected</c:if>
								value="dangAn.s_0" /> ����
							</option>
							<option <c:if test="${field == 'user.s_0'}">selected</c:if>
								value="user.s_0" /> ������
							</option>
							<option <c:if test="${field == 's_0'}">selected</c:if>
								value="s_0" /> ת�����
							</option>
							<option <c:if test="${field == 's_1'}">selected</c:if>
								value="s_1" /> ת������
							</option>
							<option <c:if test="${field == 's_2'}">selected</c:if>
								value="s_2" /> ת������
							</option>
							<option <c:if test="${field == 's_3'}">selected</c:if>
								value="s_3" /> ת��ԭ��
							</option>
					</select></li>
					<div style="float: left; margin-left: 20px; margin-top: 0px;">
						<input class="dfinput" type="text" name="fieldValue"
							id="fieldValue" value="${fieldValue }" style="width: 350px;" />
					</div>
					<div style="float: left; margin-top: 0px;">
						<input class="btn btn-inverse" id="find" type="submit"
							value="��&nbsp;&nbsp;ѯ" style="width: 80px; margin-left: 26px;" />
						&nbsp;&nbsp; <input class="btn btn-inverse" type="button"
							value="��&nbsp;&nbsp;��"
							onclick="javascript: document.getElementById('fieldValue').value='';"
							style="width: 80px; margin-left: 10px;" />&nbsp;&nbsp;

					</div>
				</ul>
			</form>
		</div>
		<form
			action="${pageContext.request.contextPath}/ZhuanChu-deleteManyUtil.action"
			name="myform" id="listform" method="post" onsubmit="return check()">
			<table class="imgtable">
				<thead>
					<tr>
						<th width="78px;"><input id="checkall" name="checkall"
							type="checkbox"> ȫѡ</th>
						<th>����</th>
						<th>����</th>
						<th>������</th>
						<th>ת�����</th>
						<th>ת������</th>
						<th>ת������</th>
						<th>ת��ԭ��</th>
						<th>����</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${pageModel.list != 'null'}">
						<c:forEach var="tmp" items="${pageModel.list}">
							<tr>
								<td><input name="id" value="${tmp.id }" type="checkbox">
								</td>
								<td>${tmp.dangAn.user.s_2 }</td>
								<td>${tmp.dangAn.s_0 }</td>
								<td>${tmp.user.s_0 }</td>
								<td>${tmp.s_0 }</td>
								<td>${tmp.s_1 }</td>
								<td>${tmp.s_2 }</td>
								<td>${tmp.s_3 }</td>
								<td><c:if test="${type == 'admin'}">
										<a target="Conframe" class="tablelink"
											href="${pageContext.request.contextPath}/ZhuanChu-selectUtil.action?util.id=${tmp.id }">�޸�
										</a>
										<a target="Conframe" class="tablelink"
											href="${pageContext.request.contextPath}/ZhuanChu-deleteUtil.action?util.id=${tmp.id }">ɾ��
										</a>
									</c:if> <c:if test="${type != 'admin'}">
										<a target="Conframe" class="tablelink"
											href="${pageContext.request.contextPath}/ZhuanChu-selectUtil.action?util.id=${tmp.id }">�鿴
										</a>
									</c:if></td>
							</tr>
						</c:forEach>
				</tbody>
			</table>
			</c:if>
			<div class="pagin">
				<div class="message">
					�� <i class="blue">${pageModel.totalRecords}</i>����¼����ǰ��ʾ��&nbsp; <i
						class="blue">${pageModel.currentPageNo}&nbsp;</i>ҳ
				</div>
				<ul class="paginList">
					<li class="paginItem"><a href="javascript:;"
						onClick="javascript:topPage();">|&lt;&lt; </a></li>
					<li class="paginItem"><a href="javascript:;"
						onClick="javascript:previousPage();"> &lt; </a></li>
					<li class="paginItem"><a href="javascript:;"
						onClick="javascript:nextPage();"> &gt; </a></li>
					<li class="paginItem"><a href="javascript:;"
						onClick="javascript:bottomPage();"> &gt;&gt;|</a></li>
				</ul>
			</div>
	</div>
	<div class="tip">
		<div class="tiptop">
			<span>��ʾ��Ϣ</span><a></a>
		</div>
		<div class="tipinfo">
			<span><img
				src="${pageContext.request.contextPath}/common/images/ticon.png" />
			</span>
			<div class="tipright">
				<p>�Ƿ�ȷ��ɾ����ѡ��¼ ��</p>
				<cite>���������ȷ����ť ���������ȡ����</cite>
			</div>
		</div>
		<div class="tipbtn">
			<input class="btn btn-inverse" type="submit" value="ȷ&nbsp;&nbsp;��"
				style="width: 80px; margin-left: 26px;" /> &nbsp; <input
				class="btn btn-inverse" type="reset" value="ȡ&nbsp;&nbsp;��"
				style="width: 80px; margin-left: 26px;" />
		</div>
	</div>
	</form>
	<script type="text/javascript">
		$('.imgtable tbody tr:odd').addClass('odd');
	</script>

</body>
</html>
