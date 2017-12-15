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
<a href="#show-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="PostBtn" action="index" controller="admin">Blog Entries</g:link></li>
        <li><g:link class="PostBtn" action="create">Create</g:link></li>
    </ul>
</div>

<div id="show-post" class="content scaffold-show" role="main">

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <h1>${post.title}</h1>

    <div id="body_align">
        <p>${post.body}</p>

        <p>Written by: ${post.author}</p>
    </div>

    <g:form resource="${this.post}" method="DELETE">
    %{--<fieldset class="buttons">
        <g:link class="edit" action="edit" resource="${this.post}">Edit</g:link>

        <input class="delete" type="submit"
               value="Delete"
               onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
    </fieldset>--}%


        <fieldset>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="PostBtn" action="edit" resource="${this.post}">Edit</g:link></li>
                    <li><input
                               class="delete PostBtn"
                               type="submit"
                               value="Delete"
                               onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                    </li>
                </ul>
            </div>

        </fieldset>
    </g:form>
</div>
</body>
</html>
