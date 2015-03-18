<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
<%@  page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
    <HEAD>
        <TITLE>The tableName Database Table </TITLE>
    </HEAD>

    <BODY  bgcolor=yellow background="C:\Users\ishaan\Downloads\i4.jpg">
        <H1>Select the file format </H1>

        <% 
            Connection connection = DriverManager.getConnection(
            		"jdbc:oracle:thin:@192.168.1.120:1524:VIS","scott","tiger");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from sales_order_master") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>Sales_order_number</TH>
                <TH>Customer_name</TH>
                <TH>Customer_address1</TH>
                <TH>Customer_address2</TH>
               
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
       
            </TR>
            <% } %>
        </TABLE>
   

       
<FORM name=myform1 ACTION="web4" METHOD="POST">
      <INPUT TYPE="SUBMIT" value="Download Csv">
</FORM>
<FORM name=myform9 ACTION="web6" METHOD="POST">
      <INPUT TYPE="SUBMIT" value="Download txt">
          
</FORM>
</body>
</html>