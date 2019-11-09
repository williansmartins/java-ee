package br.com.impacta.javaweb.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "Representa um servlet de boas vindas!", urlPatterns = { "/HelloServlet" })
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HelloServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String a = request.getParameter("a");
		String b = request.getParameter("b");
		
		int a2 = Integer.parseInt(a);
		int b2 = Integer.parseInt(b);
		
		int resultado = a2 + b2;
		response.getWriter().append("<h1>"+resultado+"</h1>");
			
		
//		for(char i='A'; i<='F'; i++){
//			response.getWriter().append("<h4 style='background-color:#"+i+"0"+i+"a"+i+"b'>" + resultado + "</h4>");
//		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("<h1>agora é via post</h1>");
	}

}
