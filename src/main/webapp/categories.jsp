<%@ page import="java.sql.*,com.rao.solr.db.DBConnection" %>
<html>
<head>
</head>
<body>

<h1 align="center"><font color="#0000CC"> Categories List </font> </h1>

<%


try
{
java.sql.Connection con = com.rao.solr.db.DBConnection.getConnection();

%>

<table align="center" width="574" border="0" cellspacing="0" cellpadding="2" bordercolor="black" style="border-width:1px">

<tr style="background-color:#507CD1; color:White">


 <TH style="font-size:12px; text-align:center">	<font face="Verdana"> Select </font> </TH>

 <TH style="font-size:12px; text-align:center"> <font face="Verdana"> Category ID </font></TH>

 <TH style="font-size:12px; text-align:center"> <font face="Verdana"> Category Name </font> </TH>

 </tr>


<%
if(con!=null)
{
java.sql.Statement stat = con.createStatement();

java.sql.ResultSet rs = stat.executeQuery("select * from categories");

int j=0;
while(rs.next())
{


        if(j%2==0)
			{
				  out.println("<tr style='background-color:#EFF3FB; font-size:12px; font-name:Verdana'>");
			}
             else
			 {
				  out.println("<tr style='background-color:white; font-size:12px; font-name:Verdana'>");
			 }
			j++;
%>



<td align="left" valign="top" style="text-align:center"> <input type="checkbox" name="<% out.println(rs.getString(1)); %>" value="ON"> </td>

<td align="left" valign="top" style="text-align:center"> <% out.println(rs.getString(1)); %> </td>
<td align="left" valign="top" style="text-align:center"> <% out.println(rs.getString(2)); %> </td>

<%
out.println("</tr>");

}

con.close();

}
else
{
out.println("<center><h2>DB Connection Problem..</h2> </center>");
}

}
catch(Exception e)
{
 out.println(e);

}




%>
</table>


</body>


</html>
