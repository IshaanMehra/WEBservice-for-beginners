



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Test6
 */
public class Web2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Web2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) 
		// TODO Auto-generated method stub
	
	
	
		
		
			throws IOException, ServletException
			{
	
			response.setContentType("text/html");
			PrintWriter pw = response.getWriter();
			Connection con;
			PreparedStatement st;
		
			PreparedStatement st1;
			String name13 = request.getParameter("id");
		
			try
			{
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.120:1524:VIS","scott","tiger");
		     String order_no= (String)request.getSession(false).getAttribute("order_no");
		 	
		     System.out.println("id"+order_no);
		     st1= con.prepareStatement("delete from sales_order_details where sales_order_number='"+order_no+"'");
			st= con.prepareStatement("delete from sales_order_master where sales_order_number='"+order_no+"'");
			int i = st1.executeUpdate();
			int i1=st.executeUpdate();
			if(i!=0&&i1!=0)
			pw.println("Deleting row...");
			else if (i==0&&i1==0)
			{
			pw.println("<br>Row has been deleted successfully.");
			}
			}
			
			catch(SQLException sx)
			{
			pw.println(sx);
			pw.println("Cannot delete child table");
			}
			catch(ClassNotFoundException cx)
			{
			pw.println(cx);
			}
			
			
			}
			}
			