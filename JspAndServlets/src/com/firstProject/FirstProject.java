package com.firstProject;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstProject extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Student st=new Student();
		st.setName("Tamil");
		
		String firstName=req.getParameter("fname");
		String lastName=req.getParameter("lname");
		String fullName=firstName+lastName;
		req.setAttribute("name", fullName);
		req.setAttribute("st", st);
		RequestDispatcher dispatcher=req.getRequestDispatcher("/NewFile.jsp");
		dispatcher.forward(req ,resp);
	}
	
}
 