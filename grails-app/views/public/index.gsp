<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<g:each var="post" in="${postList}">
    <h1>${post.title}</h1>

    <p>${post.body}</p>
    <g:link controller="public" action="show" id="${post.id}"> <button type="button">Read More</button> </g:link>
</g:each>
</body>
</html>