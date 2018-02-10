<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Sell My Car</title>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <!-- for adding multiple images START -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="http://www.expertphp.in/js/jquery.form.js"></script>
  <!-- for adding multiple images END -->
  
  <!-- for adding drop down box  START -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- for adding drop down box  END -->
  
  <!-- for adding toggle START -->
  <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
  <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
  <!-- for adding toggle  END -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="style.css" rel="stylesheet">
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
function preview_images() 
{
 var total_file=document.getElementById("images").files.length;
 for(var i=0;i<total_file;i++)
 {
  $('#image_preview').append("<div class='col-md-3'><img class='img-responsive' src='"+URL.createObjectURL(event.target.files[i])+"'></div>");
 }
}
</script>
  
      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url(https://fonts.googleapis.com/css?family=Exo:100,200,400);
@import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

body{
	margin: 0;
	padding: 0;
	background: #fff;

	color: #fff;
	font-family: Arial;
	font-size: 12px;
}

.body{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-image: url(file:///D:/eclipse_project/Frontend/src/main/webapp/WEB-INF/resources/img/6780293-classic-car-interior-wallpapernew.jpg);
	background-size: cover;
	-webkit-filter: blur(50px);
    filter: blur(5px);
}

.grad{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */
	z-index: 1;
	opacity: 0.7;
}

.header{
	position: absolute;
	top: calc(50% - 35px);
	left: calc(25% - 255px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: Stencil Std, fantasy;
	font-size: 20px;
	font-weight: 700;
}

.header div span{
	color: #f4511e !important;
}

.sellmycar{
	position: absolute;
	top: calc(30% - 75px);
	left: calc(30% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}
.sellmycar2{
	position: absolute;
	top: calc(30% - 75px);
	left: calc(55% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}


.sellmycar input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.sellmycar input[type=password]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.sellmycar input[type=button]{
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.sellmycar input[type=button]:hover{
	opacity: 0.8;
}

.sellmycar input[type=button]:active{
	opacity: 0.6;
}

.sellmycar input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.sellmycar input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.sellmycar input[type=button]:focus{
	outline: none;
}

.sellmycar2 input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.sellmycar2 input[type=password]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.sellmycar2 input[type=button]{
	width: 260px;
	height: 35px;
	background: #f4511e;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 500;
	padding: 6px;
	margin-top: 10px;
}

.sellmycar2 input[type=button]:hover{
	opacity: 0.8;
}

.sellmycar2 input[type=button]:active{
	opacity: 0.6;
}

.sellmycar2 input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.sellmycar2 input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.sellmycar2 input[type=button]:focus{
	outline: none;
}


::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}
    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">RKS</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.jsp"><span
									class="glyphicon glyphicon-menu-left"></span>Home</a></li>
        
														<li id="right"><a href="index.jsp"><span
									class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
						</ul>
       
    </div>
  </div>
</nav>
 
  <div class="body"></div>
		<div class="grad"></div>
		<div class="header">
			<div>Post Your <span> AD </span>here!<br></div>
		</div>
		<br><br>
		
		
		<div class="sellmycar">
				
				<label><br>Upload Your Car Photos: <br><input type="file" id="images" name="images[]" onchange="preview_images();" multiple/><br>
  Manufacturer Name: <br>	
                                           
  <div class="dropdown">
    <button class="btn btn-danger dropdown-toggle dropdown-toggle-split" type="button" data-toggle="dropdown">Select Manufacturer
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">Audi</a></li>
      <li><a href="#">BMW</a></li>
      <li><a href="#">Bugatti</a></li>
      <li><a href="#">Bently Motors</a></li>
      <li><a href="#">Ferrari</a></li>
      <li><a href="#">Porsche</a></li>
      <li><a href="#">Lamborghini</a></li>
      <li><a href="#">Mercedes-Benz</a></li>
      <li><a href="#">Jaguar</a></li>
      <li><a href="#">Volkswagen</a></li>
      <li><a href="#">Rolls-Royce</a></li>
      <li><a href="#">Honda</a></li>
      </ul>
  </div><br>
  Car Model: <br><input type="text" placeholder="Gran Turismo *" required="required" name="carmodel"></label><br><br>
  Car Registration Country: <br>
  <div class="dropdown">
    <button class="btn btn-info dropdown-toggle dropdown-toggle-split" type="button" data-toggle="dropdown">Select Country
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#">India</a></li>
      <li><a href="#">Australia</a></li>
      <li><a href="#">New Zealand</a></li>
      <li><a href="#">USA</a></li>
      <li><a href="#">Canada</a></li>
      <li><a href="#">Japan</a></li>
      <li><a href="#">UK</a></li>
      
      </ul>
  </div><br>
  Car Registration State: <br><input type="text" placeholder="Victoria *" required="required" name="carstate"><br><br>
  Car Registration Number: <br><input type="text" placeholder="TN 38 BU 3768 *" required="required" name="carnumber"><br><br>


</div>
			<div class="sellmycar2">
            <label>Age of the car: <br><input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
             Less than 1 year<br>
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option2">
            1-3 years<br>
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option3">
            3-6 years<br>
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option4">
            7-10 years<br>
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option3">
            Greater than 10 years<br>
            </label><br><br>
            
            Is your car Accident free? * 
            <input type="checkbox" required="required" checked data-toggle="toggle" data-on="Yes" data-off="No" data-onstyle="success" data-offstyle="danger" data-height="10" data-width="100">

         
            <br><br>
				<label>Selling Price: <br><input type="text" placeholder="$27,000 *" required="required" name="price"></label><br><br>
				<label for="comment">Additional description about your Car:</label>
  <textarea class="form-control" rows="5" id="comment"></textarea>
				
				<input type="button" value="Sell My Car Now!"></div></div>
				
		
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

 

</body>

</html>
