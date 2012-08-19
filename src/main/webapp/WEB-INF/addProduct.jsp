<%@ page import="java.sql.*,com.rao.solr.db.DBConnection" %>
<html>
<head>
</head>
<body>

<h1 align="center"><font color="#0000CC"> Add Products </font> </h1>

<%


try
{
java.sql.Connection con = com.rao.solr.db.DBConnection.getConnection();

if(con!=null)
out.println("got the connection");
else
out.println("No DB Connection:");
%>

<table align="center" border='1' width="300">
<tr style="color:#0000CC;text-align:center;font-size:16"> <td align="center" width='20%'> Product ID</td> <td align="center" width='40%'> Name </td> <td align="center" width='40%'> Price </td> </tr>


<%

java.sql.Statement stat = con.createStatement();

java.sql.ResultSet rs = stat.executeQuery("select * from products");

while(rs.next())
{

out.println("<tr>   <td align='center'> "+rs.getString(1)+" </td>  <td align='center'>  "+rs.getString(2)+" </td>  <td align='center'>  "+rs.getString(3)+"</td></tr>");

}

}
catch(Exception e)
{
 out.println(e);

}
finally
{
            try
             {
             con.close();
             }
             catch(Exception e)
             {

             }
}


%>
</table>


</body>


</html>
