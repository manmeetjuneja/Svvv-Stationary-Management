package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SignUp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("      <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("      <title>   Signup  </title>\n");
      out.write("      <link href=\"bootstrap/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("</head>\n");
      out.write("<body background=\"images\\background.jpg\">\n");
      out.write("         \n");
      out.write("<div class=\"topnav\">\n");
      out.write("<center>\n");
      out.write("    <img src=\"images\\svvv logo.png\"/> \n");
      out.write("</center>\n");
      out.write("  <a  href=\"index.html\">Home</a>\n");
      out.write("  <a class=\"active\" href=\"SignUp.jsp\">Signup</a>\n");
      out.write("  <a href=\"ContactUs.jsp\">Contact-Us</a>\n");
      out.write("  <a href=\"AboutUs.jsp\">About-US</a>\n");
      out.write("</div>\n");
      out.write("     <center><h2> Sign UP </h2> </center>\n");
      out.write("    <div align = \"center\">\n");
      out.write("        <form action=\"Database_signup.jsp\" method=\"post\">\n");
      out.write("\n");
      out.write("            <table cellpadding=\"2\" class=\"table-responsive-md table-info\">\n");
      out.write("            <tbody>\n");
      out.write("            <tr>\n");
      out.write("                <td>EMPLOYEE NAME:</td>\n");
      out.write("                <td> <input type=\"text\" name=\"employee_name\" required=\"true\"/> </td>\n");
      out.write("            </tr>\n");
      out.write("            <br/>\n");
      out.write("                \n");
      out.write("            <tr>\n");
      out.write("                <td>EMPLOYEE ID:</td>\n");
      out.write("                <td><input type=\"text\" name=\"employee_id\" required=\"true\"/> </td>\n");
      out.write("            </tr>\n");
      out.write("            <br>\n");
      out.write("            <tr>\n");
      out.write("                <td>PASSWORD :</td>\n");
      out.write("                <td><input type=\"password\" name=\"password\" required=\"true\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            <br>\n");
      out.write("            \n");
      out.write("            <tr>\n");
      out.write("                <td> <input type=\"radio\" name=\"user\" value = \"GeneralUser\" required=\"true\"> General User </input></td>\n");
      out.write("                <td> <input type=\"radio\" name=\"user\" value=\"Admin\" required=\"true\"> Admin </input></td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("            <br/>\n");
      out.write("            <br/>\n");
      out.write("\n");
      out.write("              <td>\n");
      out.write("                  <input type=\"submit\" value = \"Submit\" class=\"btn-info\"/> \n");
      out.write("              </td>  \n");
      out.write("              <td>\n");
      out.write("                <input type=\"reset\" value=\"Reset\" class=\"btn-warning\"/>\n");
      out.write("              </td>\n");
      out.write("    \n");
      out.write("            </tbody>\n");
      out.write("            </table>\n");
      out.write("        </form>  \n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("<style>\n");
      out.write("body {\n");
      out.write("  margin: 0;\n");
      out.write("  font-family: Arial, Helvetica, sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav {\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color:#5DADE2;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a {\n");
      out.write("  float: left;\n");
      out.write("  color: #f2f2f2;                                                   \n");
      out.write("  text-align: center;\n");
      out.write("  padding: 14px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  font-size: 17px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a:hover {\n");
      out.write("  background-color: #ddd;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topnav a.active {\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write("  background-image: url('background.jpg');\n");
      out.write("  background-repeat: no-repeat;\n");
      out.write("  background-attachment: fixed;\n");
      out.write("  background-size: 100% 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>");
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
