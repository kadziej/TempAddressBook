<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>


<c:if test="${param.removed eq true}">
		<div class="alert alert-danger">Kontakt został usunięty!</div>
</c:if>

<table class="table table-striped table-hover table-condensed">
	<thead>
		<tr>
			<th>Imię</th>
			<th>Nazwisko</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${contacts}" var="contact">
			<tr>
				<td>${contact.firstName}</td>
				<td>${contact.lastName}</td>
				<td><a href='<spring:url value="contacts/${contact.id}"></spring:url>' class="btn btn-default btn-xs">więcej</a></td>
				<td><a href='<spring:url value="contacts/remove/${contact.id}"></spring:url>' class="btn btn-danger btn-xs">usuń</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>