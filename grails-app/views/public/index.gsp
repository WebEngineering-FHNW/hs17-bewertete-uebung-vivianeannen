<!DOCTYPE html>
<html>
<head>
    <asset:stylesheet src="bootstrap.css"></asset:stylesheet>
    <asset:stylesheet src="stylesheet.css"></asset:stylesheet>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<ul class="topnav">
    <li><a href="/admin/index">Admin</a></li>
    <li><a href="/public/about">About</a></li>
    <li><a class="active" href="/public/index">Blog</a></li>
    <li><a href="/">Home</a></li>
    <li class="left"><a href="/"><asset:image src="VA_Logo_white.svg" class="va_logo_small"/></a></li>
</ul>

<g:each var="post" in="${postList}">
    <h1>${post.title}</h1>
    <p>${post.body}</p>
    <g:link controller="public" action="show" id="${post.id}"> <button type="button">Read More</button> </g:link>
</g:each>

</body>
</html>