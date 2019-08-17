package com.firstProject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstProject extends HttpServlet {
	public FirstProject(){
		super();
		System.out.println("inside the no-arg constructor()");
	}

	//important 2 methods- doGet and doPost
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		doPost(req, resp);
//	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstName=req.getParameter("fname");
		String lastName=req.getParameter("lname");
		String fullName=firstName+lastName;
//		System.out.println("My name is "+fullName);
//		PrintWriter writer=resp.getWriter();
//		writer.println("<html><body><h1>My name is "+fullName+"</h1></body></html>");
//		resp.sendRedirect("https://www.google.com");
//		resp.sendRedirect("test.html");
		req.setAttribute("name", fullName);
		RequestDispatcher dispatcher=req.getRequestDispatcher("/NewFile.jsp");
		dispatcher.forward(req ,resp);
	}
	@Override
	public void init() throws ServletException {
		super.init();
		System.out.println("inside the init()");
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.service(req, resp);
		System.out.println("inside the service()");
	}
	@Override
	public void destroy() {
		super.destroy();
		System.out.println("inside the destroy()");
	}
}
 