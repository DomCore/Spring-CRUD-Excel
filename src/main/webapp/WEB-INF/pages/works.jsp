<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.semanticui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/styles/table.css">
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'/>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.semanticui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/scripts/toExcel.js"></script>
    <title>Works</title>
</head>
<body>
<table>
    <tr>
        <td><input type="button" class="button" onclick="tableToExcel('example', 'W3C Example Table')" value="Отчет Excel &#128190;">
        </td>
        <form action="${pageContext.request.contextPath}/search">
        <td>
            <label class="label" for="start">От:</label>

            <input type="date" id="start" name="from" class="date" value="now">
        </td>
        <td><label class="label" for="finish">До:</label>

            <input type="date" id="finish" name="to" class="date" value="now">
        </td>
        <td><button type="submit" class="button2">Поиск</button>
        </td></form>
    </tr>
</table>
<br/>
<br/>
<div id="dvData">
    <div class="container">
        <div class="row">

            <table id="example" class="ui celled table" cellspacing="0">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Start</th>
                    <th>Finish</th>
                    <th>Adress</th>
                    <th>Type</th>
                    <th>Price</th>
                    <th>Mark</th>
                    <th>#</th>
                    <th>Plomb</th>
                    <th>Phone</th>
                </tr>
                </thead>
                <tbody>
                    <% int i=1;%>
                <c:forEach var="work" items="${worksList}">

                    <tr>
                        <td><a href="/delete/${work.id}"><%=i%></a></td>
                        <td>${work.start}</td>
                        <td>${work.finish}</td>
                        <td>${work.adress}</td>
                        <td>${work.type}</td>
                        <td>${work.price}</td>
                        <td>${work.mark}</td>
                        <td>${work.zav}</td>
                        <td>${work.plomb}</td>
                        <td>${work.phone}</td>
                    </tr>
                    <% i++;%>
                </c:forEach>

                </tbody>
            </table>

        </div>
    </div>
</div>
<div class="dx-viewport demo-container">
    <div id="gridContainer"></div>
</div>

<c:url value="/add" var="add"/>
<form action="${pageContext.request.contextPath}/add">
    <button type="submit" class="button_submit">Добавить запись</button>
</form>
<script>$(document).ready(function () {
    $('#example').DataTable({
        "language": {
            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Russian.json"
        }
    });
});
</script>
<script></script>
</body>
</html>