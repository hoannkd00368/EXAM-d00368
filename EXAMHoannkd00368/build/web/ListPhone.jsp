<%-- 
    Document   : ListPhone
    Created on : Dec 10, 2018, 9:43:15 AM
    Author     : Nobita Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>List phone</h3>
        <jsp:useBean id="db" class="Exam.processDatabase" scope="request"/>
        <c:set var="list" value="${db.getAll()}" scope="request"/>
        <table class="table table-bordered mx-auto">
            <thead>
                <tr>
                    <th>id</th>
                    <th>Name</th>
                    <th>Brand</th>
                    <th>Price</th>
                    <th>Description</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="p">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.name}</td>
                        <td>${p.brand}</td>
                        <td>${p.price}</td>
                        <td>${p.desc}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="addphone.jsp">Add more</a>
    </body>
</html>
