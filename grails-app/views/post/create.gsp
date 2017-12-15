<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <meta charset="UTF-8">
    <title>Post Create</title>
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
<a href="#create-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><g:link controller="admin" class="PostBtn" action="index">Blog Entries</g:link></li>
    </ul>
</div>

<div id="body_align" role="main">
    <h1>New Post</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.post}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.post}" var="error">
                <li><g:if
                        test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form action="save">
        <fieldset class="form">
            <f:all order="author,title,body,created,published" bean="post"/>
        </fieldset>
        <br>
        <br>
        <fieldset>
            <g:submitButton name="create" class="save" value="Create"
                            style="background: #ffd6d1; border: none; color: #333; width: 200px; height:30px"/>

        </fieldset>
    </g:form>

</div>
</body>
</html>
