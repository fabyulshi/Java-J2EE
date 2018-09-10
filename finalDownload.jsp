<%@page import="java.io.*,java.net.*"%>

<%!
public static String getMimeType(String fileUrl)
    throws java.io.IOException, MalformedURLException 
  {
    String type = null;
    URL u = new URL(fileUrl);
    URLConnection uc = null;
    uc = u.openConnection();
    type = uc.getContentType();
    return type;
  }

%>
 <%
    String file=request.getParameter("fname");
	String filedata=request.getParameter("file");
    File f = new File (file);
    String filename=f.getName();
    String type=getMimeType("file:"+file);

    response.setContentType (type);
    response.setHeader ("Content-Disposition", "attachment;     filename=\""+filename+"\"");

    String name = f.getName().substring(f.getName().lastIndexOf("/") + 1,f.getName().length());
   
        ServletOutputStream outs = response.getOutputStream();

            try {
                        outs.write(filedata.getBytes());
                    
                        } catch (IOException ioe) {
                        ioe.printStackTrace(System.out);
                    }
                        outs.flush();
                    outs.close();
                   

        %>