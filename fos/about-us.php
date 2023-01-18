<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');


  ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="#">
    <title>The Foodie</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animsition.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"> </head>
<body>
     <div class="site-wrapper animsition" data-animsition-in="fade-in" data-animsition-out="fade-out">
         <!--header starts-->
         <header id="header" class="header-scroll top-header headrom">
            <!-- .navbar -->
            <?php include('includes/header.php');?>
            <!-- /.navbar -->

         </header>
         <div class="page-wrapper">
            <div class="breadcrumb">
               <div class="container">
                  <ul>
                     <li><a href="index.php" class="active">Home</a></li>
                     <li><a href="#">About Us</a></li>
                  </ul>
               </div>
            </div>
            <section class="contact-page inner-page">
               <div class="container">
                  <div class="row">
                     <!-- REGISTER -->
                     <div class="col-md-8">
                        <div class="widget">
                           <div class="widget-body">
                                 <div class="row">
                                 <p style="font-size:16px;" align="center"> 
                                    <b>Our team</b><br>
                                    This idea of food delivery app was introduced by our CEO mr. abc. It is defficult to go out and find a good restaurant to have food, so we have introduced a application where you can find delicious as well as healthy food. We ensure you that you will never regreat to buy food from our application. Here you can find the  Who has given his 15 years to this company. 
                                    As a contrast to more elaborate designs we’ll see later in this list, Philly Reps is another agency that takes a cleaner, more minimal approach to its team page. Members are presented in grayscale images that take up the majority of screen space for a nice consistent look and feel.
                                    Below images are brief descriptions of each member. Notice how Philly Reps has made each description roughly the same length to maintain balance and alignment between grid elements. Most won’t notice this detail, but it results in a page with maximum readability. 
                                    Since most employee bios read a lot like a list of stats ("10 years in the industry ... 4 years at the company ... Managed 80 website redesign projects ... ") the folks at Digital Marmalade decided to have a little fun with the format.
                                    Each employee at the London-based marketing agency has a trading card-style profile detailing their actual marketing accomplishments and personal facts, as well as their fictional superhero abilities. It's a quirky twist that gives visitors a colorful snapshot of the agency's team, highlighting both their impressive experience and friendly culture.
                                    CloudHorizon is a mobile product development company. On its about page, it says, "Some of the more rewarding projects we have had the honour to be involved in, started with simple ideas and grew profitable businesses from the ground up."
                                    With this in mind, CloudHorizon’s “Meet our team” section is a great way to illustrate that idea. When you hover over an image of a team member, their thumbnail flips to reveal a photo from their childhood with a small caption of what they wanted to be when they grew up.
                                    Since most employee bios read a lot like a list of stats ("10 years in the industry ... 4 years at the company ... Managed 80 website redesign projects ... ") the folks at Digital Marmalade decided to have a little fun with the format.
                                    Each employee at the London-based marketing agency has a trading card-style profile detailing their actual marketing accomplishments and personal facts, as well as their fictional superhero abilities. It's a quirky twist that gives visitors a colorful snapshot of the agency's team, highlighting both their impressive experience and friendly culture.
                                </p>
                                   
                                 </div>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-4">
                            <h4>Our Team</h4>
                            <img src="images/ourTeam.jpg"
                            width="400" 
                            height="500" />
                        </div>
                  </div>
                  </div>
               </div>
            </section>
           <?php include('includes/footer.php');?>
         </div>
      </div>    
    <script src="js/jquery.min.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/animsition.min.js"></script>
    <script src="js/bootstrap-slider.min.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/headroom.js"></script>
    <script src="js/foodpicky.min.js"></script>
</body>

</html>