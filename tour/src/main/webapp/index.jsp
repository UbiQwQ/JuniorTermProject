<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<!-- Head -->
<head>

    <title>Home</title>

    <!-- For-Mobile-Apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //For-Mobile-Apps -->

    <!-- Custom-Stylesheet-Links -->
    <!-- Bootstrap-CSS --> 		<link rel="stylesheet" href="statics/css/bootstrap.min.css" 	type="text/css" media="all">
    <!-- Index-Page-CSS --> 	<link rel="stylesheet" href="statics/css/style.css" 		type="text/css" media="all">
    <!-- Gallery-Popup-CSS --> 	<link rel="stylesheet" href="statics/css/chocolat.css"		type="text/css" media="all">
    <!-- //Custom-Stylesheet-Links -->

    <!-- Web-Fonts -->
    <!-- Body-Font -->	 <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' type='text/css'>
    <!-- Logo-Font -->	 <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Bree+Serif'		   type='text/css'>
    <!-- Link-Font -->	 <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Raleway:400,500,600'	   type='text/css'>
    <!-- //Web-Fonts -->

</head>
<!-- //Head -->

<!-- Body -->
<body>

<!-- Header -->
<div class="header" id="home">

    <!-- Navbar -->
    <nav class="navbar navbar-default">
        <div class="container-fluid">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">LvXing</a>
            </div>

            <div id="navbar" class="navbar-collapse navbar-right collapse hover-effect">
                <ul class="nav navbar-nav">
                    <li><a href="/destination">目的地</a></li>
                    <li><a href="/hotel">酒店</a></li>
                    <li><a href="#gallery">景点</a></li>
                    <li><a href="/food">美食</a></li>
                    <li><a href="/travels?page=1">游记</a></li>
                    <li><a href="#team">团队</a></li>
                    <li><a href="#contact">联系</a></li>
                    <c:if test="${empty sessionUser}">
                        <li><a href="/reg">signup</a></li>
                        <li><a href="/loginpage">signin</a></li>
                        <li><a href="/managerloginpage">Admin</a></li>
                    </c:if>
                    <c:if test="${not empty sessionUser}">
                        <li><a href="/personal">${sessionUser.userName}</a></li>
                        <li><a href="/logout">注销</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
    <!-- //Navbar -->

    <!-- Slider -->
    <div class="slider">
        <ul class="rslides" id="slider1">
            <li>
                <img src="statics/images/slide-1.jpg" alt="Asset">
                <div class="caption">
                    <h3>WELCOME TO <span>LvXing</span></h3>
                    <p>我们将提供旅游信息和服务预定</p>
                </div>
            </li>
            <li>
                <img src="statics/images/slide-2.jpg" alt="Asset">
                <div class="caption caption-none">
                    <h3>POSH SUBURBS</h3>
                </div>
            </li>
            <li>
                <img src="statics/images/slide-3.jpg" alt="Asset">
                <div class="caption">
                    <h3 class="color">HOME IS WHERE THE <span>LOVE</span> IS</h3>
                </div>
            </li>
            <li>
                <img src="statics/images/slide-4.jpg" alt="Asset">
                <div class="caption">
                    <h3>SOPHISTICATED HOUSES</h3>
                </div>
            </li>
            <li>
                <img src="statics/images/slide-5.jpg" alt="Asset">
                <div class="caption">
                    <h3>ELITE CUSTOMERS</h3>
                </div>
            </li>
        </ul>
    </div>
    <!-- //Slider -->

</div>
<!-- //Header -->

<!-- About -->
<div class="about" id="about">
    <div class="container">

        <h1>About</h1>
        <div class="about-p">
            <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit... There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...</p>
        </div>

        <div class="about-grids">
            <div class="col-md-5 col-sm-5 about-grid">
                <img src="statics/images/about.jpg" alt="Asset">
            </div>
            <div class="col-md-7 col-sm-7 about-grid">

                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title asd">
                                <a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Architecto Beatae Vitae <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body panel_text">
                                <div class="scrollbar" id="style-2">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title asd">
                                <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Dolore Magnam Aliquam <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="panel-body panel_text">
                                Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title asd">
                                <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Commodonset Dolore <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                            <div class="panel-body panel_text">
                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="clearfix"></div>
        </div>

    </div>
</div>
<!-- //About -->

<!-- Services -->
<div class="services" id="services">
    <div class="container">

        <h2>Services</h2>

        <div class="service-grid">
            <div class="col-md-3 col-sm-3 service service-1">
                <div class="services-item">
                    <div class="services-icon">
                        <img src="statics/images/service-1.png" alt="Asset">
                    </div>
                    <div class="services-info">
                        <h4>Commodonset</h4>
                        <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 service service-2">
                <div class="services-item">
                    <div class="services-icon">
                        <img src="statics/images/service-2.png" alt="Asset">
                    </div>
                    <div class="services-info">
                        <h4>Dolore Magna</h4>
                        <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 service service-3">
                <div class="services-item">
                    <div class="services-icon">
                        <img src="statics/images/service-3.png" alt="Asset">
                    </div>
                    <div class="services-info">
                        <h4>Exercitation</h4>
                        <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-3 service service-4">
                <div class="services-item">
                    <div class="services-icon">
                        <img src="statics/images/service-4.png" alt="Asset">
                    </div>
                    <div class="services-info">
                        <h4>Excepteur Sint</h4>
                        <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.</p>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
</div>
<!-- //Services -->

<!-- Gallery -->
<div class="gallery" id="gallery">

    <h3>Gallery</h3>

    <div class="gallery-items">
        <div class="gallery-item gallery-item-1">
            <a class="example-image-link" href="statics/images/g1-big.jpg" data-lightbox="example-set" data-title="">
                <div class="grid">
                    <figure class="effect-apollo">
                        <img src="statics/images/g1.jpg" alt="Asset"/>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </a>
        </div>
        <div class="gallery-item gallery-item-2">
            <a class="example-image-link" href="statics/images/g2-big.jpg" data-lightbox="example-set" data-title="">
                <div class="grid">
                    <figure class="effect-apollo">
                        <img src="statics/images/g2.jpg" alt="Asset"/>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </a>
        </div>
        <div class="gallery-item gallery-item-3">
            <a class="example-image-link" href="statics/images/g3-big.jpg" data-lightbox="example-set" data-title="">
                <div class="grid">
                    <figure class="effect-apollo">
                        <img src="statics/images/g3.jpg" alt="Asset"/>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </a>
        </div>
        <div class="gallery-item gallery-item-4">
            <a class="example-image-link" href="statics/images/g4-big.jpg" data-lightbox="example-set" data-title="">
                <div class="grid">
                    <figure class="effect-apollo">
                        <img src="statics/images/g4.jpg" alt="Asset"/>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </a>
        </div>
        <div class="gallery-item gallery-item-5">
            <a class="example-image-link" href="statics/images/g5-big.jpg" data-lightbox="example-set" data-title="">
                <div class="grid">
                    <figure class="effect-apollo">
                        <img src="statics/images/g5.jpg" alt="Asset"/>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </a>
        </div>
        <div class="gallery-item gallery-item-6">
            <a class="example-image-link" href="statics/images/g6-big.jpg" data-lightbox="example-set" data-title="">
                <div class="grid">
                    <figure class="effect-apollo">
                        <img src="statics/images/g6.jpg" alt="Asset"/>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </a>
        </div>
        <div class="gallery-item gallery-item-7">
            <a class="example-image-link" href="statics/images/g7-big.jpg" data-lightbox="example-set" data-title="">
                <div class="grid">
                    <figure class="effect-apollo">
                        <img src="statics/images/g7.jpg" alt="Asset"/>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </a>
        </div>
        <div class="gallery-item gallery-item-8">
            <a class="example-image-link" href="statics/images/g8-big.jpg" data-lightbox="example-set" data-title="">
                <div class="grid">
                    <figure class="effect-apollo">
                        <img src="statics/images/g8.jpg" alt="Asset"/>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </a>
        </div>
        <div class="gallery-item gallery-item-9">
            <a class="example-image-link" href="statics/images/g9-big.jpg" data-lightbox="example-set" data-title="">
                <div class="grid">
                    <figure class="effect-apollo">
                        <img src="statics/images/g9.jpg" alt="Asset"/>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </a>
        </div>
        <div class="gallery-item gallery-item-10">
            <a class="example-image-link" href="statics/images/g10-big.jpg" data-lightbox="example-set" data-title="">
                <div class="grid">
                    <figure class="effect-apollo">
                        <img src="statics/images/g10.jpg" alt="Asset"/>
                        <figcaption></figcaption>
                    </figure>
                </div>
            </a>
        </div>
        <div class="clearfix"></div>
    </div>

</div>
<!-- //Gallery -->

<!-- Plans -->
<div class="plans" id="plans">
    <div class="plans-info">

        <h3>Plans</h3>

        <div class="plans-grids">
            <div class="col-md-4 col-sm-4 plans-grid plans-grid-1">
                <figure class="effect-dexter">
                    <img src="statics/images/plans-1.jpg" alt="Asset"/>
                    <figcaption>
                        <h4><span>Basic </span> Plan</h4>
                        <div class="social-two">
                            <p>$500<small>/month</small></p>
                        </div>
                    </figcaption>
                </figure>
            </div>
            <div class="col-md-4 col-sm-4 plans-grid plans-grid-2">
                <figure class="effect-dexter">
                    <img src="statics/images/plans-2.jpg" alt="Asset"/>
                    <figcaption>
                        <h4><span>Medium </span> Plan</h4>
                        <div class="social-two">
                            <p>$750<small>/month</small></p>
                        </div>
                    </figcaption>
                </figure>
            </div>
            <div class="col-md-4 col-sm-4 plans-grid plans-grid-3">
                <figure class="effect-dexter">
                    <img src="statics/images/plans-3.jpg" alt="Asset"/>
                    <figcaption>
                        <h4><span>Premium </span> Plan</h4>
                        <div class="social-two">
                            <p>$1000<small>/month</small></p>
                        </div>
                    </figcaption>
                </figure>
            </div>
        </div>

    </div>
</div>
<!-- //Plans -->

<!-- FAQs -->
<div class="faq" id="faq">
    <div class="container">

        <h3>FAQs</h3>
        <p>Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>

        <div class="faq-grids">
            <div class="col-md-4 col-sm-4 faq-grid faq-grid-1">
                <div class="panel-group" id="accordion1" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFour">
                            <h4 class="panel-title asd">
                                <a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion1" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">Architecto Beatae Vitae <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFour">
                            <div class="panel-body panel_text">
                                <div class="scrollbar" id="style-2">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingFive">
                            <h4 class="panel-title asd">
                                <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion1" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Dolore Magna Aliuam <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                            <div class="panel-body panel_text">
                                Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingSix">
                            <h4 class="panel-title asd">
                                <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion1" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">Commodonset Dolore <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                            <div class="panel-body panel_text">
                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 faq-grid faq-grid-2">
                <div class="panel-group" id="accordion2" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title asd">
                                <a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseSeven" aria-expanded="true" aria-controls="collapseOne">Condimentum <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseSeven" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body panel_text">
                                <div class="scrollbar" id="style-2">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title asd">
                                <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseEight" aria-expanded="false" aria-controls="collapseTwo">Tacitisociosqu <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="panel-body panel_text">
                                Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title asd">
                                <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseNine" aria-expanded="false" aria-controls="collapseThree">Pellentesque <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseNine" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                            <div class="panel-body panel_text">
                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 faq-grid-3">
                <div class="panel-group" id="accordion3" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title asd">
                                <a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion3" href="#collapseTen" aria-expanded="true" aria-controls="collapseOne">Curabitur <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTen" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body panel_text">
                                <div class="scrollbar" id="style-2">
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingTwo">
                            <h4 class="panel-title asd">
                                <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion3" href="#collapseEleven" aria-expanded="false" aria-controls="collapseTwo">Phasellus <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseEleven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <div class="panel-body panel_text">
                                Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.
                            </div>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading" role="tab" id="headingThree">
                            <h4 class="panel-title asd">
                                <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion3" href="#collapseTwelve" aria-expanded="false" aria-controls="collapseThree">Ullamcorper <span class="glyphicon glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTwelve" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                            <div class="panel-body panel_text">
                                There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>
</div>
<!-- //FAQs -->
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
<!-- Testimonials -->
<div class="testimonial">
    <div class="container">

        <h3>Testimonials</h3>

        <!-- Slider -->
        <div class="slider">
            <ul class="rslides" id="slider2">
                <li>
                    <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain... If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary. It uses a dictionary of over 200 Latin words, making this the first true generator on the Internet." <span>—Lorem Ipsum Umi</span></p>
                </li>
                <li>
                    <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain... If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary. It uses a dictionary of over 200 Latin words, making this the first true generator on the Internet." <span>—Dolores Sitamet</span></p>
                </li>
                <li>
                    <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain... If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary. It uses a dictionary of over 200 Latin words, making this the first true generator on the Internet." <span>—Consectetur Eli</span></p>
                </li>
                <li>
                    <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain... If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary. It uses a dictionary of over 200 Latin words, making this the first true generator on the Internet." <span>—Adipiscing Elim</span></p>
                </li>
                <li>
                    <p>"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain... If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary. It uses a dictionary of over 200 Latin words, making this the first true generator on the Internet." <span>—Eiusmod Tempor</span></p>
                </li>
            </ul>
        </div>
        <!-- //Slider -->

    </div>
</div>
<!-- //Testimonials -->

<!-- Team -->
<div class="team" id="team">
    <div class="container">

        <h3>Team</h3>
        <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>

        <div class="team-grids">
            <div class="col-md-4 col-sm-4 view view-first view-1">
                <img src="statics/images/team-1.jpg" alt="Asset" />
                <div class="mask">
                    <h4>Richard Parker</h4>
                    <!-- Social-Icons -->
                    <div class="social">
                        <ul class="social-icons">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                            <li><a href="#" class="instagram" title="Go to Our Instagram Account"></a></li>
                        </ul>
                    </div>
                    <!-- //Social-Icons -->
                </div>
            </div>
            <div class="col-md-4 col-sm-4 view view-first view-2">
                <img src="statics/images/team-2.jpg" alt="Asset" />
                <div class="mask">
                    <h4>Marie Elise</h4>
                    <!-- Social-Icons -->
                    <div class="social">
                        <ul class="social-icons">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                            <li><a href="#" class="instagram" title="Go to Our Instagram Account"></a></li>
                        </ul>
                    </div>
                    <!-- //Social-Icons -->
                </div>
            </div>
            <div class="col-md-4 col-sm-4 view view-first view-3">
                <img src="statics/images/team-3.jpg" alt="Asset" />
                <div class="mask">
                    <h4>Sean Carter</h4>
                    <!-- Social-Icons -->
                    <div class="social">
                        <ul class="social-icons">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                            <li><a href="#" class="instagram" title="Go to Our Instagram Account"></a></li>
                        </ul>
                    </div>
                    <!-- //Social-Icons -->
                </div>
            </div>
            <div class="col-md-4 col-sm-4 view view-first view-4">
                <img src="statics/images/team-4.jpg" alt="Asset" />
                <div class="mask">
                    <h4>Jenna Roberts</h4>
                    <!-- Social-Icons -->
                    <div class="social">
                        <ul class="social-icons">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                            <li><a href="#" class="instagram" title="Go to Our Instagram Account"></a></li>
                        </ul>
                    </div>
                    <!-- //Social-Icons -->
                </div>
            </div>
            <div class="col-md-4 col-sm-4 view view-first view-5">
                <img src="statics/images/team-5.jpg" alt="Asset" />
                <div class="mask">
                    <h4>Kevin McCalister</h4>
                    <!-- Social-Icons -->
                    <div class="social">
                        <ul class="social-icons">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                            <li><a href="#" class="instagram" title="Go to Our Instagram Account"></a></li>
                        </ul>
                    </div>
                    <!-- //Social-Icons -->
                </div>
            </div>
            <div class="col-md-4 col-sm-4 view view-first view-6">
                <img src="statics/images/team-6.jpg" alt="Asset" />
                <div class="mask">
                    <h4>Karen Costner</h4>
                    <!-- Social-Icons -->
                    <div class="social">
                        <ul class="social-icons">
                            <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                            <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                            <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                            <li><a href="#" class="instagram" title="Go to Our Instagram Account"></a></li>
                        </ul>
                    </div>
                    <!-- //Social-Icons -->
                </div>
            </div>
        </div>

    </div>
</div>
<!-- //Team -->

<!-- Contact -->
<div class="contact" id="contact">
    <div class="container">

        <h3>Contact</h3>

        <div class="contact-info">
            <img src="statics/images/phone.png" alt="Asset">
            <h4>GOT QUESTIONS?</h4>
            <p>Contact our customer support team if you have any further questions/doubts regarding our work.</p>
            <p>We are here to help you out!</p>

            <div class="comms">
                <!-- Email -->
                <div class="email">
                    <p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>Email : <a href="mailto:mail@example.com"> info(at)example.com</a></p>
                </div>
                <!-- //Email -->

                <!-- Phone -->
                <div class="phone">
                    <p><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>Phone : +1 (734) 123-4567</p>
                </div>
                <!-- //Phone -->
                <div class="clearfix"></div>
            </div>

        </div>

    </div>
</div>
<!-- //Contact -->

<!-- Footer -->
<div class="footer">
    <div class="container">

        <!-- Quick-Links -->
        <div class="col-md-6 col-sm-6 footer-nav">
            <ul>
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#team">Team</a></li>
                <li><a href="#gallery">Gallery</a></li>
            </ul>
        </div>
        <!-- //Quick-Links -->

        <!-- Newsletter -->
        <div class="col-md-6 col-sm-6 mail">
            <form action="#" method="post">
                <input type="text" placeholder="Email" name="Email" required="">
                <input type="submit" value="Subscribe">
            </form>
        </div>
        <!-- //Newsletter -->

        <!-- Social-Icons -->
        <div class="col-md-6 col-sm-6 social">
            <ul class="social-icons">
                <li><a href="#" class="facebook" title="Go to Our Facebook Page"></a></li>
                <li><a href="#" class="twitter" title="Go to Our Twitter Account"></a></li>
                <li><a href="#" class="googleplus" title="Go to Our Google Plus Account"></a></li>
                <li><a href="#" class="instagram" title="Go to Our Instagram Account"></a></li>
            </ul>
        </div>
        <!-- //Social-Icons -->

        <!-- Copyright -->

        <div class="clearfix"></div>

    </div>

</div>
<!-- //Footer -->

<!-- Custom-JavaScript-File-Links -->

<!-- Supportive-JavaScript --> <script type="text/javascript" src="statics/js/jquery.min.js"></script>
<!-- Necessary-JS-File-For-Bootstrap --> <script type="text/javascript" src="statics/js/bootstrap.min.js"></script>

<!-- Banner-Slider-JavaScript -->
<script src="statics/js/responsiveslides.min.js"></script>
<script>
    $(function () {
        $("#slider1, #slider2").responsiveSlides({
            auto: true,
            nav: true,
            speed: 1000,
            namespace: "callbacks",
            pager: true,
        });
    });
</script>
<!-- //Banner-Slider-JavaScript -->

<!-- Popup-Box-JavaScript -->
<script src="statics/js/modernizr.custom.97074.js"></script>
<script src="statics/js/jquery.chocolat.js"></script>
<script type="text/javascript">
    $(function() {
        $('.gallery-item a').Chocolat();
    });
</script>
<!-- //Popup-Box-JavaScript -->

<!-- Slide-To-Top JavaScript (No-Need-To-Change) -->
<script type="text/javascript">
    $(document).ready(function() {
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 100,
            easingType: 'linear'
        };
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 0;"> </span></a>
<!-- //Slide-To-Top JavaScript -->

<!-- Smooth-Scrolling-JavaScript -->
<script type="text/javascript" src="statics/js/move-top.js"></script>
<script type="text/javascript" src="statics/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll, .navbar li a, .footer li a").click(function(event){
            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script>
<!-- //Smooth-Scrolling-JavaScript -->

<!-- //Custom-JavaScript-File-Links -->

</body>
<!-- //Body -->

</html>
