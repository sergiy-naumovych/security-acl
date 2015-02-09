<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Bulletin Page</h1>

<p>
<span style="font-weight:bold">Current user: </span>${username}<br/>
<span style="font-weight:bold">Current role: </span>${role}
</p>

<hr/>

<div style="width: 600px" >
	<div>
		<table style="border: 1px solid; width: 500px; text-align:center">
			<caption>Admin Posts</caption>
			<thead style="background:#fcf">
				<tr>
					<th>Date</th>
					<th>Message</th>
					<th colspan="3"></th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${adminposts}" var="post">
					<c:url var="editUrl" value="/krams/admin/edit?id=${post.id}" />
					<c:url var="deleteUrl" value="/krams/admin/delete?id=${post.id}" />
					<c:url var="addUrl" value="/krams/admin/add" />
				<tr>
					<td><c:out value="${post.date}" /></td>
					<td><c:out value="${post.message}" /></td>
					<td><a href="${editUrl}">Edit</a></td>
					<td><a href="${deleteUrl}">Delete</a></td>
					<td><a href="${addUrl}">Add</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<hr/>
</div>

<div style="width: 600px" >
	<div>
		<table style="border: 1px solid; width: 500px; text-align:center">
			<caption>Personal Posts</caption>
			<thead style="background:#fcf">
				<tr>
					<th>Date</th>
					<th>Message</th>
					<th colspan="3"></th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${personalposts}" var="post">
					<c:url var="editUrl" value="/krams/personal/edit?id=${post.id}" />
					<c:url var="deleteUrl" value="/krams/personal/delete?id=${post.id}" />
					<c:url var="addUrl" value="/krams/personal/add" />
				<tr>
					<td><c:out value="${post.date}" /></td>
					<td><c:out value="${post.message}" /></td>
					<td><a href="${editUrl}">Edit</a></td>
					<td><a href="${deleteUrl}">Delete</a></td>
					<td><a href="${addUrl}">Add</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<hr/>
</div>

<div style="width: 600px" >
	<div>
		<table style="border: 1px solid; width: 500px; text-align:center">
			<caption>Public Posts</caption>
			<thead style="background:#fcf">
				<tr>
					<th>Date</th>
					<th>Message</th>
					<th colspan="3"></th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${publicposts}" var="post">
					<c:url var="editUrl" value="/krams/public/edit?id=${post.id}" />
					<c:url var="deleteUrl" value="/krams/public/delete?id=${post.id}" />
					<c:url var="addUrl" value="/krams/public/add" />
				<tr>
					<td><c:out value="${post.date}" /></td>
					<td><c:out value="${post.message}" /></td>
					<td><a href="${editUrl}">Edit</a></td>
					<td><a href="${deleteUrl}">Delete</a></td>
					<td><a href="${addUrl}">Add</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	<hr/>
</div>

</body>
</html>