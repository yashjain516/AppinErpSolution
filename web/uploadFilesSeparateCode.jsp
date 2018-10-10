<%-- 
    Document   : TempFiles
    Created on : Sep 12, 2018, 12:57:56 PM
    Author     : YASH
--%>

<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <%
            String stud_id = (String) session.getAttribute("sessionSID");
            String stud_name = (String) session.getAttribute("sessionSNAME");
            
            System.out.println(stud_id);
            System.out.println(stud_name);
            try{
            ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
            List<FileItem> multifiles = sf.parseRequest(request);
            
            File fileLoc = new File("E:\\UploadedFiles\\" +stud_id.replace("/", "-")+"-"+stud_name.toUpperCase());
            //File fileLoc = new File("E:\\UploadedFiles\\" +stud_id.replace("/", "-")+"-"+stud_name.toUpperCase());
            
            if (!fileLoc.exists()) {
                if (fileLoc.mkdir()) {
                    System.out.println("Directory is created!");
                } else {
                    System.out.println("Failed to create directory!");
                }
            }
            System.out.println("Hello" + multifiles);
            for (FileItem item : multifiles) {
                if (!item.isFormField()) {
                    System.out.println("Hello inner");
                    item.write(new File(fileLoc + "/" + item.getName()));
                }
            }
        } catch (FileUploadException fex) {
            System.out.println("File Uploading exception..."+fex);
        } catch (Exception ex) {
            System.out.println("Exception occured..."+ex);
        }
         
        getServletConfig().getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    %>
    <body>
        
    </body>
</html>
