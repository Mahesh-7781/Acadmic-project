<style type="text/css">
<!--
.style1 {color: #FF0000}
.style2 {font-weight: bold}
.style3 {font-weight: bold}
.style4 {font-weight: bold}
.style5 {font-weight: bold}
.style6 {font-weight: bold}
.style7 {font-weight: bold}
.style8 {font-weight: bold}
.style9 {font-weight: bold}
.style10 {font-weight: bold}
.style11 {font-weight: bold}
.style12 {font-weight: bold}
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
		
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
        <%
					    
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;
						int i=1;
						try 
						{
								
								
								Statement stmt1=connection.createStatement();
								String strQuery1 = "select * from datasets";
								ResultSet rs = stmt1.executeQuery(strQuery1);
					   			while ( rs.next() )
								{
										
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
                
				                
				i=i+1;

						}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      
  </table>		  

		  
		  

		 