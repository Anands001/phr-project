<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<header id="header" class="header fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <div id="logo">
        <h1><a href="index.html"><span>e</span>Health</a></h1>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="index.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="#about-us">About</a></li>
          <% if(session.getAttribute("username")!=null||session.getAttribute("docname")!=null){ %>
          <li><a class="nav-link scrollto" href="logout">Log out</a></li>
          <% }else{ %>
          <li><a class="nav-link scrollto" href="Login.jsp">Log in</a></li>
          <% } %>
          <% if(session.getAttribute("username")!=null){ %>
          <li class="dropdown"><a href="#"><span><%= session.getAttribute("username") %></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li><a href="#">Drop Down 2</a></li>
            </ul>
          </li><% }else if(session.getAttribute("docname")!=null){ %>
          <li class="dropdown"><a href="#"><span><%= session.getAttribute("docname")%></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li><a href="#">Drop Down 2</a></li>
            </ul>
          </li>
          <% } %>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>

    </div>
  </header>
</body>
</html>