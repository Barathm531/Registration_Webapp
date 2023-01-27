package com.btm.registers.servlets;

import java.io.IOException;

import java.io.Serializable;

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import com.btm.registers.entity.User;
import com.btm.registers.helper.FactoryProvider;

@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
			
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");

			
				try {
					
				
				User user = new User(name, email, password, phone, address);
				if(user!=null) {
			    Session ses = FactoryProvider.getFactory().openSession();
			ses.beginTransaction();
			
			  Serializable userId = (Integer) ses.save(user);	
			  
			
			ses.getTransaction().commit();
			ses.close();
			
			
			HttpSession session = request.getSession();
			session.setAttribute("msg", "Registration Successfull.!! Now you can Login");
			
			response.sendRedirect("register.jsp");
			return;
			
				}
				
				} catch (Exception e) {

				}
					

	}

}
