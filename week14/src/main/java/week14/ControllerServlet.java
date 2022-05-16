package week14;


import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		processRequest(request, response);
	}
	private void processRequest(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String type= request.getParameter("type");
		Object resultobj = null;
		
		if(type ==null || type.equals("greeting")) {
			resultobj="æ»≥Á«œººø‰";
		}else if(type.equals("date")) {
			resultobj = new Date();
		}else {
			resultobj = "Invalid type";
		}
		
		request.setAttribute("result", resultobj);
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("simpleView.jsp");
		dispatcher.forward(request, response);
	}
}
