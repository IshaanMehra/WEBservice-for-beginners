<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<%@ page import="java.util.ArrayList" %>
<%@  page import="java.io.PrintWriter" %>

<HTML>
    <HEAD>
        <TITLE>Fetching Data From a Database</TITLE>
    </HEAD>

    <BODY  background="C:\Users\ishaan\Downloads\i4.jpg">
        <H1>Fetching Data From a Database</H1>

        <% 
            Connection connection = DriverManager.getConnection(
            		"jdbc:oracle:thin:@192.168.1.120:1524:VIS","scott","tiger");

            Statement statement = connection.createStatement();
         
            String id1 = request.getParameter("id");  
         
            ResultSet resultset = 
                statement.executeQuery("select * from sales_order_details where SALES_ORDER_NUMBER = '" + id1 + "'") ; 
            HttpSession s= request.getSession(true);
            s.setAttribute("order_no", id1);
            if(!resultset.next()) {
            /*	alert ( "The Current id does not exist,Please enter another id");
            */
            
                out.println("The Current id does not exist,Please enter another id");
                PrintWriter Out = new PrintWriter(System.out, true);
                out.println("Hello, world");
                
            } 
            else {
            	
        %>

        <TABLE BORDER="10" CELLPADDING="5" CELLSPACING="3" BORDERCOLOR=black>
            <TR>
               <TH>SALES_ORDER_NUMBER </TH>              
<Th>LINE_NUMBER    </Th>           
<Th>ITEM_NUMBER  </Th>            
<Th>ITEM_NAME     </Th>        
<Th>QTY           </Th>     
<Th>UNIT_PRICE     </Th>      
<Th>AMOUNT   </Th>
              
              
           </TR>
           <TR>
               <TD> <%= resultset.getString(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               <TD> <%= resultset.getString(4) %> </TD>
                <TD> <%= resultset.getString(5) %> </TD>
                <TD> <%= resultset.getString(6) %> </TD>
                <TD> <%= resultset.getString(7) %> </TD>
           </TR>
       </TABLE>
       <table>
       <BR>
       <tr>
        <FORM name=myform1 ACTION="Web2" Method="POST">
     
        <INPUT Name="button1" TYPE="SUBMIT" VALUE="DELETE"  ></INPUT>
       </tr>
       <tr>
        </FORM>
        <FORM name=myform1 ACTION="update.jsp" Method="POST">

       
       
        <INPUT Name="button2" TYPE="SUBMIT" VALUE="Update"  ></INPUT>
        
         <% 
        
       	  HttpSession s1= request.getSession(true);
       
       	ArrayList<String> details = new ArrayList<String>();
       	details.add(resultset.getString(1));
       	details.add(resultset.getString(2));
       	details.add(resultset.getString(3));
       	details.add(resultset.getString(4));
       	details.add(resultset.getString(5));
       	details.add(resultset.getString(6));
       	details.add(resultset.getString(7));
       	session.setAttribute( "details_1", details );
    	
            }
       %> 
       
        
        </FORM>
        </tr>
          </table>
       <BR>
      
    </BODY>
</HTML>

        