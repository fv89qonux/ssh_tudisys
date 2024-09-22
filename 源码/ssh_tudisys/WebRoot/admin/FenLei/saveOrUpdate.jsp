<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="../common.jsp"%>
		<script type="text/javascript">
			KE.show({ 
				id : 'content7',
				cssPath : './index.css'
				});
			function check(){
				var s_0 = document.getElementById("util.s_0");
				if('' == s_0.value.replace(/(^\s*)|(\s*$)/g, "") ){
					alert("请输入内容");
					s_0.value = "";
					s_0.focus();
					return false;
				}
				return true;
			}
		$(document).ready(function(e) {
		    $(".select1").uedSelect({
		width : 345	
		});    $(".select2").uedSelect({
		width : 167	
		});    $(".select3").uedSelect({
		width : 100	
		});
		});
		</script>
	</head>
	<body>
		<div class="place">
			<span>当前位置</span>
			<ul class="placeul"><li>分类管理
			</li>
		<li>增加界面</li>
		</ul>
		</div>
		<div class="formbody">
		<form
			action="${pageContext.request.contextPath}/FenLei-saveOrUpdateObject.action"
			method="post"  onsubmit="return check()">
			<input name="util.id" value="${util.id }" type="hidden" />
			<table
				class="table table-striped table-bordered table-condensed list">
				<thead>
					<tr>
						<td colspan="4">
							<b>分类管理 </b>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							分类名称
						</td>
						<td>
							<input name="util.s_0" id="util.s_0" value="${util.s_0 }" type="text" />
							
						</td>
						<td>
							创建日期
						</td>
						<td>
							<div class="input-append">
								<input name="util.s_1" value="${util.s_1 }" type="text"
									class="span2 datepicker" onClick="WdatePicker();" readonly="readonly" />
								
								<img width=30 height=30 src="${pageContext.request.contextPath}/common/images/d04.png" title="日期" />
							</div>
						</td>
					</tr>
					<tr>
						<td width="15%">
							备注
						</td>
						<td width="500" colspan="3" height="">
							<textarea id="content7"  name="util.s_2" style="width: 95%" rows="4" cols="5">${util.s_2 }</textarea>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td>
							&nbsp;
						</td>
						<td colspan="3">
							<c:if test="${type == 'admin'}">
								<input class="btn btn-inverse" id="find" type="submit"
									value="保存" />
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="btn btn-inverse" type="reset" value="取消" /><font color=red><s:property value="errMsg" /> </font>
							</c:if>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	<script type="text/javascript"> 
	$("#usual1 ul").idTabs();
	$('.tablelist tbody tr:odd').addClass('odd');
	</div>
	</body>
</html>