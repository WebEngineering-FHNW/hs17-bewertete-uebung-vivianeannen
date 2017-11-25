<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">

</div>
<div id="show-post" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <f:display bean="post" />

</div>
</body>
</html>
