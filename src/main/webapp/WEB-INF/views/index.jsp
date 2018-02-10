<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>RKS Preowned Cars</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="resources/engine1/style.css" />
<script type="text/javascript" src="resources/engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
 <style>
  body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }
  h1 {
  	  font-size: 24px;
      text-transform: uppercase;
      color: #f4511e;
      font-size: 35px;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h2 {
      font-size: 24px;
      color: #000000;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  }  
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
  .logo {
      color: #f4511e;
      font-size: 200px;
  }
  .logo-tiny {
  color: #000000;
      font-size: 10px;
  
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail img {
      width: 100%;
      height: 100%;
      margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #f4511e;
  }
  .carousel-indicators li {
      border-color: #f4511e;
  }
  .carousel-indicators li.active {
      background-color: #f4511e;
  }
  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
  .panel {
      border: 1px solid #f4511e; 
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #f4511e;
      background-color: #fff !important;
      color: #f4511e;
  }
  .panel-heading {
      color: #fff !important;
      background-color: #ffffff!important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: white !important;
  }
  .panel-footer h3 {
      font-size: 32px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 14px;
  }
  .panel-footer .btn {
      margin: 15px 0;
      background-color: #f4511e;
      color: #fff;
  }
  .navbar {
      margin-bottom: 0;
      background-color: #f4511e;
      z-index: 9999;
      border: 0;
      font-size: 12px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #ffffff!important;
      font-weight: 500;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #f4511e !important;
      background-color: #ffffff!important;
  }
  #dropdown{
  color: #ffffff;
  background-color: #f4511e;
  
  }
  #dropdown:hover{
  background-color: #f4511e;
  color: #ffffff;
  
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
  }
  
  .car{

height:230px;
width:120px;


}

    </style>

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
        <li><a href="#about">ABOUT</a></li>
        <c:url value="/Country" var="Country"></c:url>
       <li class="dropdown">
       <security:authorize access="hasRole('ROLE_ADMIN')">
       
        <a class="dropdown-toggle" data-toggle="dropdown" href="Country">COUNTRY
        <span class="caret"></span></a>
       
       <ul class="dropdown-menu" id="dropdown">
							<li><a href="viewCountry">View Country</a></li>
							<li id="right"><a href="Country">Add Country</a></li>
						</ul>
						
						<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Seller">SELLER
        <span class="caret"></span></a>
       
       <ul class="dropdown-menu" id="dropdown">
							<li><a href="viewSeller">View Sellers</a></li>
							<li id="right"><a href="Seller">Add Seller</a></li>
						</ul>
						<li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="Cars">CARS
        <span class="caret"></span></a>
       
       <ul class="dropdown-menu" id="dropdown">
							<li><a href="viewCar">View Cars</a></li>
							<li id="right"><a href="Car">Add Car</a>   </li>
						</ul>
						   </security:authorize>
        
        <li><a href="#services">SERVICES</a></li>
        <li><a href="#contact">CONTACT</a></li>
     
        
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span
									class="glyphicon glyphicon-user"></span>USER
        <span class="caret"></span></a>
       
       <ul class="dropdown-menu" id="dropdown">
       						<c:url value="/signup" var="signup"></c:url>
							<li><a href="${signup}"><span
									class="glyphicon glyphicon-user"></span>Sign Up</a></li>
									<c:url value="/login" var="login"></c:url>
							<li id="right"><a href="${login}"><span
									class="glyphicon glyphicon-log-in"></span>Log In</a></li>
						</ul>
						
						<c:if test="${pageContext.request.userPrincipal.name!=null }">
 									<li id="right"><security:authorize access="hasRole('ROLE_USER')">
 					<li><a href="#">Hi ${pageContext.request.userPrincipal.name}!!</a></li>
 					</security:authorize></li>
 											
 							<c:url value="/logout" var="logout"></c:url>
 							<li id="right"><a href="${logout}"><span
 									class="glyphicon glyphicon-log-out"></span> Logout</a></li>
 									</c:if>
						
        <!-- <ul class="dropdown-menu" id="dropdown"><span class="glyphicon glyphicon-globe logo-tiny slideanim"> 
          <li><a href="#" id="dropdown"><span class="glyphicon glyphicon-user"></span>LOG IN</a></li>
          <li><a href="#" id="dropdown">SIGN UP</a></li> -->
        </ul>
    </div>
  </div>
</nav>
<!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="resources/data1/images/lamborghini_aventador_lp700_4_front_view_96388_1280x720.jpg" alt="Lamborghini Aventador @ $28,000" title="Lamborghini Aventador @ $28,000" id="wows1_0"/></li>
		<li><img src="resources/data1/images/2018_lamborghini_urus_4k1366x768.jpg" alt="Lamborghini Urus @ $22,000" title="Lamborghini Urus @ $22,000" id="wows1_1"/></li>
		<li><img src="resources/data1/images/volkswagen_golf_gti_white_front_view_99806_1280x720.jpg" alt="Volkswagen Golf Gti @ $5500" title="Volkswagen Golf Gti @ $5500" id="wows1_2"/></li>
		<li><img src="resources/data1/images/911_carrera_porsche_black_side_view_96505_1280x720.jpg" alt="Porsche Carrera @ $24,000" title="Porsche Carrera @ $24,000" id="wows1_3"/></li>
		<li><img src="resources/data1/images/sports_car_red_rear_view_118633_1280x720.jpg" alt="Ferrari Sport @ $29,800" title="Ferrari Sport @ $29,800" id="wows1_4"/></li>
		<li><img src="resources/data1/images/porsche_911_turbo_997_black_front_sun_grass_reflections_94733_1280x720.jpg" alt="Porsche 911 turbo @ $24,000" title="Porsche 911 turbo @ $24,000" id="wows1_5"/></li>
		<li><img src="resources/data1/images/lamborghini_aventador_lp700_4_front_view_96388_1280x720.jpg" alt="css slider" title="Lamborghini Aventador @ $26,000" id="wows1_6"/></a></li>
		<li><img src="resources/data1/images/honda_civic_concept_green_2015_101820_1280x720.jpg" alt="Honda Civic @ $3,000" title="Honda Civic @ $3,000" id="wows1_7"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="Lamborghini Aventador @ $28,000"><span><img src="resources/data1/tooltips/lamborghini_aventador_lp_750_4_sv_108049_1280x720.jpg" alt="Lamborghini Aventador @ $28,000"/>1</span></a>
		<a href="#" title="Lamborghini Urus @ $22,000"><span><img src="resources/data1/tooltips/2018_lamborghini_urus_4k1366x768.jpg" alt="Lamborghini Urus @ $22,000"/>2</span></a>
		<a href="#" title="Volkswagen Golf Gti @ $5500"><span><img src="resources/data1/tooltips/volkswagen_golf_gti_white_front_view_99806_1280x720.jpg" alt="Volkswagen Golf Gti @ $5500"/>3</span></a>
		<a href="#" title="Porsche Carrera @ $24,000"><span><img src="resources/data1/tooltips/911_carrera_porsche_black_side_view_96505_1280x720.jpg" alt="Porsche Carrera @ $24,000"/>4</span></a>
		<a href="#" title="Ferrari Sport @ $29,800"><span><img src="resources/data1/tooltips/sports_car_red_rear_view_118633_1280x720.jpg" alt="Ferrari Sport @ $29,800"/>5</span></a>
		<a href="#" title="Porsche 911 turbo @ $24,000"><span><img src="resources/data1/tooltips/porsche_911_turbo_997_black_front_sun_grass_reflections_94733_1280x720.jpg" alt="Porsche 911 turbo @ $24,000"/>6</span></a>
		<a href="#" title="Lamborghini Aventador @ $26,000"><span><img src="resources/data1/tooltips/lamborghini_aventador_lp700_4_front_view_96388_1280x720.jpg" alt="Lamborghini Aventador @ $26,000"/>7</span></a>
		<a href="#" title="Honda Ciivic @ $3,000"><span><img src="resources/data1/tooltips/honda_civic_concept_green_2015_101820_1280x720.jpg" alt="Honda Ciivic @ $3,000"/>8</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">jquery slider</a> by WOWSlider.com v8.8</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="resources/engine1/wowslider.js"></script>
<script type="text/javascript" src="resources/engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->	
<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
    <h1>RKS Pre-Owned Cars</h1>
      <h2>Trade Cars with Ease! </h2><br>
      <h4>RKS Pre-Owned Cars is all about you - Our aim is to empower every person in the country to independently connect with buyers and sellers online.  </h4><br>
      <p>Brainchild of Rakhul KS Groups, RKS Pre-Owned Cars is widely known as Worlds no. 1 online classifieds platform, there is a reason behind that. We care about you, and the transactions that bring you closer to your dreams. Want to buy your first car? We are here for you. Want to sell commercial property to buy a home for your family? We are here for you. Whatever job you have got, we promise to get it done.</p>
      <br>
      <p>Founded in 2017 and headquartered in Coimbatore, RKS Pre-Owned Cars has left a memorable footprint in over 10,000 cities. And we continue to work towards building the future of trading and e-commerce.</p>
      <br>
      <button class="btn btn-default btn-lg">Get in Touch</button>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h1>Our Values</h1><br>
      <h4><strong>MISSION: </strong> We are a business inspired by Vision, driven by Mission and underpinned by Values. We have put our Vision, Mission and Values here for you to see, along with what they mean to our candidates, clients and partners so that you can decide whether we are a company built of things which matter to you. Recruiting excellence for Emerging Markets through the most innovative recruitment solutions, underpinned by diversity, knowledge, credibility and long-term relationships.</h4><br>
      <p><strong>VISION: </strong> Leading the Talent Agenda in Emerging Markets as the partner of choice for employees and employers. We see our Values not only as the way we do business, but also the reason we do business and what makes our business strong.<br><br>As the key stakeholders in Global Career Company, our clients, candidates and partners join with our team in creating an environment for talent excellence. We call this the Global Talent Pool and we believe that our Values actively drive the creation and engagement of this pool. Partners, we will share and work towards objectives with you. Clients, we will bring you the strongest, most-engaged talent. Candidates, we will celebrate your diversity, build lasting relationships with you, represent you credibly as an agent and share our knowledge to develop your careers. This is the promise of our Values to you all.</p>
    </div>
  </div>
</div>

<!-- Container (Pricing Section) -->
<div id="pricing" class="container-fluid">
  <div class="text-center">
    <h2>Today's Top Deals</h2>
    <h4>Cars hand picked by our team for you</h4>
  </div>
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Mercedes Benz GLC</h1>
        </div>
          
        <div class="panel-body">
        <img class="img-responsive" src="file:///D:/eclipse_project/Frontend/src/main/webapp/WEB-INF/resources/img/mercedes%20benz%20-%20GLC.jpeg" alt="Chania" width="460" height="345"> 
        <br>
          <p><strong>Country: </strong>Australia</p>
          <p><strong>City: </strong> Melbourne</p>
          <p><strong>Age of the car: </strong> 2 years</p>
          <p><strong>Kilometers used: </strong> 30,000</p>
          <p><strong>Number of owners: </strong> 1</p>
        </div>
        <div class="panel-footer">
          <h3>$19,000</h3>
          <h4>Australian dollars</h4>
          <button class="btn btn-lg">View Deal</button>
        </div>
      </div>      
    </div>     
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Rolls Royce Ghost</h1>
        </div>
        <div class="panel-body">
        <img class="img-responsive" src="file:///D:/eclipse_project/Frontend/src/main/webapp/WEB-INF/resources/img/2017_rolls_royce_phantom_ewb_4k_2-1280x720.jpg" alt="Chania" width="460" height="345"> 
          <br>
          <p><strong>Country: </strong> Australia</p>
          <p><strong>City: </strong> Sydney</p>
          <p><strong>Age of the car: </strong> 3 years</p>
          <p><strong>Kilometers used: </strong> 45,000</p>
          <p><strong>Number of owners: </strong> 2</p>
        </div>
        <div class="panel-footer">
          <h3>$56,000</h3>
          <h4>Australian Dollars</h4>
          <button class="btn btn-lg">View Deal</button>
        </div>
      </div>      
    </div>       
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Audi A5</h1>
        </div>
        <div class="panel-body">
        <img class="img-responsive" src="file:///D:/eclipse_project/Frontend/src/main/webapp/WEB-INF/resources/img/2018-Audi-A5-S5-Sportback-101.jpg" alt="Chania" width="460" height="345"> 
          <br>
          <p><strong>Country: </strong> Australia</p>
          <p><strong>City: </strong> Brisbane</p>
          <p><strong>Age of the car: </strong> 2 years</p>
          <p><strong>Kilometers used: </strong> 15,000</p>
          <p><strong>Number of owners: </strong> 1</p>
        </div>
        <div class="panel-footer">
          <h3>$7,500</h3>
          <h4>Australian Dollars</h4>
          <button class="btn btn-lg">View Deal</button>
        </div>
      </div>      
    </div>    
  </div>
</div>

<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center">
  <h2>SERVICES</h2>
  <h4>What we offer</h4>
  <br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-phone-alt logo-small"></span>
      <h4>RKS ASSISTED BUYING</h4>
      <p>Get our 24x7 customer-support service..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-thumbs-up logo-small"></span>
      <h4>CAR INSURANCE</h4>
      <p>Get new or transfer your car insurance..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-usd logo-small"></span>
      <h4>CAR FINACING</h4>
      <p>We offer authorised bank loans with minimum interest..</p>
    </div>
  </div>
  <br><br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-duplicate logo-small"></span>
      <h4>RTO SERVICES</h4>
      <p>We offer all RTO services at resonable charges..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-road logo-small"></span>
      <h4>Featured Cars</h4>
      <p>We show-case all the featured cars.. </p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
      <h4 style="color:#303030;">CAR REPAIR</h4>
      <p>We offer customised repair services..</p>
    </div>
  </div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you in no time.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Coimbatore, India</p>
      <p><span class="glyphicon glyphicon-phone"></span> +91 9600666753</p>
      <p><span class="glyphicon glyphicon-envelope"></span> rakhul@live.com</p>
    </div>
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>© COPYRIGHTED All Rights Reserved <a href="https://www.rakhulksphotography.com" title="Visit rakhulksphotography.com">www.rakhulksphotography.com</a></p>
</footer>


<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

</body>
</html>
