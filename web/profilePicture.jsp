<%-- 
    Document   : TempFiles
    Created on : Sep 12, 2018, 12:57:56 PM
    Author     : YASH
--%>

<%@page import="com.utility.UploadProfilePic"%>
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
            String stud_id = (String) session.getAttribute("pic_stu_id");
            
            System.out.println(stud_id);
            try{
            ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
            List<FileItem> multifiles = sf.parseRequest(request);
            
            File fileLoc = new File("E:\\Workspace\\EZEON_WORKSPACE\\AppinDispatchManagement\\web\\profile_picture\\" +stud_id.replace("/", "-"));
            //File fileLoc = new File("E:\\Workspace\\EZEON_WORKSPACE\\AppinDispatchManagement\\web\\profile_picture\\" +stud_id.replace("/", "-"));
            String url = fileLoc.getAbsolutePath();
            
            
            
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
                    String newUrl = url +"/"+ item.getName();
                    //System.out.println(newUrl);
                    UploadProfilePic.UploadPicture(newUrl.replace("\\", "/"), stud_id);
                }
            }
        } catch (FileUploadException fex) {
            System.out.println("File Uploading exception..."+fex);
        } catch (Exception ex) {
            System.out.println("Exception occured..."+ex);
        }
        response.sendRedirect("profileStud.jsp?id="+stud_id);
    %>
    <body>
        
    </body>
</html>
