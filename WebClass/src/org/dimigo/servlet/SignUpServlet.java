package org.dimigo.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.vo.UserVO;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/signup")
public class SignUpServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet()
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/signup.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id = (String)request.getParameter("id");
		String name = (String)request.getParameter("name");
		String nickname = (String)request.getParameter("nickname");
		String pwd = (String)request.getParameter("pwd");
		
		boolean result = false;
		if(!result)
		{
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/login.jsp");
			
			rd.forward(request, response);
		}
		
		else
		{
			UserVO user = new UserVO();
			user.setId(id);
			user.setName(name);
			user.setNickname(nickname);
			request.setAttribute("pwd", pwd);
			request.setAttribute("user", user);
			request.setAttribute("msg", "error");
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/signup.jsp");
			rd.forward(request, response);
		}
	}

}
