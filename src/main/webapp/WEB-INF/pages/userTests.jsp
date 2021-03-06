<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
  <title>Мои тесты</title>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Ultimate Testing System</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="/">HOME</a></li>
      <li class="active"><a href="/userTests">MY PROFILE</a></li>
      <li><a href="#">ADD TEST</a></li>
      <li><a href="/about">CONTACT</a></li>
    </ul>
  </div>

</nav>
<div class="container">
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <ul class="nav navbar-nav">
        <li class="active"><a href="userTests">MY TESTS</a></li>
        <li><a href="completedTests">COMPLETED TESTS</a></li>
      </ul>
    </div>
  </nav>
  <form>
    <div class="btn-group" role="group" >
      <button type="submit" class="btn btn-default">Edit</button>
      <button type="submit" class="btn btn-default">Add new</button>
      <button type="submit" class="btn btn-default">Delete</button>
    </div>
    <table class="table table-bordered">
      <thead>
      <tr>
        <th>Наименование теста</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${tests}" var="test">
        <tr>
          <td>
            <div>
              <input type="text" name="id" value="${test.id}" hidden="true"/>
              <input type="checkbox" name="ck"/>
              <%--<a href="newTest">--%>
                <c:out value="${test.caption}"/>
              <%--</a>--%>
            </div>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>

  </form>

</div>

</body>
</html>
