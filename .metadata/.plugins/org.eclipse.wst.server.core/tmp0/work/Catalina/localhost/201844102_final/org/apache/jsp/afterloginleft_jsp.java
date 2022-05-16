/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.52
 * Generated at: 2021-12-07 06:33:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class afterloginleft_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

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
    _jspx_imports_classes = null;
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>장르별 노래차트 창</title>\r\n");
      out.write("</head>\r\n");
      out.write("<link href=\"main.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("<style>\r\n");
      out.write("* {\r\n");
      out.write("margin:0;\r\n");
      out.write("padding:0;\r\n");
      out.write("border:0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("body {\r\n");
      out.write("        height: 100vh;\r\n");
      out.write("        background-image: url('goodnight.jpg');\r\n");
      out.write("        background-repeat : no-repeat center;\r\n");
      out.write("        background-size : cover;\r\n");
      out.write("        font-family: 'Jua', sans-serif;\r\n");
      out.write("		display:flex;\r\n");
      out.write("		justify-content:unset;\r\n");
      out.write("		align-items:center;\r\n");
      out.write("		height:100vh;\r\n");
      out.write("		color:white;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<body>\r\n");
      out.write("<header>장르별 노래차트입니다!<br>화면 중간 버튼을 누르면 각각 다른 분야의 음악을 들으러 갈 수 있습니다. 버튼을 누르고 사진을 클릭하세요!</header>\r\n");
      out.write("\r\n");
      out.write("<input type=\"checkbox\" id=\"menuicon\">\r\n");
      out.write("<label for=\"menuicon\">\r\n");
      out.write("	<span></span>\r\n");
      out.write("	<span></span>\r\n");
      out.write("	<span></span>\r\n");
      out.write("</label>\r\n");
      out.write("	<div class=\"sidebar\">\r\n");
      out.write("	<ul>\r\n");
      out.write("	<tr>\r\n");
      out.write("	<td>\r\n");
      out.write("	<br><br>\r\n");
      out.write("	<h1><a href=\"logout_Action.jsp\">로그아웃 하고 메인화면</a></h1>\r\n");
      out.write("	<br>\r\n");
      out.write("	<h1><a href=\"afterlogin.jsp\">다른 메뉴가기</a></h1>\r\n");
      out.write("	<br>\r\n");
      out.write("	</td>\r\n");
      out.write("	<td>\r\n");
      out.write("	<h1><a href=\"afterloginleft.jsp\">장르별 노래차트</a></h1> \r\n");
      out.write("	<br>\r\n");
      out.write("	<h3><a href=\"afterloginleft_1.jsp\">▷실시간 순위</a></h3> \r\n");
      out.write("	<br>\r\n");
      out.write("	<h3><a href=\"afterloginleft_2.jsp\">▷발라드</a></h3> \r\n");
      out.write("	<br>\r\n");
      out.write("	<h3><a href=\"afterloginleft_3.jsp\">▷랩/힙합</a></h3> \r\n");
      out.write("	<br>\r\n");
      out.write("	<h3><a href=\"afterloginleft_4.jsp\">▷트로트</a></h3> \r\n");
      out.write("	<br>\r\n");
      out.write("	<h3><a href=\"afterloginleft_5.jsp\">▷빌보드</a></h3> \r\n");
      out.write("	<br>\r\n");
      out.write("	<h1><a href=\"afterlogincenter.jsp\">음악공유 커뮤니티</a></h1> \r\n");
      out.write("	<br>\r\n");
      out.write("	<h1><a href=\"afterloginright.jsp\">오시는길</a></h1> \r\n");
      out.write("	<br>\r\n");
      out.write("	</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	</ul>\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("<div class=\"tab_content\">\r\n");
      out.write("		\r\n");
      out.write("	<input type=\"radio\" name=\"tabmenu\" id=\"tab01\" checked>\r\n");
      out.write("	<input type=\"radio\" name=\"tabmenu\" id=\"tab02\">\r\n");
      out.write("	<input type=\"radio\" name=\"tabmenu\" id=\"tab03\">\r\n");
      out.write("	<input type=\"radio\" name=\"tabmenu\" id=\"tab04\">\r\n");
      out.write("	<input type=\"radio\" name=\"tabmenu\" id=\"tab05\">\r\n");
      out.write("	\r\n");
      out.write("	<div class=\"conbox con1\" onclick=\"location.href='afterloginleft_1.jsp'\" style=\"cursor:pointer;\">실시간순위 들으러가기</div>\r\n");
      out.write("	<div class=\"conbox con2\" onclick=\"location.href='afterloginleft_2.jsp'\" style=\"cursor:pointer;\">발라드 들으러가기</div>\r\n");
      out.write("	<div class=\"conbox con3\" onclick=\"location.href='afterloginleft_3.jsp'\" style=\"cursor:pointer;\">랩/힙합 들으러가기</div>\r\n");
      out.write("	<div class=\"conbox con4\" onclick=\"location.href='afterloginleft_4.jsp'\" style=\"cursor:pointer;\">트로트 들으러가기</div>\r\n");
      out.write("	<div class=\"conbox con5\" onclick=\"location.href='afterloginleft_5.jsp'\" style=\"cursor:pointer;\">빌보드 들으러가기</div>\r\n");
      out.write("\r\n");
      out.write("	<div class=\"btn\">\r\n");
      out.write("		<label for=\"tab01\">실시간순위</label>\r\n");
      out.write("		<label for=\"tab02\">발라드</label>\r\n");
      out.write("		<label for=\"tab03\">랩/힙합</label>\r\n");
      out.write("		<label for=\"tab04\">트로트</label>\r\n");
      out.write("		<label for=\"tab05\">빌보드</label>\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<footer><hr>");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/footer.jsp", out, false);
      out.write("</footer>\r\n");
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