<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Life of Annen</title>
    <asset:link rel="icon" href="vaicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="bootstrap.css"></asset:stylesheet>
    <asset:stylesheet src="stylesheet.css"></asset:stylesheet>


</head>

<body>
<ul class="topnav">
    <li><a href="/admin/index">Admin</a></li>
    <li><a href="/public/about">About</a></li>
    <li><a href="/public/index">Blog</a></li>
    <li><a class="active" href="/">Home</a></li>
    <li class="left"><a href="/"><asset:image src="VA_Logo_white.svg" class="va_logo_small"/></a></li>
</ul>

%{--<content tag="nav">

    <li><a href="public/about"><button type="button">Blog</button></a></li>
    <li><a href="public/about"><button type="button">About</button></a></li>
    <li><a href="admin/index"><button type="button">Admin</button></a></li>

</content>--}%

<div class="svg" role="presentation">
    <div class="va-logo-container ">
        <asset:image src="VA_Logo.svg" class="va_logo"/>
    </div>
</div>


<div id="content" role="main">
    <section class="row colset-2-its">
        <h1 class = "WelcomeTxt">Welcome to BLOG</h1>
        <p>
            Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor
            invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam
            et justo duo dolores et ea rebum.
        </p>
        <p>
            <a class="btn btn-lg ExploreBtn"  href="/public/index" role="button">Explore</a>
        </p>

    </section>
</div>

</body>
</html>
