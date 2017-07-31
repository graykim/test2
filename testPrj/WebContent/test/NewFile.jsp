<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#id').blur(function() {
			var idlength = $("#id").val();
			var idll = idlength.length;
			if (idll < 4) {
				$('#idans').text("ID는 15자 이상 3자 이하로 쓸 수 없습니다.");
				$('#idans').css("color", "red");
			} else {
				$('#idans').text("")
			}
		});
		$('#pw').blur(function() {
			var pwsp = $("#pw").val();
			var sp = /[\W\s]/g;
			var pwtest = sp.test(pwsp);

			if (pwtest) {
				$('#pwans').text("PW란에 특수문자를 넣을 수 없습니다.");
				$('#pwans').css("color", "red");
			} else {
				$('#pwans').text("");
			}
		});
		$('#login').click(
				function() {
					if (($('#id').val() == "admin")
							&& ($('#pw').val() == "1234")) {
						alert("로그인에 성공하였습니다.");
					} else if (($('#id').val() != "admin")
							&& ($('#pw').val() == "1234")) {
						var id = $('#id').val().length;
						
						if(id<4){
							$('#idans').text("ID는 15자 이상 3자 이하로 쓸 수 없습니다.");
							$('#idans').css("color", "red");
						}else{
						$('#idans').text("ID가 잘못되었습니다.");
						$('#idans').css("color", "red");
						}
					} else if (($('#id').val() == "admin")
							&& ($('#pw').val() != "1234")) {
						var pw = $('#id').val();
						var pwck = /[\W\s]/g;
						var pwtest = sp.test(pwsp);
						if(pwtest){
							$('#pwans').text("PW란에 특수문자를 넣을 수 없습니다.");
							$('#pwans').css("color", "red");
						}else{
						$('#pwans').text("PW가 잘못되었습니다");
						$('#pwans').css("color", "red");
						}
					} else {
						alert("아이디와 비번 둘다 잘못되었습니다.");
					}
				});

	});
</script>
</head>
<body>
	<div class="col-sm-3">
		<form class="form-horizental" action="" method="post">
			<div class="col-sm-12">
				<label for="id" class="col-sm-2 control-label">ID</label>
			</div>
			<div class="form-group">
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id" name="id"
						placeholder="ID" maxlength="14">
				</div>
			</div>
			<div class="form-group col-sm-12">
				<p id="idans"></p>
			</div>
			<div class="col-sm-12">
				<label for="pw" class="col-sm-2 control-label">PW</label>
			</div>
			<div class="form-group">
				<div class="col-sm-10">
					<input type="password" class="form-control" id="pw" name="pw"
						placeholder="PW">
				</div>
			</div>
			<div class="form-group col-sm-12">
				<p id="pwans"></p>
			</div>
			<div class="form-group col-sm-12">
				<input type="checkbox" checked>Remember me
			</div>
			<div class="form-group">
				<div class="col-sm-12">
					<button type="button" class="btn btn-primary" id="login"
						Onclick="loginMethod">Login</button>
				</div>
			</div>
		</form>
	</div>
	<!-- abcd -->
	<a></a>
</body>
</html>









