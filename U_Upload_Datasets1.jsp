<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Upload_Datasets</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {
	font-weight: bold;
	font-style: italic;
	color: #000000;
}
.style3 {color: #FF00FF}
.style4 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">Behavioral Model for Live Detection of Apps Based Attack   </a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
          <li></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
         <h2><span class="style3">Upload Datasets...</span><br />
         </h2>
            
          
		   <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 
 
    <%@ page import ="java.io.FileNotFoundException" %>  
    <%@ page import ="java.io.IOException" %>  
    <%@ page import ="java.util.Iterator" %>  
    <%@ page import ="java.util.ArrayList" %> 
    <%@ page import="org.apache.poi.xssf.usermodel.*" %>
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
    <%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>
    <%@ page import="org.apache.poi.ss.usermodel.Cell" %>
    <%@ page import ="org.apache.poi.ss.usermodel.Row"%>
    <%@ page import="org.apache.poi.ss.usermodel.Sheet" %>
    <%@ page import="org.apache.poi.ss.usermodel.Workbook" %>
    <%@ page import ="org.apache.poi.xssf.usermodel.XSSFWorkbook" %>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
	
	
 
	
    <%
    try{
	
	
        String fname=request.getParameter("fname");
		
		String sql="delete from datasets";
		Statement stmt = connection.createStatement();
		stmt.executeUpdate(sql);
		
	   String Fid,	
		App_name,	
		size_bytes,	
		rating_count_tot,	
		rating_count_ver,	
		user_rating,	
		user_rating_ver,	
		ver,	
		prime_genre,	
		sup_devices_num,	
		Attack_Type,	
		Dt;
		
       connection.setAutoCommit(false);
       PreparedStatement pstm = null ;
       FileInputStream input = new FileInputStream(getServletContext().getRealPath("/")+"//"+fname);
	  
	  
       POIFSFileSystem fs = new POIFSFileSystem(input); //creating a new poi reference to the given excel file
       HSSFWorkbook wb = new HSSFWorkbook(fs);
       HSSFSheet sheet = wb.getSheetAt(0);
       Row row;
       Statement st=connection.createStatement();
       for(int i=1; i<=sheet.getLastRowNum(); i++){  //points to the starting of excel i.e excel first row
           row = (Row) sheet.getRow(i);  //sheet number
 
                  if( row.getCell(0)==null) { Fid = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else Fid = row.getCell(0).toString();   //else copies cell data to name variable
				  
				  if( row.getCell(1)==null) { App_name = "0";}
				  else App_name = row.getCell(1).toString();
				  
				  if( row.getCell(2)==null) { size_bytes = "0";}
				  else size_bytes = row.getCell(2).toString();
				  
				  if( row.getCell(3)==null) { rating_count_tot = "0";}
				  else rating_count_tot = row.getCell(3).toString();
				  
				  if( row.getCell(4)==null) { rating_count_ver = "0";}
				  else rating_count_ver = row.getCell(4).toString();
				  
				  if( row.getCell(5)==null) { user_rating = "0";}
				  else user_rating= row.getCell(5).toString();
				  
				  if( row.getCell(6)==null) { user_rating_ver= "0";}
				  else user_rating_ver = row.getCell(6).toString();
				  
				  if( row.getCell(7)==null) { ver= "0";}
				  else ver = row.getCell(7).toString();
				  
				  if( row.getCell(8)==null) { prime_genre= "0";}
				  else prime_genre = row.getCell(8).toString();
				  
				  if( row.getCell(9)==null) { sup_devices_num= "0";}
				  else sup_devices_num = row.getCell(9).toString();
				  
				  
				  if( row.getCell(10)==null) { Attack_Type= "0";}
				  else Attack_Type = row.getCell(10).toString();
				  
				  
				   if( row.getCell(11)==null) { Dt= "0";}
				  else Dt = row.getCell(11).toString();
				  

				 	String filename1="filename.txt";
      				PrintStream p1 = new PrintStream(new FileOutputStream(filename1));
					p1.print(new String(Attack_Type));
			
					MessageDigest md1 = MessageDigest.getInstance("SHA1");
					FileInputStream fis111 = new FileInputStream(filename1);
					DigestInputStream dis11 = new DigestInputStream(fis111, md1);
					BufferedInputStream bis11 = new BufferedInputStream(dis11);
					//Read the bis so SHA1 is auto calculated at dis					
					while (true) {
						int b11 = bis11.read();
						if (b11 == -1)
							break;
					}
 
					BigInteger bi11 = new BigInteger(md1.digest());
					String spl11 = bi11.toString();
					String h1 = bi11.toString(16);
					
					String filename="filename1.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(prime_genre));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h2= bi1.toString(16);
					
					
									
				
         String sq="INSERT INTO datasets(Fid,App_name,size_bytes,rating_count_tot,rating_count_ver,user_rating,user_rating_ver,ver,prime_genre,sup_devices_num,Attack_Type,	          Dt,Attack_hash_code,prime_genre_hash_code)VALUES('"+Fid+"','"+App_name+"','"+size_bytes+"','"+rating_count_tot+"','"+rating_count_ver+"','"+user_rating+"','"+user_rating_ver+"','"+ver+"','"+prime_genre+"','"+sup_devices_num+"','"+Attack_Type+"','"+Dt+"','"+h1+"','"+h2+"')";                   
 
           pstm = (PreparedStatement) connection.prepareStatement(sq);
           pstm.execute();
           
       }
       connection.commit();
       pstm.close();
       connection.close();
       input.close();
 
   }catch(Exception e){
       out.println(e);
   }
 
 
%>
		  <h2>Datasets Imported Successfully !!!</h2>
		  
            </span>
            <p align="right">&nbsp;</p>
			<p align="right"><a href="U_Main.jsp" class="style2">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <ul class="sb_menu style2">
            <li><a href="U_Main.jsp">User Home</a></li>
            <li><a href="U_Login.jsp">LogOut</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"><a href='http://all-free-download.com/free-website-templates/'></a></div>
    </div>
  </div>
</div>
</body>
</html>
