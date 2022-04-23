<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<title>Swiggy Home</title>
</head>
<body onload="resetSelection()">
	<div class="topP">
		<div class="side1 win1">
			<div class="side2 win2">
				<div class="navbar">
					<img src="images/logo.png" alt="logo" width="240px" height="100%">
					<div class="nav-btns">
						<button class="login" onclick="popup.loginshow();">Login</button>
						<button class="signup" onclick="popup.regshow();">Sign up</button>
					</div>
				</div>
				<p class="head">Hungry?</p>
				<p class="sub-head">Order food from favourite restaurants near you.</p>
				<!-- <div class="row2">
					<div class="search-box">
						<select id="countrySelect" size="1" onchange="makeSubmenu(this.id);">
							<option value="" disabled selected>Choose State</option>
							<option value="2">Gujrat</option>
							<option value="1">Maharashtra</option>
							<option value="4">Kerala</option>
						</select> 
						<select id="citySelect" size="1">
							<option value="" disabled selected>Choose City</option>
							<option></option>
						</select>
					</div>
					<button class="search-btn" onclick="displaySelected(); popup.loginshow();" >FIND FOOD</button>
				</div> -->
				<p class="sub-head" style="font-size: 16px; margin-top: 20px;">POPULAR CITIES IN INDIA</p>
				<div class="row2">
					<p class="city">Ahemdabad</p>
					<p class="city">Kolkata</p>
					<p class="city">Delhi</p>
					<p class="city">Mumbai</p>
					<p class="city">Bengaluru</p>
				</div>
			</div>
		</div>
		<div class="side2 win3">
			<img src="images/Poster.jpg" width="100%" height="100%" />
		</div>
	</div>
	<section id="section-2">
	<div class="row2" style="justify-content: center;">
		<div style="width: 25%; display: flex; flex-direction: column; align-items: center;">
			<img src="images/F11.png" width="30%" height="50%" />
			<p class="head-2">No Minimum Order</p>
			<p class="sub-head-2">Order in for yourself or for the group, with no restrictions on order value</p>
		</div>
		<div style="width: 25%; display: flex; flex-direction: column; align-items: center;">
			<img src="images/f12.png" width="30%" height="50%" />
			<p class="head-2">Live order Tracking</p>
			<p class="sub-head-2">Know where your order is at all times, from the restaurant to your doorstep</p>
		</div>
		<div style="width: 25%; display: flex; flex-direction: column; align-items: center;">
			<img src="images/f13.png" width="30%" height="50%" />
			<p class="head-2">Lightning-fast Delivery</p>
			<p class="sub-head-2">Experience Swiggy's superfast delivery for food delivered fresh & on time</p>
		</div>
	</div>
	</section>
	<section id="section-3">
	<div style="float: left; width: 50%; height: 100%; display: flex; align-items: center; justify-content: center;">
		<div style="float: right; height: 50%; width: 50%">
			<p class="head">Restaurants in your pocket</p>
			<p class="sub-head">Order from your favorite restaurants & track on the go, with the all-new Swiggy app.</p>
			<div class="row2">
				<img src="images/GPlay.jpg" width="200px" height="60px" /> 
				<img src="images/ios.jpg" width="200px" height="60px" style="margin-left: 20px;" />
			</div>
		</div>
	</div>
	<div style="position: relative; float: right; width: 50%; display: flex; height: 100%">
		<img src="images/MobileView.jpg" height="500px" width="400px" />
		<!--  <img src="" height="500px" width="400px" style="position:absolute;bottom:0;right:20%"/> -->
	</div>
	</section>
	<footer> <img src="images/LogoSVG.png" width="200px" height="60px" />
	<div
		style="width: 200px; display: flex; justify-content: space-between; align-items: center;">
		<img src="images/fb.png" width="24" height="24" /> 
		<img src="images/insta.png" width="24" height="24" /> 
		<img src="images/twitter.png" width="24" height="24" />
	</div>
	</footer>
<!-- Login Pop up  -->

	<div class="popup" id="popup" onclick="popup.hidePopup();"></div>

	<div id="login" class="login-screen">
		<form id="loginform" action="LoginServlet" method="post" name="loginform"
			 onsubmit="return loginvalidation.Loginformvalid();">
			<div class="title">
				<h1>
					<span>Log</span>in
				</h1>
			</div>

			<button id="close" class="loginbutton" type="reset"
				onclick="popup.loginoff();">&times;</button>

			<div class="">
				<div class="input-box">
					<p>What is your Email?</p>
					<input type="text" class="login-field" value=""
						placeholder="Email" id="loginname" name="email"
						autocomplete="off" oninput="loginvalidation.unamevalid()"
						onkeyup="loginvalidation.unamevalid()"
						onblur="loginvalidation.unamevalid()" ><br> <span
						class="error" style.color="#ff0000" id="unameerror"></span>
				</div>

				<div class="input-box">
					<p>What is your Password?</p>
					<input type="password" class="login-field" value=""
						placeholder="password" id="loginpass" name="password"
						onkeyup="loginvalidation.passvalid()" oninput="loginvalidation.passvalid()"
						onblur="loginvalidation.passvalid()"><br> <span
						class="error" style.color="#ff0000" id="passerror"></span>
				</div>

				<button type="submit" class="loginbutton">Login</button>
				<a class="login-link" href="#" onclick="popup.regshow();"> <span>New User</span> Register here..!</a>
		</form>
	</div>
	</div>

<!-- Register Popup -->

	<div id="reg" class="reg-screen">
		<form id="regform" action="AddUserServlet" method="post" name="regform"
			onsubmit="return validation.eachtrue()" >
			<h1><span>Sign</span>Up</h1>
			 
			<button id="close" type="reset" onclick="popup.hidePopup();">&times;</button>
			<p>Please fill in this form to create an account.</p>
			 
			<!--<span class="" style.color="#ff0000" id="" onchange="uname-error.setStyle('display','none');"></span>-->
			<hr>

			<div class="input-box">
				<p>What is your first name?</p>
				<input id="fname" type="text" placeholder="Enter Your First Name"
					name="fname" autocomplete="off" maxlength="10"
					onkeypress="return validation.restrict_number(event)"
					oninput="validation.fnamevalid();"
					ondrop="return false;" onpaste="return false;"
					onkeyup="validation.fnamevalid();" onblur="validation.fnamevalid();"><br>
				<span class="error" style.color="#ff0000" id="uname-error"
					onchange="uname-error.setStyle('display','none');"></span>
			</div>

			<div class="input-box">
				<p>What is your Contact Number?</p>
				<input id="number" type="text" placeholder="Enter Your Contact No."
					name="number" autocomplete="off" maxlength="10" ondrop="return false;" onpaste="return false;"
					onkeypress="return validation.restrictalphabets(event)"
					onkeyup="validation.numbervalid()" oninput="validation.numbervalid()"
					onblur="validation.numbervalid()"><br> <span
					class="error" style.color="#ff0000" id="number-error"
					onchange="number-error.setStyle('display','none');"></span>
			</div>

			<div class="input-box">
				<p>What is your E-mail?</p>
				<input id="email" type="text" placeholder="Enter Your E-mail" ondrop="return false;" onpaste="return false;"
					name="email" autocomplete="off" onkeyup="validation.emailvalid()"
					onblur="validation.emailvalid()" oninput= "validate.setInfo();"><br> 
					<span class="error" style.color="#ff0000" id="email-error" onchange="email-error.setStyle('display','none');"></span>
			</div>

			<div class="input-box">
				<p>What is your address?</p>
				<input id="address" type="text" placeholder="Enter Your address"
					name="address" autocomplete="off" ondrop="return false;" onpaste="return false;"
					onkeyup="validation.addressvalid()" oninput="validation.addressvalid();"
					onblur="validation.addressvalid();"><br> <span
					class="error" style.color="#ff0000" id="address-error"
					onchange="address-error.setStyle('display','none');"></span>
			</div>

			<div class="input-box">
				<p>Type Password?</p>
				<input id="password" type="password" placeholder="Enter Your Password"
					name="password" onkeyup="validation.pwdvalid()" ondrop="return false;" onpaste="return false;"
					onblur="validation.pwdvalid()" oninput="validation.pwdvalid()"><br> <span
					class="error" style.color="#ff0000" id="pwd-error"
					onchange="pwd-error.setStyle('display','none');"></span>
			</div>
			<hr>

			<button type="submit" class="registerbutton" name="submit" onclick="validation.checkTrueOnButton();">Register</button>
			<p>Already have an account? <a class="reg-link" href="#" onclick="popup.loginshow();">
				<span>Log in</span></a> .
			</p>
		</form>
	</div>
</body>
</html>