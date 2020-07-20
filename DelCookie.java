package logout;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DelCookie")
public class DelCookie extends HttpServlet {

	    private static final long serialVersionUID = 1L;

	    /**
	     * @see HttpServlet#HttpServlet()
	     */


	    /**
	     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	     */
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	Cookie cookies[] = request.getCookies();
	    	for(int i=0;i<cookies.length;i++){  

	    	    cookies[i].setMaxAge(0);  

	    	    response.addCookie(cookies[i]);

	    	}  
	    	response.sendRedirect("login.jsp");
	    }
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // TODO Auto-generated method stub
            doPost(request, response);
        }
}
