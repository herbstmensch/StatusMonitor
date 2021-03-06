
<%@page import="de.timherbst.statusserver.service.MessageAggregator"%>
<%@page import="de.timherbst.statusserver.model.StatusMessage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="60; url=index.jsp">
<link rel="stylesheet" type="text/css" href="css/monitor.css">
<title>StatusServer</title>
</head>
<body>
<% for(StatusMessage sm : MessageAggregator.getMessages()) { %>
<%= sm.getKunde().equalsIgnoreCase(request.getParameter("kunde"))?sm.toHTML():"" %>
<% } %>
</body>
</html>