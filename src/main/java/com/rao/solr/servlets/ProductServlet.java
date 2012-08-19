package com.rao.solr.servlets;

import com.rao.solr.db.DBConnection;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Created with IntelliJ IDEA.
 * User: rajeshp
 * Date: 19/8/12
 * Time: 6:49 AM
 * To change this template use File | Settings | File Templates.
 */
public class ProductServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res)
    {




    }
      @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)
    {


        String pid = req.getParameter("pid");
        String cid = req.getParameter("cid");
        String pname = req.getParameter("pname");
        String price = req.getParameter("price");

        Connection con =null;
        try
        {

        if(req.getParameter("op").equals("add"))
        {
            PrintWriter out = res.getWriter();

            con = DBConnection.getConnection();

            if(con!=null)
            {
                    Statement stat = con.createStatement();

                    boolean  c = stat.execute("insert into products values('"+pid+"','"+pname+"',"+price+","+cid+"'");

                    if(c)
                    {
                        out.println("product added " + pid);
                    }
                    else
                    {
                        out.println("Error Occured while Adding the product "+pid);
                    }

            }

        }




        }
        catch(Exception e)
        {

        }
        finally {

            try
            {
            con.close();
            }
            catch(Exception e)
            {

            }
        }


    }
}
