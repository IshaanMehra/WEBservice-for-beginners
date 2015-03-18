

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Web3 extends HttpServlet
{
public void doPost(HttpServletRequest req,HttpServletResponse res)
throws ServletException,IOException
{
doGet(req,res);
}
public void doGet(HttpServletRequest req,HttpServletResponse res)
throws ServletException,IOException
{
PrintWriter out=res.getWriter();
res.setContentType("text/html");
String s16=req.getParameter("sales_order_number");
String s20=req.getParameter("line_number");
String s21=req.getParameter("item_number");
String s22=req.getParameter("item_name");
String s23=req.getParameter("qty");
String s24=req.getParameter("amount");
Connection con=null;
Statement st=null;

out.println("<html><body><h1>............................servlet updating..........:):).......</h1></body></html>");
try
	{
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.120:1524:VIS","scott","tiger");
				 st = con.createStatement();
				 
		 String queryText5 = "update sales_order_details set line_number='"+s20+"',item_number='"+s21+"',item_name='"+s22+"',qty='"+s23+"',amount='"+s24+"' where SALES_ORDER_NUMBER='"+s16+"'";
		 System.out.println(queryText5);
		 st.executeUpdate(queryText5);
		 		

		//int s = st.executeUpdate(i);
		st.close();
		con.close();
		
	
out.println("<html><body><h4>thank you for Updating......</h4></body></html>");
con.close();
}
catch(Exception e)
{
System.out.println("Error in login:"+e);
}
}
}