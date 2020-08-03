<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<title>Online Insurance System</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>
<body>
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
<div id="regbar"> 
    <ul>
        <li><a href="agent_reg.jsp">Agent Registration</a></li>
        <li><a href="policyholder_reg.jsp">Policy Holder Registration</a></li>
        <li><a href="Admin_login.jsp">Admin Login</a></li>
        <li><a href="Agent_login.jsp">Agent Login</a></li>
        <li><a href="PH_login.jsp">Policy Holder Login</a></li>
    </ul>
</div>
<s:form action="login">
<s:textfield name="category" readonly="true" label="Category" value="agent"></s:textfield>
<s:textfield name="name" label="Username"></s:textfield>
<s:textfield name="password" label="Password"></s:textfield>
<s:submit value="login"></s:submit>
</s:form>
</body>
</html>