<HTML>
    <HEAD>
        <TITLE><font size="7" color=red>Database Lookup</font></TITLE>
    </HEAD>
 <script type="text/javascript">
 var a=document.forms["myForm1"][" id"].value;
 if ((x==null || x==""))
	{
alert("form is not valid");
return false;
	}
 else
 {
	 return true;
 }
 </script>
 
    <BODY background="C:\Users\ishaan\Downloads\i4.jpg">
        <H1>Database Lookup</H1>
         
        <FORM name=myform1 ACTION="basic.jsp" METHOD="POST">
             <font size="3" color=red>Please enter the ID of the order details you want to find:</font>
            <BR>
            <INPUT TYPE="TEXT" NAME="id">
            
            <INPUT TYPE="SUBMIT" value="Submit">
           
          
       
        </FORM>
        
       
          <a href="HOME.jsp">HOME</a>
      
    </BODY>
<HTML>