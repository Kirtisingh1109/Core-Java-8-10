package com.rays.cookies;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/set")
public class SetCookies extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		 
		PrintWriter out = resp.getWriter();
		
		String Name = req.getParameter("Login");
		String Value= req.getParameter("password");
		
		Cookie c = new Cookie (Name , Value);
		c.setMaxAge(-1);
		resp.addCookie(c);
	}

}
