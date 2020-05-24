﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Pages_Home" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shivendra Chauhan</title>
    <link rel="icon" type="image/png" href="../Images/favicon.ico"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.4.7/webfont.js" type="text/javascript"></script>
    <script type="text/javascript" src="../Scripts/JQuery/jquery-1.10.2.min.js"></script>
    <script src="../Scripts/JQUI/jquery-ui.min.js"></script>
    <script src="../Scripts/BootStrap/js/bootstrap.min.js"></script>
    <link href="../Styles/GlobalCSS.css" rel="stylesheet" />
    <link href="../Scripts/BootStrap/css/bootstrap.css" rel="stylesheet" />
    <link href="../Scripts/JQUI/jquery-ui.min.css" rel="stylesheet" />
    <link href="../Scripts/BootStrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="../Scripts/BootStrap/css/demo.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela:400%7CMuli:200,200italic,300,300italic,regular,italic,600,600italic,700,700italic,800,800italic,900,900italic%7CLora:regular,italic,700,700italic" />
    <style type="text/css">
        html, body {
            margin: 0 !important;
        }

        .Hometabs li a {
            color: #337ab7 !important;
        }

            .Hometabs li a:hover {
                color: #d32f2f !important;
            }

        .navbar-default {
            margin: 0 !important;
            background-color: #ffffff !important;
            vertical-align: middle;
            border: 0px !important;
        }

        .navbar-nav > li > a {
            padding-top: 20px;
        }

            .navbar-nav > li > a .active {
                background: #ffffff;
            }
        .col-md-4 {
            padding:0px;
           overflow-y:hidden;
        }
        .row {
            width:100%;
            margin-left:0px;
            margin-right:0px;
        }
        .slide-work-items {
            animation-name:slide-work-items;
            animation-duration:2s;
            animation-timing-function:ease-in-out;
        }
        @keyframes slide-work-items {
            0% {
                opacity: 0;
                transform: translateY(70%);
            }
            100% {
                opacity: 1;
                transform: translateY(0%);
            }
        }
    </style>
    <script>
        $(document).ready(function () {
            $('.brand-image').click(function () {
                $('.modal').css('display', 'block');
            });

            $('.close-overlay').click(function () {
                $('.modal').css('display', 'none');
            });

            //animation
            //$(window).scroll(function () {
            $(".polaroid").each(function () {
                var pos = $(this).offset().top;

                var winTop = $(window).scrollTop();
                //if (pos < winTop + 200) {
                $(this).addClass("slide-work-items");
                //}
            });
            //});
        });
    </script>

</head>

<body>


    <form id="form1" runat="server">

        <div data-collapse="none" data-animation="over-right" data-duration="400" data-doc-height="1" id="nav-bar-top" class="navigation-bar dark w-nav bg-gradient-silver">
            <div class="navigation-bar-container w-container">
                <a class="brand-link left-spacing w-nav-brand w--current">
                    <img src="../Images/lgo.jpg" class="brand-image" alt="Brand-Pic Coming soon" />
                </a>
            </div>
            <div style="float: right;">
                <nav class="navigation-menu w-nav-menu" role="navigation">
                    <a href="../Pages/Home.aspx" class="navigation-link w-nav-link w--current" style="max-height: 728px; text-decoration: none; padding: 10px;">Home</a>
                    <a href="../Pages/HireMe.aspx" class="navigation-link w-nav-link" style="max-height: 728px; text-decoration: none; padding: 10px;">Hire Me</a>
                </nav>
            </div>
            <div class="w-nav-overlay"></div>
        </div>

        <div class="bg-gradient-purple hero-section">
            <div class="hero-container w-container body-margin up-to-down-animation" style="margin-right:0px;">
                <h1 class="hero-heading">Shivendra Chauhan</h1>
                <h2 class="hero-sub-heading" style="letter-spacing: 3px;">WEB DEVELOPER</h2>
                <div class="hero-social-links">
                    <a href="https://www.linkedin.com/in/chauhanshivendra/" class="w-inline-block" target="_blank">
                        <img class="social-icon" src="../Images/lin.svg" alt="LinkedIn" /></a>
                    <a href="https://www.twitter.com/I_m_Shiven" class="w-inline-block" target="_blank">
                        <img class="social-icon" src="../Images/twi.svg" alt="twitter" /></a>
                    <a href="https://www.instagram.com/shiven_chauhan/" class="w-inline-block" target="_blank">
                        <img class="social-icon" src="../Images/instagram-logo.svg" alt="Instagram" /></a>
                    <a href="https://www.medium.com/@ShivendraChauhan" class="w-inline-block" target="_blank">
                        <img class="social-icon" src="../Images/medium.svg" alt="Medium" /></a>
                    <a href="https://www.github.com/ImShiven" class="w-inline-block" target="_blank">
                        <img class="social-icon" src="../Images/git.svg" alt="GitHub" /></a>
                </div>
                <div>
                    <a href="../Pages/About.aspx" class="button-primary w-button" style="text-decoration: none; color: #ffffff;">About Me</a>
                    <a href="#div-work-items" class="button-secondary w-button" style="text-decoration: none; color: #ee7600; text-align: center;">My Work <span class="triangle-down"></span></a>
                </div>
            </div>
        </div>
        <div id="div-work-items" style="padding-top:20px;background: linear-gradient(to top, rgba(255,255,255,0.95) 0%, rgba(255,255,255,0.96) 17%, rgba(236,232,247,0.98) 65%, rgba(225,221,243,0.99) 79%, rgba(214,213,241,0.99) 88%, rgba(214,213,241,1) 100%);">
            
             <span class="section-separator work-container"></span>
            <div class="work-container"> 
                <div class="row">
                    <div class="col-md-4">
                        <div class="polaroid">
                       <div class="polaroid-items">
                           <a style="text-decoration:none;color: #ABAAAA;" href="../HTMLPages/Predicta.html" target="_blank">
                        <img src="../AppTourImages/PredictaHome.png" title="Predicta" class="work-pointer-images" /></a>
                        <div class="desc">
                            <div class="about-section-header" >Predicta</div> 
                            <p class="work-item-para">A platform which is developed for team engagement purpose and based on game of Cricket. Participants are required to predict various stages 
                            in a game of cricket and rewarded with points for their correct predictions.</p>
                        </div>
                        <p class="read-more-text">
                             <a style="text-decoration:none;color: #ABAAAA;" href="../HTMLPages/Predicta.html" target="_blank">
                                View More 
                                <span class="glyphicon glyphicon-menu-right"></span></a>
                            </p>
                                </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="polaroid">
                            <div class="polaroid-items">
                                <a style="text-decoration:none;color: #ABAAAA;" href="../HTMLPages/ForecastingAlgorithm.html" target="_blank">
                        <img src="../Images/Abalone.jpg"class="work-pointer-images" /></a>
                          <div class="desc">
                            <div class="about-section-header" >MACHINE LEARNING</div> 
                            <p class="work-item-para"> Here, we get an idea how supervised learning can be implemented to produce useful results.
                                Training data consists of pairs of input objects and corresponding output value.To understand the supervised learning, 
                                We will use linear regression algorithm to predict age of Abalone(marine snail) based on its physical measurements.</p>
                             </div>
                                <p class="read-more-text">
                                       <a style="text-decoration:none;color: #ABAAAA;" href="../HTMLPages/ForecastingAlgorithm.html" target="_blank">
                                View More 
                                <span class="glyphicon glyphicon-menu-right"></span></a>
                            </p>
                       
                            </div> </div>
                    </div>
                    <div class="col-md-4">
                        <div class="polaroid">
                             <div class="polaroid-items">
                                  <a style="text-decoration:none;color: #ABAAAA;" href="../HTMLPages/LogsViewer.html" target="_blank">
                        <img src="../AppTourImages/logHome1.png"class="work-pointer-images"/></a>
                                                <div class="desc">
                            <div class="about-section-header" >LOG READER</div> 
                            <p class="work-item-para">Error Log Reader parses all the exceptions from the chosen log file and represent 
           them in a well decorated form in the order of most recent error to older ones. Thus that, errors are well readable and 
           makes application tracking/monitoring easy as well.</p>
                            </div>
                                 <p class="read-more-text">
                                     <a style="text-decoration:none;color: #ABAAAA;" href="../HTMLPages/LogsViewer.html" target="_blank">
                                View More 
                                <span class="glyphicon glyphicon-menu-right"></span></a>
                            </p>
                        
                       </div> </div>
                    </div>
                </div>
              
                <div class="row">
                    <div class="col-md-4">
                        <div class="polaroid">
                            <div class="polaroid-items">
                       <a style="text-decoration:none;" href="../HTMLPages/AppWalkthrough.html" target="_blank">
                                <img src="../AppTourImages/thumbnail.JPG" class="work-pointer-images" /></a>
                                                <div class="desc">
                            <div class="about-section-header" >APP WALKTHROUGH</div> 
                            <p class="work-item-para">This image-carousel based module could replace "Help-PPTs" & manual walkthrough which are generally used to make users aware of various
            functionalities in the application. As many images as one want, can be added for each functionality.</p>
                            </div>
                                <p class="read-more-text">
                                     <a style="text-decoration:none;color: #ABAAAA;" href="../HTMLPages/AppWalkthrough.html" target="_blank">
                                View More 
                                <span class="glyphicon glyphicon-menu-right"></span></a>
                            </p>
                        
                            </div></div>
                    </div>
                    <div class="col-md-4">
                        <div class="polaroid">
                              <div class="polaroid-items">
                                  <a style="text-decoration:none;" href="../HTMLPages/ElectronicsDesign.html" target="_blank">
                        <img src="../Images/ed.jpg"class="work-pointer-images" /></a>
                                               <div class="desc">
                            <div class="about-section-header" >Electronic Design</div> 
                            <p class="work-item-para">A platform which is developed for team engagement purpose and based on game of Cricket. Participants are required to predict various stages 
                            in a game of cricket and rewarded with points in case of correct predictions.
  
                            </p>
                            </div>
                                  <p class="read-more-text">
                                       <a style="text-decoration:none;color: #ABAAAA;" href="../HTMLPages/ElectronicsDesign.html" target="_blank">
                                View More 
                                <span class="glyphicon glyphicon-menu-right"></span></a>
                            </p>
                        
                         </div>   </div>
                    </div>
                    <div class="col-md-4">
                        <div class="polaroid">
                            <div class="polaroid-items">
                                <a style="text-decoration:none;color: #ABAAAA;" href="https://medium.com/@ShivendraChauhan/data-science-where-the-future-lies-4bbcd4f7a710" target="_blank">
                        <img src="../Images/wi_ds_479.jpeg"class="work-pointer-images"/></a>
                       <div class="desc">
                            <div class="about-section-header" >DATA SCIENCE: WHERE THE FUTURE LIES</div> 
                            <p class="work-item-para">Why everyone today is talking about data? Data didn't become <b>"BIG"</b> suddenly, Data was always <b>"BIG"</b>.
                               As a developer, what skills do we need to produce useful results from existing data and what is the right approach
                                to solve the problem , are some of important questions those we must be aware of.
                            </p>
                        </div>
                       
                            <p class="read-more-text">
                                <a style="text-decoration:none;color: #ABAAAA;" href="https://medium.com/@ShivendraChauhan/data-science-where-the-future-lies-4bbcd4f7a710" target="_blank">
                                Read More on Medium 
                                <span class="glyphicon glyphicon-menu-right"></span>
                                    </a>
                       </p> </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="footer">
                <div class="footer-social-links up-to-down-animation">
                    <a href="https://www.linkedin.com/in/chauhanshivendra/" class="w-inline-block" target="_blank">
                        <img class="social-icon" src="../Images/lin.svg" alt="LinkedIn" /></a>
                    <a href="https://www.twitter.com/I_m_Shiven" class="w-inline-block" target="_blank">
                        <img class="social-icon" src="../Images/twi.svg" alt="twitter" /></a>
                    <a href="https://www.instagram.com/shiven_chauhan/" class="w-inline-block" target="_blank">
                        <img class="social-icon" src="../Images/instagram-logo.svg" alt="Instagram" /></a>
                    <a href="https://www.medium.com/@ShivendraChauhan" class="w-inline-block" target="_blank">
                        <img class="social-icon" src="../Images/medium.svg" alt="Medium" /></a>
                    <a href="https://www.github.com/ImShiven" class="w-inline-block" target="_blank">
                        <img class="social-icon" src="../Images/git.svg" alt="GitHub" /></a>
                </div>
                <div class="footer-copyright up-to-down-animation">Copyright © 2020-21 Shivendra Chauhan</div>
            </div>
        </div>
        <div class="modal">
            <span class="close-overlay">x</span>
            <div class="modal-veiw">
                <img src="../Images/MyImg.jpg" alt="myImg" class="brand-img-overlay" />
            </div>
        </div>
    </form>
</body>
</html>