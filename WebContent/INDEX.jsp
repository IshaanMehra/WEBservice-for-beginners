<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<script type="text/javascript">
        function validateForm()
        {
        	var frm = document.forms["myform"];
            
        var x=document.forms["myForm"]["sales_order_number"].value;
        var y=document.forms["myForm"]["cust_name"].value;
        var z=document.forms["myForm"]["cust_address1"].value;
        var w=document.forms["myForm"]["cust_address2"].value;
      var m=document.forms["myForm"]["sales_order_number1"].value; 
        var n=document.forms["myForm"]["line_number"].value;
        var o=document.forms["myForm"]["item_number"].value;
        var p=document.forms["myForm"]["item_name"].value;
        var q=document.forms["myForm"]["qty"].value;
        var r=document.forms["myForm"]["unit_price"].value;
        var s=document.forms["myForm"]["amount"].value=parseFloat(r)*parseFloat(q);

        if ((x==null || x==""))
		{
	alert("form is not valid,Enter same balue for id");
	return false;
		}
        else	if ((y==null || y==""))
		{
	alert("form is not valid");
	return false;
		}
        else    if ((z==null || z==""))
        {
	alert("form is not valid");
	return false;
		}
        else if ((w==null || w==""))
		{
	alert("form is not valid");
	return false;
		}
        else if ((m==null || m=="")||m!=x)
        		{
    		alert("form is not valid,Enter same balue for id");
    		return false;
        		}
     
        else    if((n==null || n==""))
                	{
    		alert("form is not valid");
    		return false;
                	}
        		
        else    if ((o==null || o==""))
        		{
    		alert("form is not valid");
    		return false;
        		}
        else	 if 
        		((p==null || p==""))
        		{
            		alert("form is not valid");
            		return false;
                		} 
        else	if ((q==null || q==""))
                		{
                    		alert("form is not valid");
                    		return false;
                        		} 
        else    		if ((r==null || r==""))
                        		{
                            		alert("form is not valid");
                            		return false;
                                		} 
        else            		if ((s==null || s==""))
                                		{
                                    		alert("form is not valid");
                                    		return false;
                                        		}
        else if(isNaN(myForm.line_number.value)) 
        { 
          alert("Invalid data format.\n\nOnly numbers are allowed."); 
         
          return (false); 
        }
        else if(isNaN(myForm.sales_order_number.value)) 
        { 
          alert("Invalid data format.\n\nOnly numbers are allowed."); 
         
          return (false); 
        }
        else if(isNaN(myForm.line_number.value)) 
        { 
          alert("Invalid data format.\n\nOnly numbers are allowed."); 

          return (false); 
        } else if(isNaN(myForm.item_number.value)) 
        { 
        	  alert("Invalid data format.\n\nOnly numbers are allowed."); 
        	 
        	  return (false); 
        	}else if(isNaN(myForm.sales_order_number.value)) 
        	{ 
        		  alert("Invalid data format.\n\nOnly numbers are allowed."); 
        		
        		  return (false); 
        		}else if(isNaN(myForm.qty.value)) 
        		{ 
        			  alert("Invalid data format.\n\nOnly numbers are allowed."); 
        		
        			  return (false); 
        			}
        		else if(isNaN(myForm.unit_price.value)) 
        		{ 
        			  alert("Invalid data format.\n\nOnly numbers are allowed."); 
        			
        			  return (false); 
        			}else if(isNaN(myForm.amount.value)) 
        			{ 
        				  alert("Invalid data format.\n\nOnly numbers are allowed."); 
        			
        				  return (false); 
        				}
                
        						        
else 
            alert("Form is valid! Submitting form...");
          document.forms.myForm.submit();
            return true;
          
    
                                		
        }
</script>

</head>
<body background="C:\Users\ishaan\Downloads\i1.jpg">

<FORM name=myForm action="web1"    method="post" onsubmit="return validateForm()">


<fieldset>
<table>
<h4><font size="5" color=blue>Enter the order details</font></h4>
<tr>
<td><label>sales order number</label></td>
<td><input type=text name="sales_order_number" id="salesorder"></input></td>

<td><label>customer name</label></td>
<td><input type=text name="cust_name"></input></td></td> 
</tr>
<br></br>
<tr><td><label>customer add1</label></td>
<td><input type=text name="cust_address1"></input>
</td>
<td>
<label>customer add2</label></td>
<td><input type=text name="cust_address2"></input><br></br></td>
</tr>
<br></br>
</table>
</fieldset>
<fieldset>
<h4><font size="5" color=blue>Enter the details for sales order</font></h4>
<table>
<tr>
<td><label>Sales order number</label></td>
<td><input type=text name="sales_order_number1"></input></td>
<td><label>Line number</label></td>
<td><input type=text name="line_number"></input></td>
</tr>
<br></br>
<tr>
<td><label>Item number</label></td>
<td><input type=text name="item_number"></input></td>
<td><label>Item name</label></td>
<td><input type=text name="item_name"></input></td>

</tr>
<br></br>
<tr>
<td><label>Quantity</label></td>
<td><input type=text name="qty"></input></td>
<td><label>Unit Price</label></td>
<td><input type=text name="unit_price"></input></td>
</tr>

<tr>
<td><label>Amount</label></td>
<td><input type=text name="amount"></input><br></br></td>
</td>
</table>
</fieldset>

<INPUT TYPE="submit" VALUE="Validate and Submit!" ></input>
<br><a href="HOME.jsp">HOME</a></br>
</form>

</body>
</html>