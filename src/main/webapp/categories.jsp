<@page import="java.sql.*,com.rao.solr.db.DBConnection" %>
<html>
<head>
</head>
<body>

<h1 align="center"><font color="#0000CC"> Categories List </font> </h1>

<%

out.println("Hello World");

try
{
java.sql.Connection con = com.rao.solr.db.DBConnection.getConnection();

if(con!=null)
out.println("got the connection");
else
out.println("No DB Connection:");
%>

<table align="center" border='1' width="200">
<tr style="color:#0000CC;text-align:center;font-size:14"> <td align="center" width='50%'> Category ID</td> <td align="center" width='50%'> Name </td> </tr>


<%

java.sql.Statement stat = con.createStatement();

java.sql.ResultSet rs = stat.executeQuery("select * from categories");

while(rs.next())
{

out.println("<tr>   <td align='center'> "+rs.getString(1)+" </td>  <td align='center'>  "+rs.getString(2)+"</td></tr>");

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
