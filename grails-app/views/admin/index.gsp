<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <meta charset="UTF-8">
    <title>Admin</title>
    <asset:link rel="icon" href="vaicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="stylesheet.css"/>
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}"/>
</head>

<body>
<ul class="topnav">
    <li><a class="active" href="/admin/index">Admin</a></li>
    <li><a href="/public/about">About</a></li>
    <li><a href="/public/index">Blog</a></li>
    <li><a href="/">Home</a></li>
    <li class="left"><a href="/"><asset:image src="VA_Logo_white.svg" class="va_logo_small"/></a></li>
</ul>
<a href="#list-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="create" action="create" controller="post"><g:message code="default.new.label"
                                                                                args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-post" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <f:table collection="${postList}"/>

    <div class="pagination">
        <g:paginate total="${postCount ?: 0}"/>
    </div>
</div>
</body>
</html>