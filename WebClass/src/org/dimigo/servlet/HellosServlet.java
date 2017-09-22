package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HellosServlet
 */
@WebServlet(description = "1st Servlet", urlPatterns = { "/hello" })
public class HellosServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

    public HellosServlet()
    {
    	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{	
		//Input Data
		request.setCharacterEncoding("utf-8");							// first line
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		System.out.printf("id : %s, name : %s\n", id, name);
		
		// Output Data Content Type Setting
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title> Servlet Text </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Hello, Servlet</h1>");
		out.println("<h1>안녕, 서블릿</h1>");
		out.println("<h2>id : " + id + ", name : " + name + "</h2>");
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("doPost() print");
		doGet(request, response);
	}

	@Override
	public void init() throws ServletException
	{
		// 최초 메모리 로딩 시 1회 호출
		System.out.println("init() calling");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		System.out.println("service() calling");
		super.service(req, resp);
	}
	
	@Override
	public void destroy()
	{
		// 메모리에서 해제 시 호출됨
		// When server was paused or changed source
		System.out.println("destroy() calling");
	}
}
