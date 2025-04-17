<%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		    <style type="text/css">
<!--
.style1 {color: #FFFF00}
.style3 {color: #FFFFFF}
.style5 {color: #000000}
.style6 {color: #FF0000}
.style7 {font-weight: bold}
.style8 {font-weight: bold}
.style9 {font-weight: bold}
.style10 {font-weight: bold}
.style11 {font-weight: bold}
.style12 {font-weight: bold}
-->
            </style>
		      




          <h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of chain 
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,hsign,s111;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(Attack_hash_code) from datasets ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from datasets where Attack_hash_code = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							s111=rs.getString(12);
							
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
	font-size:18px;
}
-->
         </style>
				 
		
		  <table width="535" border="1" align="center"  cellpadding="0" cellspacing="0">
        <tr>

		  	


<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>Fid</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>App_name</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style10 style16 style15 style14 style25"><strong>size_bytes</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style16 style15 style14 style25"><strong>rating_count_tot</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style16 style15 style14 style25"><strong>rating_count_ver</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style16 style15 style14 style25"><strong>user_rating</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style16 style15 style14 style25"><strong>user_rating_ver</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style16 style15 style14 style25"><strong>ver</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style16 style15 style14 style25"><strong>prime_genre</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style16 style15 style14 style25"><strong>sup_devices_num</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style16 style15 style14 style25"><strong>Attack_Type</strong></div></td>	
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style16 style15 style14 style25"><strong>Dt</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style16 style15 style14 style25"><strong>Attack_hash_code</strong></div></td>
<td  width="35" height="50" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style6 style16 style15 style14 style25"><strong>prime_genre_hash_code</strong></div></td>
        </tr>
		   
		 
        <pre> <h2 align="center">
<p align="center" class="style1">
       <span class="style1">Apps Based Attack  Chain--->::</span> <%=s111%><br>
		<span class="style1">Apps Based Attack  Hash Code --->::</span><%=hsign%></p>
	     </h2></pre>
			<div align="center">
			  <%
							
							}
								
										s1=rs.getString(2);
				                		s2=rs.getString(3);//
										s3=rs.getString(4);
										s4=rs.getString(5);//
										s5=rs.getString(6);
										s6=rs.getString(7);
										s7=rs.getString(8);
										s8=rs.getString(9);
										s9=rs.getString(10);
										s10=rs.getString(11);
										s11=rs.getString(12);
										s12=rs.getString(13);
										s13=rs.getString(14);
										s14=rs.getString(15);
										
										
										 
								
					
					
					%>
	      <tr>
		  <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7 style1 style2">&nbsp;</p>
                <%out.println(s1);%>
                <p>&nbsp; </p>
              </div></td>
          <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7 style1 style2">&nbsp;</p>
                <%out.println(s2);%>
                <p>&nbsp; </p>
              </div></td>
         
          <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7 style1 style3">&nbsp;</p>
                <%out.println(s3);%>
                <p>&nbsp; </p>
              </div></td>
		  
		  <td height="62" align="center"  valign="middle"><div align="center" class="style5 style26 style15 style16 style11 style7 style1 style4">&nbsp;</p>
                <%out.println(s4);%>
                <p>&nbsp; </p>
              </div></td>
		  <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style7 style1 style5">&nbsp;</p>
		  <%out.println(s5);%>
              <p>&nbsp; </p>
              </div></td>
			  
		  <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style7 style1 style6">&nbsp;</p>
		  <%out.println(s6);%>
              <p>&nbsp; </p>
              </div></td>
			  <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style1 style7">&nbsp;</p>
		 <%out.println(s7);%>
              <p>&nbsp; </p>
              </div></td>
			  <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style1 style8">&nbsp;</p>
		  <%out.println(s8);%>
              <p>&nbsp; </p>
              </div></td>
			  <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style1 style9">&nbsp;</p>
		  <%out.println(s9);%>
              <p>&nbsp; </p>
              </div></td>
			  <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style11 style1 style10">&nbsp;</p>
		  <%out.println(s10);%>
              <p>&nbsp; </p>
              </div></td>
			  <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style1 style11">&nbsp;</p>
		  <%out.println(s11);%>
              <p>&nbsp; </p>
              </div></td>
			  <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style1 style12">&nbsp;</p>
		 <%out.println(s12);%>
              <p>&nbsp; </p>
              </div></td>
			   <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style1 style12">&nbsp;</p>
		 <%out.println(s13);%>
              <p>&nbsp; </p>
              </div></td>
			   <td height="62" align="center"  valign="middle"><div align="center" class="style26 style15 style16 style1 style12">&nbsp;</p>
		 <%out.println(s14);%>
              <p>&nbsp; </p>
              </div></td>
			  
	      </tr>
	    <%
					 
			   }
			   
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%> 