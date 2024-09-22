<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>

		<link href="${pageContext.request.contextPath}/common/css/style.css"
			rel="stylesheet" type="text/css" />
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/common/js/jquery.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/common/js/pintuer.js"></script>

		<script type="text/javascript">
		$(document).ready(function(){
			$(".click").click(function(){
				$(".tip").fadeIn(200);
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
		</script>
	</head>
	<body>

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">图片列表</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<div class="tools">

				<ul class="toolbar">
					 
					<li>
						<span><img
								src="${pageContext.request.contextPath}/common/images/t03.png" />
						</span>批量删除
					</li>
					 
				</ul>


				<ul class="toolbar1">
					<li>
						<span><img
								src="${pageContext.request.contextPath}/common/images/t03.png" />
						</span>批量删除
					</li>
				</ul>

			</div>

			<form name="myform" id="listform" method="post">
				<table class="imgtable">

					<thead>
						<tr>
							<th>
								<input id="checkall" name="checkall" type="checkbox">
								全选
							</th>
							<th width="100px;">
								缩略图
							</th>

							<th>
								栏目
							</th>
							<th>
								权限
							</th>
							<th>
								发布人
							</th>
							<th>
								是否审核
							</th>
							<th>
								点击
							</th>
							<th>
								操作
							</th>
						</tr>
					</thead>

					<tbody>

						<tr>
							<td>
								<input name="id[]" value="59" type="checkbox">
							</td>
							<td class="imgtd">
								<img
									src="${pageContext.request.contextPath}/common/images/img11.png" />
							</td>

							<td>
								后台界面

							</td>
							<td>
								开放浏览sadfsadfasdfddsafsdfsadfsadfasdfddsafsdfsadfsadfasdfddsafsdf
							</td>
							<td>
								admin
							</td>
							<td>
								已审核
							</td>
							<td>
								128
							</td>
							<td>
								<a class="tablelink" href="#">修改</a>&nbsp;|
								<a class="tablelink" href="#">删除</a>
							</td>
						</tr>

						<tr>
							<td>
								<input name="id[]" value="59" type="checkbox">
							</td>
							<td class="imgtd">
							</td>

							<td>
								图标设计

							</td>
							<td>
								开放浏览
							</td>
							<td>
								uimaker
							</td>
							<td>
								<i>未审核</i>
							</td>
							<td>
								235
							</td>
							<td>
								<a class="tablelink" href="#">修改</a>&nbsp;|
								<a class="tablelink" href="#">删除</a>
							</td>
						</tr>

						<tr>
							<td>
								<input name="id[]" value="59" type="checkbox">
							</td>
							<td class="imgtd">
								<img
									src="${pageContext.request.contextPath}/common/images/img13.png" />
							</td>

							<td>
								软件界面

							</td>
							<td>
								开放浏览
							</td>
							<td>
								admin
							</td>
							<td>
								已审核
							</td>
							<td>
								100
							</td>
							<td>
								<a class="tablelink" href="#">修改</a>&nbsp;|
								<a class="tablelink" href="#">删除</a>
							</td>
						</tr>



					</tbody>

				</table>
			</form>





			<div class="pagin">
				<div class="message">
					共
					<i class="blue">1256</i>条记录，当前显示第&nbsp;
					<i class="blue">2&nbsp;</i>页
				</div>
				<ul class="paginList">
					<li class="paginItem">
						<a href="javascript:;"><span class="pagepre"></span> </a>
					</li>
					<li class="paginItem">
						<a href="javascript:;">1</a>
					</li>
					<li class="paginItem current">
						<a href="javascript:;">2</a>
					</li>
					<li class="paginItem">
						<a href="javascript:;">3</a>
					</li>
					<li class="paginItem">
						<a href="javascript:;">4</a>
					</li>
					<li class="paginItem">
						<a href="javascript:;">5</a>
					</li>
					<li class="paginItem more">
						<a href="javascript:;">...</a>
					</li>
					<li class="paginItem">
						<a href="javascript:;">10</a>
					</li>
					<li class="paginItem">
						<a href="javascript:;"><span class="pagenxt"></span> </a>
					</li>
				</ul>
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
							是否确认对信息的修改 ？
						</p>
						<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
					</div>
				</div>

				<div class="tipbtn">
					<input name="" type="button" class="sure" value="确定" />
					&nbsp;
					<input name="" type="button" class="cancel" value="取消" />
				</div>

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
						是否确认对信息的修改 ？
					</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>

			<div class="tipbtn">
				<input name="" type="button" class="sure" value="确定" />
				&nbsp;
				<input name="" type="button" class="cancel" value="取消" />
			</div>

		</div>

		<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>


	</body>
</html>
