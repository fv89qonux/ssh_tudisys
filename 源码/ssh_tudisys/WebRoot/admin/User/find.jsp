<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>

		<%@ include file="../com.jsp"%>


		<script type="text/javascript">
		$(document).ready(function(){
			$(".click").click(function(){
			
				var ids = document.getElementsByName("id");
				var flag = 0;
				for(var i = 0; i < ids.length; i++){
					if(ids[i].checked){
						flag = 1;
						break;
					}
				}
				if(flag == 1){
					$(".tip").fadeIn(200);
				}else{
					alert("至少选中一条记录");
				}
				//
			});
			
			$(".tiptop a").click(function(){
				$(".tip").fadeOut(200);
			});
			
			$(".sure").click(function(){
				$(".tip").fadeOut(100);
				
			});
			
			$(".cancel").click(function(){
				$(".tip").fadeOut(100);
			});
		
		});
		
		function check(){
			return true;
		}
		</script>
		<script type="text/javascript">
	function topPage() {
		var contextPath = "${pageContext.request.contextPath}";
		var field = document.getElementById("field").value;
		var fieldValue = document.getElementById("fieldValue").value;
		var pageNo = "${pageModel.topPageNo}";
		window.location = contextPath
				+ '/User-getAllUtil.action?pageModel.currentPageNo=' + pageNo
				+ '&field=' + field + '&fieldValue=' + fieldValue + '';
	}

	function previousPage() {
		var contextPath = "${pageContext.request.contextPath}";
		var field = document.getElementById("field").value;
		var fieldValue = document.getElementById("fieldValue").value;
		var pageNo = "${pageModel.previousPageNo}";
		window.location = contextPath
				+ '/User-getAllUtil.action?pageModel.currentPageNo=' + pageNo
				+ '&field=' + field + '&fieldValue=' + fieldValue + '';
	}

	function nextPage() {
		var contextPath = "${pageContext.request.contextPath}";
		var field = document.getElementById("field").value;
		var fieldValue = document.getElementById("fieldValue").value;
		var pageNo = "${pageModel.nextPageNo}";
		window.location = contextPath
				+ '/User-getAllUtil.action?pageModel.currentPageNo=' + pageNo
				+ '&field=' + field + '&fieldValue=' + fieldValue + '';
	}

	function bottomPage() {
		var contextPath = "${pageContext.request.contextPath}";
		var field = document.getElementById("field").value;
		var fieldValue = document.getElementById("fieldValue").value;
		var pageNo = "${pageModel.buttomPageNo}";
		window.location = contextPath
				+ '/User-getAllUtil.action?pageModel.currentPageNo=' + pageNo
				+ '&field=' + field + '&fieldValue=' + fieldValue + '';
	}
		</script>
	</head>
	<body>

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					用户管理
				</li>
				<li>
					查询界面
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<div class="tools">

				<ul class="toolbar" style="margin-top:-10px;">
					<li class="click">
						<span><img
								src="${pageContext.request.contextPath}/common/images/t03.png" />
						</span>批量删除
					</li>
				</ul>
				<form
					action="${pageContext.request.contextPath}/User-getAllUtil.action">
					<ul class="toolbar1" style="float: left;margin-top:-10px;">

						<li style="font-size: 16px; margin-left: 26px;">
							请填写查询条件
							<span> </span>
						</li>
						<li style="margin-left: 26px;">
							<select id="field" name="field"
								style="font-size: 20px; background-color: #F9F9F9; margin: 3px 0px 0px 10px;">
								<option value="s_2" />
									姓名
								</option>
								<option value="s_3" />
									出生日期
								</option>
								<option value="s_4" />
									性别
								</option>
								<option value="s_5" />
									联系方式
								</option>
								<option value="s_6" />
									紧急联系人
								</option>
							</select>
						</li>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div style="float: left; margin-left: 20px; margin-top: 0px;">
							<input class="dfinput" type="text" name="fieldValue" id="fieldValue" value="${fieldValue }" style="width: 350px;" />
							&nbsp;&nbsp;
						</div>
						<div style="float: left; margin-top: 0px;">
							<input class="btn btn-inverse" id="find" type="submit" value="查&nbsp;&nbsp;询" style="width: 80px; margin-left: 26px;" />
							&nbsp;&nbsp;
							<input class="btn btn-inverse" type="button" value="清&nbsp;&nbsp;空" onclick="javascript: document.getElementById('fieldValue').value='';" style="width: 80px; margin-left: 10px;" />
							&nbsp;&nbsp;
						</div>

					</ul>

				</form>

			</div>

			<form
				action="${pageContext.request.contextPath}/User-deleteManyUtil.action"
				name="myform" id="listform" method="post" onsubmit="return check()">
				<table class="imgtable">

					<thead>
						<tr>
							<th width="78px;">
								<input id="checkall" name="checkall" type="checkbox">
								全选
							</th>
							<th >
								姓名
							</th>
							<th>
								出生日期
							</th>
							<th>
								性别
							</th>
							<th>
								联系方式
							</th>
							<th>
								紧急联系人
							</th>
							<th>
								身份类型
							</th>
							<th>
								操作
							</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="tmp" items="${pageModel.list}">
							<tr>
								<td>
									<input name="id" value="${tmp.id }" type="checkbox">
								</td>
								<td class="imgtd">
									${tmp.s_2 }
								</td>

								<td>
									${tmp.s_3 }

								</td>
								<td>
									${tmp.s_4 }
								</td>
								<td>
									${tmp.s_5 }
								</td>
								<td>
									${tmp.s_6 }
								</td>
								<td>
									<c:if test="${tmp.s_11 == 'admin'}">
										<spring:message code="sys_admin" />
									</c:if>
									<c:if test="${tmp.s_11 == 'user'}">
										<spring:message code="sys_user" />
									</c:if>
									<c:if test="${tmp.s_11 == 'teacher'}">
										<spring:message code="sys_teacher" />
									</c:if>
								</td>
								<td>
									<c:if test="${type == 'admin'}">
										<a target="Conframe" class="tablelink"
											href="${pageContext.request.contextPath}/User-selectUtil.action?util.id=${tmp.id }">修改
										</a>
										<a target="Conframe" class="tablelink"
											href="${pageContext.request.contextPath}/User-deleteUtil.action?util.id=${tmp.id }">删除
										</a>
									</c:if>
									<c:if test="${type != 'admin'}">
										<a target="Conframe" class="tablelink"
											href="${pageContext.request.contextPath}/User-selectUtil.action?util.id=${tmp.id }">查看
										</a>
									</c:if>

								</td>
							</tr>
						</c:forEach>

					</tbody>

				</table>






				<div class="pagin">
					<div class="message">
						共
						<i class="blue">${pageModel.totalRecords}</i>条记录，当前显示第&nbsp;
						<i class="blue">${pageModel.currentPageNo}&nbsp;</i>页
					</div>
					<ul class="paginList">
						<li class="paginItem">
							<a href="javascript:;" onClick="javascript:topPage();">|&lt;&lt; </a>
						</li>
						<li class="paginItem">
							<a href="javascript:;" onClick="javascript:previousPage();"> &lt; </a>
						</li>
						<li class="paginItem">
							<a href="javascript:;" onClick="javascript:nextPage();"> &gt; </a>
						</li>
						<li class="paginItem">
							<a href="javascript:;" onClick="javascript:bottomPage();"> &gt;&gt;|</a>
						</li>
					</ul>
				</div>
		</div>

		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span><a></a>
			</div>

			<div class="tipinfo">
				<span><img
						src="${pageContext.request.contextPath}/common/images/ticon.png" />
				</span>
				<div class="tipright">
					<p>
						是否确认删除所选记录 ？
					</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>

			<div class="tipbtn">
				<input class="btn btn-inverse" type="submit" value="确&nbsp;&nbsp;定"
					style="width: 80px; margin-left: 26px;" />
				&nbsp;
				<input class="btn btn-inverse" type="reset" value="取&nbsp;&nbsp;消"
					style="width: 80px; margin-left: 26px;" />
			</div>

		</div>
		</form>
		<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>


	</body>
</html>
