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
    <p>Author: ${post.author}</p>



</div>


<h4>Comments</h4>

<g:form controller="comment" action="save">
    <fieldset class="form">
        Name:<br>
        <input type="text" name="author">

        <textarea name="body" rows="10" cols="30" placeholder="Write your comment..."></textarea>
        <input type="hidden" name="post" value="${post.id}" />
    </fieldset>


    <g:each var="comment" in="${post.comments}">
        ${comment.author}
        ${comment.body}<br>
    </g:each>

    %{--<fieldset class="buttons">
        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
    </fieldset>--}%
</g:form>



</body>
</html>
