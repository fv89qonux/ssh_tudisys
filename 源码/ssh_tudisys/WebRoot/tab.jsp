<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="common.jsp"%>
		<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>

		<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
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
					<a href="#">发布通知</a>
				</li>
			</ul>
		</div>

		<div class="formbody">


			<div id="usual1" class="usual">

				<div class="itab">
					<ul>
						<li>
							<a href="#tab1" class="selected">发布通知</a>
						</li>
						 
					</ul>
				</div>

				<div id="tab1" class="tabson">

					<div class="formtext">
						Hi，
						<b>admin</b>，欢迎您发布通知！
					</div>

					<ul class="forminfo">
						<li>
							<label>
								招聘企业
								<b>*</b>
							</label>
							<input name="" type="text" class="dfinput" value="请填写单位名称"
								style="width: 518px;" />
						</li>

						<li>
							<label>
								职位名称
								<b>*</b>
							</label>


							<div class="vocation">
								<select class="select1">
									<option>
										UI设计师
									</option>
									<option>
										交互设计师
									</option>
									<option>
										前端设计师
									</option>
									<option>
										网页设计师
									</option>
									<option>
										Flash动画
									</option>
									<option>
										视觉设计师
									</option>
									<option>
										插画设计师
									</option>
									<option>
										美工
									</option>
									<option>
										其他
									</option>
								</select>
							</div>

						</li>

						<li>
							<label>
								薪资待遇
								<b>*</b>
							</label>

							<div class="vocation">
								<select class="select1">
									<option>
										3000-5000
									</option>
									<option>
										5000-8000
									</option>
									<option>
										8000-10000
									</option>
									<option>
										10000-15000
									</option>
								</select>
							</div>



						</li>
						<li>
							<label>
								工作地点
								<b>*</b>
							</label>

							<div class="usercity">

								<div class="cityleft">
									<select class="select2">
										<option>
											江苏
										</option>
										<option>
											湖南
										</option>
										<option>
											广东
										</option>
										<option>
											北京
										</option>
										<option>
											湖北
										</option>
									</select>
								</div>

								<div class="cityright">
									<select class="select2">
										<option>
											南京
										</option>
										<option>
											无锡
										</option>
										<option>
											盐城
										</option>
										<option>
											徐州
										</option>
										<option>
											连云港
										</option>
									</select>
								</div>

							</div>



						</li>
						<li>
							<label>
								通知内容
								<b>*</b>
							</label>


							<textarea id="content7" name="content"
								style="width: 700px; height: 250px; visibility: hidden;"></textarea>

						</li>
						<li>
							<label>
								&nbsp;
							</label>
							<input name="" type="button" class="btn" value="马上发布" />
						</li>
					</ul>

				</div>


			</div>

			<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>

			<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

		</div>

	</body>
</html>
