package com.firstProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstProject extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Student> list =new ArrayList<Student>(); 	
		Student st=new Student();
		st.setName("Tamil");
		st.setAge(22);
		st.setLocation("xxxx");
		list.add(st);
		st=new Student();
		st.setName("Tamilselvy");
		st.setAge(12);
		st.setLocation("yyyyy");
		list.add(st);
		 	
		req.setAttribute("stlist", list);
		String firstName=req.getParameter("fname");
		String lastName=req.getParameter("lname");
		String fullName=firstName+lastName;
		
		String[] colors ={"red", "blue", "green", "yellow", "violet", "orange"};
		
		req.setAttribute("name", fullName);
		req.setAttribute("st", st);
		req.setAttribute("col", colors);
		RequestDispatcher dispatcher=req.getRequestDispatcher("/NewFile.jsp");
		dispatcher.forward(req ,resp);
	}
	
}
 