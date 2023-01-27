package com.btm.registers.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.btm.registers.dao.UserDao;
import com.btm.registers.entity.User;
import com.btm.registers.helper.FactoryProvider;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try{
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			UserDao userDao = new UserDao(FactoryProvider.getFactory());
			User userlist = userDao.getUserByEmailAndPassword(email, password);
			
			HttpSession httpSession = request.getSession();
			
			
			if(userlist==null){
				
				httpSession.setAttribute("msg", "Invalid Details.. Try Again..!!!");
				response.sendRedirect("login.jsp");
				return;
			}else {
				System.out.println("Welcome");
				response.getWriter().println("<h1> Welcome "+ userlist.getName() + "</h1>");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}
	

}
