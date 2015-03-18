



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import java.sql.*;



/**
 * Servlet implementation class Test5
 */
public class web1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

			
			
			 
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public web1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#getServletInfo()
	 */
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null; 
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	 
		
		
	
       
		String name1 = request.getParameter("sales_order_number");
		String name2 = request.getParameter("cust_name");
		String name3 = request.getParameter("cust_address1");
		String name4 = request.getParameter("cust_address2");
		String name5 = request.getParameter("sales_order_number1");
		String name6 = request.getParameter("line_number");
		String name7 = request.getParameter("item_number");	
		String name8 = request.getParameter("item_name");
		String name9 = request.getParameter("qty");
		String name10 = request.getParameter("unit_price");
		String name11 = request.getParameter("amount");
		Connection con=null;
		Statement st=null;
	
		try
		{
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.120:1524:VIS","scott","tiger");
				 st = con.createStatement();
				 
		 String queryText = "insert into sales_order_master values('"+name1+"','"+ name2+"','"+name3+"','"+name4+"')";
		 System.out.println(queryText);
		 st.executeUpdate(queryText);
		 		 String queryText1 = "insert into sales_order_details  values("+name5+","+ name6+","+name7+",'"+name8+"',"+name9+","+name10+","+name11+")";
		 System.out.println(queryText1);
		 int i= st.executeUpdate(queryText1);
		 System.out.println(queryText1);

		//int s = st.executeUpdate(i);
		st.close();
		con.close();
		
	}
		catch(Exception e)
		{
			System.out.println("Enter unique constraints"+e);
		}
		
	}
	
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		
	//	String queryText = "insert into sales_order_master(sales_order_number, cust_name,cust_address1,cust_address2)"+ 
	//	" values("+name1+","+ name2+","+name3+","+name4+")";

		
		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
