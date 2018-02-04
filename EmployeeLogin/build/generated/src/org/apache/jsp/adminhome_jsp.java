package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"utf-8\">\r\n");
      out.write("\t<title>Login Form</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"style1.css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"box\">\r\n");
      out.write("    \t<h1 style=\"font-size: 35px; font-weight: bold;\">Admin Control Panel</h1>\r\n");
      out.write("    \t<br><br>\r\n");
      out.write("    \t<a style=\"text-decoration: none; color: #fff; font-size: 24px; font--family: abel\" href=\"adminhome.html\">Home</a>\r\n");
      out.write("        <br><br>\r\n");
      out.write("    \t<a style=\"text-decoration: none; color: #9EA38D; font-size: 24px; font--family: abel\" href=\"viewtable.jsp\">View Employee Table</a>\r\n");
      out.write("        <br><br>\r\n");
      out.write("    \t<a style=\"text-decoration: none; color: #9EA38D; font-size: 24px; font--family: abel\" href=\"addemployee.html\">Add Employee</a>\r\n");
      out.write("        <br><br>\r\n");
      out.write("    \t<a style=\"text-decoration: none; color: #9EA38D; font-size: 24px; font--family: abel\" href=\"#\">Search Employee</a>\r\n");
      out.write("        <br><br>\r\n");
      out.write("  \r\n");
      out.write("    \t<a style=\"text-decoration: none; color: #9EA38D; font-size: 24px; font--family: abel\" href=\"delemp.html\">Delete Employee</a>\r\n");
      out.write("    \t<br><br>\r\n");
      out.write("        <br><br>\r\n");
      out.write("    \t<a style=\"text-decoration: none; color: #fff; font-size: 24px; font--family: abel\" href=\"index.html\">Logout</a>\r\n");
      out.write("        \r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
