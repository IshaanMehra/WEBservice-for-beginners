
    <%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>

<%@ page import="java.util.List,java.util.ArrayList,java.util.Iterator, java.util.ListIterator"%>
<%@ page import= "static java.lang.System.out"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function validateform1()
{
var m1=document.forms["myForm4"]["sales_order_number"].value; 
var n1=document.forms["myForm4"]["line_number"].value;
var o1=document.forms["myForm4"]["item_number"].value;
var p1=document.forms["myForm4"]["item_name"].value;
var q1=document.forms["myForm4"]["qty"].value;
var r1=document.forms["myForm4"]["unit_price"].value;
var s1=document.forms["myForm4"]["amount"].value=parseFloat(q1)*parseFloat(r1);
var pattern=/\s/;
if (m1==null || m1=="")
{
	
alert("form is not valid");
return false;
}


else	if ((n1==null || n1==""))
{
alert("form is not valid");
return false;
}
else    if ((o1==null || o1==""))
{
alert("form is not valid");
return false;
}
else if ((p1==null || p1==""))
{
alert("form is not valid");
return false;
}
else if ((q1==null || q1==""))
		{
	alert("form is not valid");
	return false;
		}
else if ((r1==null || r1==""))
{
alert("form is not valid");
return false;
}else if ((s1==null || s1==""))
		{
	alert("form is not valid");
	return false;
		}
else if(isNaN(myForm4.line_number.value)) 
{ 
  alert("Invalid data format.\n\nOnly numbers are allowed."); 
 
  return (false); 
}
else if(isNaN(myForm4.line_number.value)) 
{ 
  alert("Invalid data format.\n\nOnly numbers are allowed."); 

  return (false); 
} else if(isNaN(myForm4.item_number.value)) 
{ 
	  alert("Invalid data format.\n\nOnly numbers are allowed."); 
	 
	  return (false); 
	}else if(isNaN(myForm4.sales_order_number.value)) 
	{ 
		  alert("Invalid data format.\n\nOnly numbers are allowed."); 
		
		  return (false); 
		}else if(isNaN(myForm4.qty.value)) 
		{ 
			  alert("Invalid data format.\n\nOnly numbers are allowed."); 
		
			  return (false); 
			}
		else if(isNaN(myForm4.unit_price.value)) 
		{ 
			  alert("Invalid data format.\n\nOnly numbers are allowed."); 
			
			  return (false); 
			}else if(isNaN(myForm4.amount.value)) 
			{ 
				  alert("Invalid data format.\n\nOnly numbers are allowed."); 
			
				  return (false); 
				}
if(myForm4.item_name.value.match(pattern))
{
alert("Whitespaces are not allowed");
return false;
}

else 
    alert("Form is valid! Submitting form...");
  document.forms.myForm4.submit();
    return true;
  

                        		
}
</script>
</head>
<body  background="C:\Users\ishaan\Downloads\i4.jpg">

<% 
           
         
           



  
HttpSession s1=request.getSession();  
            ArrayList styles = (ArrayList) s1.getAttribute("details_1");
            
    
    Iterator iterator = styles.iterator();
    while(iterator.hasNext())
    {
      String element = (String) iterator.next();
      
    	  System.out.println(element);  
    
    }
       %> 
    
        <% 
        for (Iterator<String> iter = styles.iterator(); iter.hasNext(); ) {
        	 
        
        
    	
    
       %> 
<FORM name=myForm4 action="Web3"    method="post"  onsubmit="return validateform1()">


<fieldset>
 
<table>
   
  
         
     
<h4><font size="4">Enter the order details to be updated</font></h4>
<tr>
<td><label>sales order number:</label></td>
 <td><input type=text name="sales_order_number" id="salesorder" value="<%=iter.next()
     %>"  READONLY></input></td>  

<td><label>Line number</label></td>
<td><input type=text name="line_number" value="<%=iter.next()%>"></input></td></td> 
</tr>
<br></br>
<tr><td><label>Item number</label></td>
<td><input type=text name="item_number" value="<%= iter.next()%>  "></input>
</td>
<td>
<label>Item name</label></td>
<td><input type=text name="item_name" value="<%= iter.next()%> "></input></td>

</tr>
<br></br>
<tr><td><label>Quantity</label></td>
<td><input type=text name="qty" value="<%= iter.next()%>  "></input>
</td>
<td>
<label>Unit price</label></td>
<td><input type=text name="unit_price" value="<%= iter.next()%> "></input></td>

</tr>
<br></br>
<tr><td><label>Amount</label></td>
<td><input type=text name="amount" value="<%= iter.next()%>  "></input>
</td>
</table>
       
   <INPUT Name="button2" TYPE="SUBMIT" VALUE="Update"   ></INPUT>
</fieldset>
 
 </form>
 <%
        }
 %>
        
        
     
       
</body>
</html>