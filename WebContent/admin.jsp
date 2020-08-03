<%@ page  import="java.sql.*" import="com.databasecon.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />

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
<div id="adminbar"> 
    <ul>
        <li><a href="admin.jsp">View existing policy</a></li>
        <li><a href="agent_info.jsp">View Agent info</a></li>
        <li><a href="PH_info.jsp">View Policy Holder info</a></li>
    </ul>
</div>

<table align="center" width="700px">
          <tr bgcolor="#CC3300"> 
            <td width="610" bgcolor="#FBF7E1" valign="top"> <br> <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#FF3300" size="+1" face="Georgia, Times New Roman, Times, serif">All Policies</font></strong> <br> <br> <br> <form name="f" action="off_search.jsp" method="post" onsubmit="return valid()">
                <table bgcolor="#FFFFFF" width="700" border="0">
                  <tr> 
                    <td colspan="2" align="center"><font size="2"><b> 
                      <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font color='red' size='+1'><blink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Offer Not available !</blink></font>");
                                                       }
													   else if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red' size='+1'><blink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Material Purchased !</blink></font>");
                                                       }
                                               %>
                      </b></font></td>
                  </tr>
                  <tr bgcolor="#E4E4F1"> 
                    <td align="center"><font color="#110022"><strong>Policy ID</strong></font></td>
                    <td align="center"> <font color="#110022"><strong>Agent ID</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Number of PH</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Price</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Period</strong></font></td>
                  </tr>
                  <%
			
			
			
			String policyID=null,Agent=null,number=null,price=null,period=null;
ResultSet rs=null;
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from lifeinsurance";
		rs =st.executeQuery(qry);
	while(rs.next())
	{
	policyID=rs.getString("policyID");
	Agent=rs.getString("agent");
	number=rs.getString("number");
	
	price =rs.getString("price");
	period =rs.getString("period");
	
%>
                  <tr bgcolor="#FFFFCC"> 
                    <td align="center"> <strong><font color="#6300C6"> <%=policyID%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=Agent%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=number%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=price%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=period%> 
                      </font></strong></td>
                  </tr>
                  <%	  
}
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
                </table>

</body>
</html>