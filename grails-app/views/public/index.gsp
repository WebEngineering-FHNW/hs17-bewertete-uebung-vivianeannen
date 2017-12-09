<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <meta charset="UTF-8">
    <title>Blog</title>
    <asset:link rel="icon" href="vaicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="stylesheet.css"/>
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}"/>
</head>

<body>
<ul class="topnav">
    <li><a href="/admin/index">Admin</a></li>
    <li><a href="/public/about">About</a></li>
    <li><a class="active" href="/public/index">Blog</a></li>
    <li><a href="/">Home</a></li>
    <li class="left"><a href="/"><asset:image src="VA_Logo_white.svg" class="va_logo_small"/></a></li>
</ul>

<div id="content_blog" role="main">
    <section class="row col-lg-offset-3">
        <g:each var="post" in="${postList}">
            <h1>${post.title}</h1>

            <p class="blog_body">${post.body}</p>
            <g:link controller="public" action="show" id="${post.id}"><button
                    class="btn ExploreBtn">Read More</button>
            </g:link>
        </g:each>
    </section>
</div>
</body>
</html>