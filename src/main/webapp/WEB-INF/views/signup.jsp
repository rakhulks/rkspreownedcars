<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<style>
body {
	font-family: Arial;
	padding: 0 2em;
  background-image: url("resources/img/nissan-gt-r,-blanco-y-negro-186985.jpg");
}

* {
	box-sizing: border-box
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #ffffff;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #fffffff;
	outline: none;
}

hr {
	border: 1px solid #ffffff;
	margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}

/* Extra styles for the cancel button */
.cancelbtn {
	padding: 14px 20px;
	background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
	float: left;
	width: 50%;
}

/* Add padding to container elements */
.container {
	padding: 16px;
}
#txt{
color: #ffffff;
}
#txt2{
color: #ffffff;
font-size: 40px;
width: 50%;
}

/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
	.cancelbtn, .signupbtn {
		width: 100%;
	}
}

</style>
<body>
     <%@ include file = "Navbar.jsp" %>
          

	<form action="addNewUser" method="post" class="form-horizontal">
		<div class="container">
			<h1>Sign Up</h1>
			<label id="txt2">Sign Up Now!</label>
			<hr>
			<div class="col-sm-3 col-sm-offset-3">
<label id="txt">First Name: </label>
			 <input type="text" placeholder="Enter your firstname" name="firstname" required>
			 </div>
			 <div class="col-sm-3">
			 <label id="txt">Last Name: </label>
			 <input type="text" placeholder="Enter your lastname" name="lastname" required>
			 </div>
			 <br>
			 <div class="col-sm-6 col-sm-offset-3">
			 <label id="txt">Sex: </label> <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="male" checked>
             <label id="txt">Male </label>
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="female">
             <label id="txt"> Female </label>
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="other">
             <label id="txt">Other </label>
            
            
            </div>
            <div class="col-sm-6 col-sm-offset-3">
			<label id="txt"><b>Email: </b></label>
			 <input type="text" placeholder="Enter your Email" name="email" required></div>
		    <div class="col-sm-6 col-sm-offset-3">
		    <label id="txt"><b>User name: </b></label>
			 <input type="text" placeholder="Enter your Username" name="username" required></div>
		    <div class="col-sm-6 col-sm-offset-3"><label id="txt"><b>Password: </b></label>
			 <input type="password" placeholder="Enter your Password" name="password" required> </div>
			 <div class="col-sm-3 col-sm-offset-3"><label id="txt"><b>Street Name: </b></label>
			 <input type="text" placeholder="Enter your Street Name" name="streetname" required></div> 
			 <div class="col-sm-3"><label id="txt"><b>State: </b></label>
			 <input type="text" placeholder="Enter your State" name="state" required> </div>
			   <div class="col-sm-3 col-sm-offset-3">
			 <label id="txt"><b>Country: </b></label>
			 <input type="text" placeholder="Enter your Country" name="country" required> </div>
			 
			 <div class="col-sm-3"><label id="txt"><b>Zip Code: </b></label>
			 <input type="text" placeholder="Enter your Zip" name="zipcode" required> </div>
			 <div class="col-sm-6 col-sm-offset-3"><label id="txt"><b>Phone: </b></label>
			 <input type="text" placeholder="Enter your mobile number" name="phone" required> </div>
			 
			<div class="clearfix">
				<button type="button" class="cancelbtn"><label id="txt">Cancel</label></button>
				<button type="submit" class="signupbtn"><label id="txt">Sign Up</label></button>
			</div>
		</div>
	</form>

</body>
</html>
