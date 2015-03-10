<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>



<c:if test="${param.removed eq true}">
		<div class="alert alert-danger">Kontakt został usunięty!</div>
</c:if>

<table class="tabl table-striped">
	<thead>
		<tr>
			<th>Wszystkie kontakty</th>

		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Imię</td>
			<td>Nazwisko</td>
			<td>Numer telefonu</td>
			<td>Kod pocztowy</td>
		</tr>
		<c:forEach items="${contacts}" var="contact">
			<tr>
				<td>${contact.firstName}</td>
				<td>${contact.lastName}</td>
				<td>${contact.phoneNumber}</td>
				<td>${contact.postCode}</td>
				<td><a href='<spring:url value="contacts/${contact.id}"></spring:url>' class="btn ">więcej</a></td>
				<td><a href='<spring:url value="contacts/remove/${contact.id}"></spring:url>' class="btn">usuń</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>