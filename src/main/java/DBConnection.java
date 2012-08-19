package com.rao.solr.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created with IntelliJ IDEA.
 * User: rajeshp
 * Date: 19/8/12
 * Time: 4:29 AM
 * To change this template use File | Settings | File Templates.
 */
public class DBConnection {

    public static Connection getConnection()
    {
        Connection con=null;
        try
        {


        Class.forName("com.mysql.jdbc.Driver");

        con = DriverManager.getConnection("jdbc:mysql://localhost/solrdb","root","rhino");

        System.out.println("Connected to database");

        }
        catch(ClassNotFoundException ce)
        {
            ce.printStackTrace();
        }
        catch(SQLException se)
        {
            se.printStackTrace();
        }


       return con;

    }



}
