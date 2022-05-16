/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.52
 * Generated at: 2021-10-22 13:34:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.io.File;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

public final class BookInfo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


	ArrayList<BookPackage.BookListInfo> list = new ArrayList<BookPackage.BookListInfo>();

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.oreilly.servlet.multipart.DefaultFileRenamePolicy");
    _jspx_imports_classes.add("java.io.File");
    _jspx_imports_classes.add("com.oreilly.servlet.MultipartRequest");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

	request.setCharacterEncoding("utf-8");
 	String fileSave="/fileSave";
 	String real = application.getRealPath(fileSave);
 	int max = 1024 * 1024 * 10;
 	MultipartRequest mr =
 			new MultipartRequest(request, real, max,"utf-8", 
 					new DefaultFileRenamePolicy());
 	
 	String bcode = mr.getParameter("bcode");
	String bname = mr.getParameter("bname");
	String bprice = mr.getParameter("bprice");
	String bwriter = mr.getParameter("bwriter");
	String bcompany = mr.getParameter("bcompany");
	String bbirthday = mr.getParameter("bbirthday");
	String bpage = mr.getParameter("bpage");
	String binformation = mr.getParameter("binformation");
	String bgroup = mr.getParameter("bgroup");
	String binventory = mr.getParameter("binventory");
	String bstate = mr.getParameter("bstate");
	String filename = mr.getFilesystemName("file");
	String original = mr.getOriginalFileName("file");
	

      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');

	BookPackage.BookListInfo bli = new BookPackage.BookListInfo();
	bli.setBname(bname);
	bli.setBprice(bprice);
	bli.setBwriter(bwriter);
	bli.setBcompany(bcompany);
	bli.setBinformation(binformation);
	bli.setFilename(filename);
	list.add(bli);
	session.setAttribute("list", list);

      out.write("\r\n");
      out.write("	\r\n");
      out.write("	<table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("		<tr><td bgcolor=\"black\">\r\n");
      out.write("		");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/menu.jsp", out, false);
      out.write("\r\n");
      out.write("		</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr height=\"100\"><td bgcolor=\"lightgray\">\r\n");
      out.write("		<h2 align=\"left\">&emsp;도서 정보</h2>\r\n");
      out.write("		</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("	</table>\r\n");
      out.write("	<table width=\"60%\" height=\"100\">\r\n");
      out.write("	<tr>\r\n");
      out.write("	<td width=\"300\">\r\n");
      out.write("	<img alt=\"");
      out.print( filename);
      out.write("\" src=\"fileSave/");
      out.print( filename);
      out.write("\" height=\"350\" align=\"middle\">\r\n");
      out.write("	</td>\r\n");
      out.write("	<td>\r\n");
      out.write("	<h1>\r\n");
      out.write("	");
      out.print(bname );
      out.write("\r\n");
      out.write("	</h1>\r\n");
      out.write("	<h4>\r\n");
      out.write("	");
      out.print(binformation );
      out.write("\r\n");
      out.write("	<p>\r\n");
      out.write("	도서코드 : ");
      out.print( bcode );
      out.write("<br>\r\n");
      out.write("	저자 : ");
      out.print( bwriter );
      out.write("<br>\r\n");
      out.write("	출판사 : ");
      out.print( bcompany );
      out.write("<br>\r\n");
      out.write("	출판일 : ");
      out.print( bbirthday );
      out.write("<br>\r\n");
      out.write("	총 페이지 수 : ");
      out.print( bpage );
      out.write("<br>\r\n");
      out.write("	재고 수 : ");
      out.print( binventory );
      out.write("<br>\r\n");
      out.write("	분류 : ");
      out.print( bgroup );
      out.write("<br>\r\n");
      out.write("	상태 : ");
      out.print( bstate );
      out.write("<br>\r\n");
      out.write("	가격 : ");
      out.print( bprice );
      out.write("<br>\r\n");
      out.write("	</h4>\r\n");
      out.write("		<form action=\"BookList.jsp\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("			<input type=\"submit\" value=\"도서목록\" >\r\n");
      out.write("		</form>\r\n");
      out.write("	</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<hr>\r\n");
      out.write("		");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
