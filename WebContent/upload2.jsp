<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<html>
<%
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
 
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
System.out.println("saveFile=" + saveFile);
saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+ 1,saveFile.indexOf("\""));
System.out.println("saveFile" + saveFile);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+ 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
 
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
 
FileOutputStream fileOut = new FileOutputStream(saveFile);
fileOut.write(dataBytes, startPos, (endPos - startPos));
%>
<b>File <% out.println(saveFile); %> has been uploaded and inserted into Database.</b>
<%Connection con=null;
Statement pst=null;
String line = null;
String value=null;
try{
StringBuilder contents = new StringBuilder();
BufferedReader input = new BufferedReader(new FileReader(saveFile));
while (( line = input.readLine()) != null){
contents.append(line);
String cvsSplitBy = ",";
String blankCell = null;
// use comma as separator
String[] cols = line.split(cvsSplitBy);
//for (int i = 0; i < cols.length; i++){
  //  System.out.println("Coulmns = " + cols[i]);  
//}
try
{
Class.forName("oracle.jdbc.OracleDriver");
con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.120:1524:VIS","scott","tiger");
		
		 

for (int j = 0; j < cols.length; j++){
	
String columns;
	   pst=con.createStatement(); 
	   if(j % 4 == 0)
	   {
           System.out.println("Column1:"+cols[j]);
	   int val = pst.executeUpdate("insert into lines_table(line_number) values('"+cols[j]+"')"); 
	   
	   }
       else if(j % 4 == 1)
       {
    	   int val1 = pst.executeUpdate("insert into lines_table(col1) values('"+cols[j]+"')"); 
		System.out.println("Column2:"+cols[j]);
       }
       else if(j % 4 == 2)
       {   int val2 = pst.executeUpdate("insert into lines_table(col2) values('"+cols[j]+"')"); 
		System.out.println("Column3:"+cols[j]);
       }
       else if(j % 4 == 3)
       {
      	   int val3 = pst.executeUpdate("insert into lines_table(col3) values('"+cols[j]+"')"); 
		System.out.println("Column4:"+cols[j]);
       }

		

}
}
catch(Exception e)

{
	 e.printStackTrace();
}
}
value = contents.toString();
System.out.println("Value:"+value);



}

catch(Exception e)
{
	}
}
%>
</html>