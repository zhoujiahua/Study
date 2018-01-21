# loction.search 通过地址栏实现页面之间的数据传输、接受、展示、处理方法

## index.html
```
<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge" />
		<title>Document</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>

		<script type="text/javascript">
			$(document).ready(function() {
				$("#btn").click(function() {
					var una = $("#uname").val();
					$("#ua").html(una);
					$("#ua").attr("href", "test.html?name=" + una);
					$(".u-div").hide();
				})
			});
		</script>
	</head>

	<body>
		<div class="container in-div">
			<div class="row">
				<h1 class="page-header col-md-12">
				<a id="ua" href="#"></a>
			</h1>
				<div class="col-md-12 u-div">
					<div class="col-md-12">
						<label for="uname">用户名：</label>
						<input type="text" name="" id="uname" value="" />
					</div>
					<div class="col-md-12">
						<button id="btn">登录</button>
					</div>
				</div>

			</div>
		</div>
	</body>
</html>
```
## Test.html
```
<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta http-equiv="X-UA-Compatible" content="ie=edge" />
		<title>Document</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/jQStr.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(function() {
				$("#dm-ua").text(GetQueryString("name"));
			});
		</script>
	</head>

	<body>
		<div class="container dm-div">
			<div class="row">
				<h1 class="col-md-12 page-header">
				<a id="dm-ua" href="#"></a>
			</h1>
			</div>
		</div>
	</body>
</html>

```
## JS字符串处理方法-jQStr.js
```
  function GetQueryString(name)
  {
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null
  }
```
