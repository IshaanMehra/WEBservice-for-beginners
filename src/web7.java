import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class web7
{
    public static void main(String[] args) 
    {
        DBase db = new DBase();
        Connection conn = db.connect(
        		"jdbc:oracle:thin:@192.168.1.120:1524:VIS","scott","tiger");
        db.importData(conn,args[0]);
    }
 
}
 
class DBase
{
    public DBase()
    {
    }
 
    public Connection connect(String db_connect_str, 
  String db_userid, String db_password)
    {
        Connection conn;
        try 
        {
            Class.forName(  
            		"oracle.jdbc.OracleDriver").newInstance();
 
            conn = DriverManager.getConnection(db_connect_str, 
    db_userid, db_password);
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
            conn = null;
        }
 
        return conn;    
    }
    
    public void importData(Connection conn,String filename)
    {
        Statement stmt;
        String query;
 
        try
        {
            stmt = conn.createStatement(
    ResultSet.TYPE_SCROLL_SENSITIVE,
    ResultSet.CONCUR_UPDATABLE);
 
            query = "LOAD DATA INFILE '"+filename+"' INTO TABLE lines_table  FIELDS TERMINATED BY ',' (line_number,col1,col2,col3)";
 
            stmt.executeUpdate(query);
                
        }
        catch(Exception e)
        {
            e.printStackTrace();
            stmt = null;
        }
    }
};
