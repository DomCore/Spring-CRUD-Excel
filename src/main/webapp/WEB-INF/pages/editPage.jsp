<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/styles/table.css">
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'/>
    <title>Добавить запись</title>
</head>
<body>
<c:if test="${empty work.id}">
    <c:url value="/add" var="var"/>
</c:if>
<div class="addForm">
    <table>
        <form action="${var}" method="POST" accept-charset="UTF-8">
            <c:if test="${!empty work.id}">
                <input type="hidden" name="id" value="${work.id}">
            </c:if>
            <tr>
                <td><label class="label_input" for="start">Начало работы</label>
                    <input type="date" class="input_text" name="start" id="start" value="10.10.2015" required></td>
                <td><label class="label_input" for="finish">Дата2</label>
                    <input type="date" class="input_text" name="finish" id="finish" value="10.10.2015" required></td>
            </tr>
            <tr>
                <td><label class="label_input" for="adress">Адрес</label>
                    <input type="text" class="input_text" name="adress" id="adress" value="${work.adress}" required></td>
                <td><label class="label_input" for="type">Тип</label>
                    <select class="input_text" name="type" id="type" required>
                        <option value="Пломба">Пломба</option>
                        <option value="Пломба 2">Пломба 2</option>
                        <option value="Пломба 3">Пломба 3</option>
                    </select></td>
            </tr>
            <tr>
                <td><label class="label_input" for="price">Цена</label>
                    <input type="text" class="input_text" name="price" id="price"  required></td>
                <td><label class="label_input" for="mark">Марка</label>
                    <input type="text" class="input_text" name="mark" id="mark" value="${work.mark}" required></td>
            </tr>
            <tr>
                <td><label class="label_input" for="zav">Зав</label>
                    <input type="text" class="input_text" name="zav" id="zav" required></td>
                <td><label class="label_input" for="plomb">Пломба</label>
                    <input type="text" class="input_text" name="plomb" id="plomb"  required></td>
            </tr>
            <tr>
                <td><label class="label_input" for="phone">Телефон</label>
                    <input type="text" class="input_text" name="phone" id="phone" ] required></td>
                <c:if test="${empty work.id}">
                    <td><input type="submit" class="submit" value="Добавить запись"></td>
                </c:if>
                <c:if test="${!empty work.id}">
                <td><input type="submit" value="Edit work"></td>
            </tr>
            </c:if>
        </form>
    </table>
</div>
</body>
</html>