<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <meta charset="UTF-8">
    <title>Blog Post</title>
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
<a href="#show-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div id="show-post" class="content scaffold-show" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <h1>${post.title}</h1>

    <div id="body_align">
        <p>${post.body}</p>
        <p>Written by: ${post.author}</p>
        <br>
        <h4>Comments</h4>
        <g:form controller="comment" action="save">
            <fieldset class="form">
                Name:<br>
                <input type="text" name="author">
                <textarea name="body" rows="10" cols="30" placeholder="Write your comment..."></textarea>
                <input type="hidden" name="post" value="${post.id}"/>
            </fieldset>
            <g:each var="comment" in="${post.comments}">
                ${comment.author}
                ${comment.body}<br>
            </g:each>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save"
                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
