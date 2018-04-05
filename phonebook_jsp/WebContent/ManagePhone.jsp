<?xml version="1.0" encoding="UTF-8" ?>
<%@ page import="app.Phonebook"%>
<%@ page import="app.Person"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Информация о телефоне</title>
</head>
<body>
	<%
	String user_message = "";
	HashMap<String,String> jsp_parameters = new HashMap<String,String>();
	Person person = new Person();
	Phonebook phonebook = (Phonebook)request.getAttribute("phonebook");
	
	if (request.getAttribute("jsp_parameters") != null)
	{
		jsp_parameters = (HashMap<String,String>)request.getAttribute("jsp_parameters");
	}
	
	if (request.getAttribute("person") != null)
	{
		person=(Person)request.getAttribute("person");
	}
	
	user_message = jsp_parameters.get("current_action_result_label");
%>

	<table align="center" border="1" width="90%">

		<%
    if ((user_message != null)&&(!user_message.equals("")))
    {
    %>
		<tr>
			<td colspan="6" align="center"><%=user_message%></td>
		</tr>
		<%
    }
    %>
		<tr>
			<td colspan="2" align="center">Информация о телефоне владельца:
				<%=person.getSurname()%> <%=person.getName()%> <%=person.getMiddlename()%></td>
		</tr>
		<tr>
			<td>Номер:</td>
			<td><%= %></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit"
				name="<%=jsp_parameters.get("next_action")%>" value="Добавить номер" /> <br>
			<a href="<%=request.getContextPath()%>">Вернуться к списку</a></td>
		</tr>
	</table>
</body>
</html>