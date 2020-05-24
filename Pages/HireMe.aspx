﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HireMe.aspx.cs" Inherits="Pages_HireMe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hire Me</title>
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
        .form-control {
            width:60%;
        }
    </style>
</head>
<body>
    <script>
        $(document).ready(function () {

            $('.brand-image').click(function () {
                $('.modal').css('display', 'block');
            });

            $('.close-overlay').click(function () {
                $('.modal').css('display', 'none');
            });

            $('#btnSubmit').click(function () {
                var name = $('#txtName').val();
                var email = $('#txtEmail').val();
                var Desc = $('#txtDesc').val();
                var area = $('#ddlRequirement').val();
                if (name == '') {
                    $('#txtName').css("border", "1px solid red");
                    $('#txtEmail').css("border", "1px solid #ccc");
                    $('#ddlRequirement').css("border", "1px solid #ccc");
                    $('#txtDesc').css("border", "1px solid #ccc");
                    alert('Please enter your name !!');
                    return false;
                }
                if (email == '') {
                    $('#txtName').css("border", "1px solid #ccc");
                    $('#txtEmail').css("border", "1px solid red");
                    $('#ddlRequirement').css("border", "1px solid #ccc");
                    $('#txtDesc').css("border", "1px solid #ccc");
                    alert('Please enter your email !!');
                    return false;
                }

                if (area == 'select') {
                    $('#txtName').css("border", "1px solid #ccc");
                    $('#txtEmail').css("border", "1px solid #ccc");
                    $('#ddlRequirement').css("border", "1px solid red");
                    $('#txtDesc').css("border", "1px solid #ccc");
                    alert('Please select requirement areas !!');
                    return false;
                }

                if (Desc == '') {
                    $('#txtName').css("border", "1px solid #ccc");
                    $('#txtEmail').css("border", "1px solid #ccc");
                    $('#ddlRequirement').css("border", "1px solid #ccc");
                    $('#txtDesc').css("border", "1px solid red");
                    alert('Please describe your requirement or query !!');
                    return false;
                }
                // save contact details through ajax call
                $.ajax({
                    url: '<%=ResolveUrl("../Pages/About.aspx/SaveContactDetails") %>',
                        data: "{ 'strName': '" + name + "', 'strEmail': '" + email + "','strArea': '" + area + "','strComments': '" + Desc + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            $('#txtName').val('');
                            $('#txtEmail').val('');
                            $('#txtDesc').val('');
                            $('#ddlRequirement').val('select');
                            alert("Thankyou !! \n We will talk soon!! :)");
                        },
                        error: function (response) {
                            alert("Thankyou !! \nHave a great day :)");
                        },
                        failure: function (response) {
                            alert("Thankyou !! \nHave a great day :)");
                        }
                    });
                return false;
            });
        });
    </script>
    <form id="form1" runat="server">
        <div data-collapse="none" data-animation="over-right" data-duration="400" data-doc-height="1" id="nav-bar-top" class="navigation-bar dark w-nav">
            <div class="navigation-bar-container w-container">
                <a class="brand-link left-spacing w-nav-brand w--current">
                    <img src="../Images/lgo.jpg" class="brand-image" alt="Brand-Pic Coming soon" />
                </a>
            </div>
            <div style="float: right;">
                <nav class="navigation-menu w-nav-menu" role="navigation">
                    <a href="../Pages/Home.aspx" class="navigation-link w-nav-link" style="max-height: 728px; text-decoration: none; padding: 10px;">Home</a>
                    <%--                <a href="About.aspx" class="navigation-link w-nav-link" style="max-height: 728px; text-decoration: none; padding: 10px;">About</a>--%>
                    <a href="../Pages/HireMe.aspx" class="navigation-link w-nav-link w--current" style="max-height: 728px; text-decoration: none; padding: 10px;">Hire Me</a>
                </nav>
            </div>
            <div class="w-nav-overlay"></div>
        </div>
           
     
            <div class="grey-container" style="background: linear-gradient(to bottom, rgba(255,255,255,1) 0%, rgba(255,255,255,1) 12%, rgba(252,236,252,1) 70%, rgba(255,255,255,1) 100%);">
                <div class="about-hero-section body-margin-Header" style="padding-bottom:0px;">
            <h2 class="about-section-header" style="text-align: left;">Thanks for taking interest in my skills</h2>
            
            <div class="about-hero-description" style="letter-spacing: 1px;">
                Unfortunately I am not currently looking for full time or consistent freelancing work, 
                though I am open to <b>Database services , IT Training and Web Development </b>opportunities
                    for your organization or school or college or any other small/medium scale business.
            </div>

            <div class="about-container w-container">
                <h2 class="about-section-header" style="text-align: left;">MY RESUME</h2>
               
                    <div class="resume-image">
                        <a href="../Files/shivendra__resume_3.6yrs_dotNetDeveloper.pdf" target="_blank" class="toolbox-item-link w-inline-block">
                            <img class="toolbox-item-image" src="../Images/resume-logo.png" title="My Resume" />
                        </a>
                    </div>
           
            </div>
                     </div>
                </div>
      

        <div class="about-hero-section body-margin-Header form-padding">

            <h3 class="about-section-header" style="text-align: left;">Let's talk about your project - </h3>

            <div class="form-container">
                 <div class="form-heading-text"  style="position:relative;">
                    Kindly fill the below form to get in touch.
                     <div class="hidden-card">
                         <p style="padding:10px;">Alternatively, You can hit me up at - <br /><b>Sirf.Shivendra@gmail.com</b></p>
                     </div>
                </div>
                <div class="form-fields-spacing">
                    <div class="form-textbox">
                        <span class="form-field-label">NAME</span>
                        <input id="txtName" type="text" maxlength="50" value="" class="form-field-editable-single" placeholder="e.g. John Doe" />
                    </div>

                    <div class="form-textbox ">
                        <span class="form-field-label">EMAIL</span>
                        <input id="txtEmail" type="email" maxlength="50" class="form-field-editable-single" value="" placeholder="e.g. John@abc.com" />
                    </div>

                    <div class="form-textbox">
                        <span class="form-field-label">REQUIREMENT AREA</span>
                            <select id="ddlRequirement" name="Requirement" class="form-field-editable-single form-control" style="">
                                 <option value="select">--Select--</option>
                                 <option value="Web">Web Development</option>
                                 <option value="DB">DB Services</option>
                                 <option value="Training">Trainings</option>
                                 <option value="Other">Others</option>
                            </select>
                    </div>

                    <div class="form-textarea">
                        <span class="form-field-label">DESCRIPTION</span>
                        <textarea class="form-field-editable-single form-field-editable-multi" maxlength="255" id="txtDesc" placeholder="e.g. I want a website for my business.."></textarea>
                    </div>
                </div>
                <div style="width: 100%;">
                    <asp:Button ID="btnSubmit" runat="server" class="btn btnPost" Text="SUBMIT" Style="" />
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
            <div class="footer-copyright up-to-down-animation">Copyright © 2018 Shivendra Chauhan</div>
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