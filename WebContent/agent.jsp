<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<title>Agent page</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
<%
String sname=(String)session.getAttribute("sname");
%>
<div id="header" align="center">
	<img alt="" src="images/Header.png" style="margin: 0 auto;"/>
</div>
<div id="navbar"> 
    <ul>
        <li><a href="index.html" class="active">Home</a></li>
        <li><a href="admin.jsp">Admin</a></li>
        <li><a href="agent.jsp">Agent</a></li>
        <li><a href="policyholder.jsp">Policy Holder</a></li>
        <li><a href="lifeinsurance.jsp">Life Insurance</a></li>
        <li><a href="homeinsurance.jsp">Home Insurance</a></li>
        <li><a href="motorinsurance.jsp">Motor Insurance</a></li>
    </ul>
</div>
<div id="agentbar"> 
    <ul>
        <li><a href="agent.jsp">New Policy</a></li>
        <li><a href="policys.jsp">Policys</a></li>
        <li><a href="clients.jsp">Clients</a></li>
    </ul>
</div>
<div>
<h1>Welcome, <%=sname%>! Create new policy:</h1>
</div>
<!-- private String name, password, cardNum, bank, gender, address, email; -->
<!-- 	private int age; -->
<div>
<s:form action="newPolicy">
<s:select list="{'Home Insurance','Life Insurance','Motor Insurance'}" name="category" label="Category"></s:select>
<s:textfield name="policyName" label="Policy Name"></s:textfield>
<s:textfield name="price" label="Quote"></s:textfield>
<s:textfield name="period" label="Charge Cycle"></s:textfield>
<s:submit value="Create"></s:submit>
</s:form>
</div>
</body>