<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Country</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
	
body {
	background-image: url("resources/img/6780293-classic-car-interior-wallpapernew.jpg");
}
label{
	color: white;
}
#txt2{
color: #ffffff;
font-size: 30px;
width: 50%;

}
</style>
</head>
<body>
<%@ include file = "Navbar.jsp" %>
<script>
function formCategory(){
	// Make quick references to our fields
	
	var categoryname = document.getElementById('categoryname');
	var categorydescription = document.getElementById('categorydescription');

	// Check each input in the order that it appears in the form!
	
				if (notEmpty(categoryname, "Country Name Should not be empty")) {
						if (isAlphabet(categoryname,
								"Please enter only letters for Country Name")) {
							if (notEmpty(categorydescription,"Country Description Should not be empty")){
							         if (isAlphabet(categorydescription,
							        "Please enter only letters for Country Description")) {

															return true;
														}
													}
												}
											}
								

	
	return false;
}

function notEmpty(elem, helperMsg) {
	if (elem.value.length == 0) {
		alert(helperMsg);
		elem.focus(); // set the focus to this input
		return false;
	}
	return true;
}
function isAlphabet(elem, helperMsg) {
	var alphaExp = /^[a-z A-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}

</script>
<br> <br> <br>
<br> <br> <br>
    <div class="col-sm-offset-5">
<label id="txt2">Add a new Country . . .</label></div>

<form class="form-horizontal" action="addCountry" method="post" onsubmit="return formCategory()" enctype="multipart/form-data">
  <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="email">Country :</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" name="categoryName" id="categoryname" placeholder="Enter Country name" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="pwd">Description :</label>
    <div class="col-sm-3"> 
      <input type="text" class="form-control" name="categoryDescription" id="categorydescription" placeholder="Enter description" required>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-5 col-sm-3">
      <button type="submit" class="btn btn-dark" id="subbutton">Submit</button>
    </div>
  </div>
</form>
<br> <br> <br>
<br> <br> <br>
<br> <br> <br>
<br> <br> <br>
</body>
</html>