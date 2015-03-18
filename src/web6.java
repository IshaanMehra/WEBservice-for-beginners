import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class web4
 */
public class web6 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public web6() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 Connection con=null;
		 Statement st=null;
		 ServletContext servletContext = getServletContext();
		 String contextPath = servletContext.getRealPath(File.separator);



		 try {
		  

//		 	String content = "This is the content to write into file";
//		 	response.setContentType("text/html";   
//		 	PrintWriter out = response.getWriter();   
		 String filename = "C:/UI/dev1/.metadata/.plugins/org.eclipse.wst.server.core/tmp2/wtpwebapps/WEB5/filename8.txt";    
//		 	String filepath = "e:\\";    
//		 	response.setContentType("APPLICATION/OCTET-STREAM";    
//		 	response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\""


		 File file = new File("C:/UI/dev1/.metadata/.plugins/org.eclipse.wst.server.core/tmp2/wtpwebapps/WEB5/filename8.txt");
		 response.setContentType("text/html");
		    
		 response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");



		 // if file doesnt exists, then create it
		 if (!file.exists()) {
		 file.createNewFile();
		 }
		 FileWriter fw = new FileWriter(file.getAbsoluteFile());
		 BufferedWriter bw = new BufferedWriter(fw);
		 PrintWriter out=response.getWriter();



//		 	 fw.append("this is a file";
//		 	fw.append("Sales order number";
//		 	fw.append(rs.getString(1));


		 System.out.println("Done");


		 Class.forName("oracle.jdbc.OracleDriver");
		 con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.120:1524:VIS","scott","tiger");

		  String queryText3="select * from sales_order_master ";

		 st = con.createStatement();
		 out.println("context path is        "+contextPath);	

		 ResultSet	 rs=st.executeQuery(queryText3);
		 fw.append('\n');
		 fw.append("sales order number");
		
		 fw.append(',');
		 fw.append("Customer name");
		 fw.append(',');
		 fw.append("Customer address1");
		 fw.append(',');
		 fw.append("Customer address2");
		 fw.append('\n');

		 System.out.println("Done");
		 while( rs.next())
		 {
		 fw.append('\n');
		 fw.append(rs.getString(1));
		 fw.append(',');
		 fw.append(rs.getString(2));
		 fw.append(',');
		 fw.append(rs.getString(3));
		 fw.append(',');
		 fw.append(rs.getString(4));
		fw.append('\n');
		 }
		 bw.close();
		 fw.close();

		 System.out.println("Done");
		  
		 } catch (Exception e) {
		 e.printStackTrace();
		 }
		 }
		
	
			   //	ServletContext servletContext = getServletContext();
    		//String contextPath = servletContext.getRealPath(File.separator);
    		//PrintWriter out = response.getWriter();
    		//out.println("<br/>File system context path (in TestServlet): " + contextPath);
	        	
		
		

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
