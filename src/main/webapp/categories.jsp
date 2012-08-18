<html>
<head>
</head>
<body>

<h1 align="center"> Categories List </h1>

<%

out.println("Hello World");

try
{
Connection con = DBConnection.getConnection();

if(con!=null)
out.println("got the connection");

Statement stat = con.createStatement("select * from categories");

ResultSet rs = stat.executeQuery();

while(rs.next())
{

out.println(rs.get(0)+"  "+rs.get(1));

}

}
catch(Exception e)
{
 out.println(e);

}


%>


</body>


</html>