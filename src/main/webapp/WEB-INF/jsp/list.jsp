<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table>
	<thead>
		<tr>
			<th>All Entries</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${entries}" var="entry">
			<tr>
				<td>${entry.firstName}</td>
				<td>${entry.lastName}</td>
				<td>${entry.phoneNumber}</td>
				<td>${entry.postCode}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>