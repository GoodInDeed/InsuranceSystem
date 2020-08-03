<%@ page  import="java.sql.*" import="com.databasecon.*"%>
<%
// HttpSession session - Agent_login1._jspService(HttpServletRequest, HttpServletResponse)
//String pass=null,uid=null;
try
{
	String a = request.getParameter("agentID");
	String b= request.getParameter("password");
	String name=null,tr="Registered";

	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();

	String sss = "select * from agent where name='"+a+"' && password='"+b+"'";

	ResultSet rs=st.executeQuery(sss);
	if(rs.next()){
		try{
			Connection con1 = databasecon.getconnection();
			Statement st1 = con1.createStatement();

			String sss1 = "select * from agent where agentID='"+a+"' && password='"+b+"'";

			ResultSet rs1=st1.executeQuery(sss1);
			while(rs1.next()){
				name=rs1.getString("name");
				//cname=rs1.getString("cname");

				//pass=rs1.getString("password");
			//uid=rs1.getString("uid");
			}
			session.setAttribute("sname",name);
			//session.setAttribute("scname",cname);
		//session.setAttribute("pass",pass);
		//session.setAttribute("uid",uid);
		}
		catch(Exception e2){
			out.println(e2.getMessage());
		}
		response.sendRedirect("agent.jsp");
	}
	else{
		response.sendRedirect("error.jsp");
	}
}
catch(Exception e1){
	out.println(e1.getMessage());
}

%>