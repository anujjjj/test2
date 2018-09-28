

//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class Login
 */
@WebServlet("/jsp/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				
		String un=request.getParameter("username");
		String pw=request.getParameter("password");
		
		// Connect to mysql and verify username password
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "messi"); // gets a new connection
		
 
		PreparedStatement ps = c.prepareStatement("select userName,pass from student where userName=? and pass=?");
		ps.setString(1, un);
		ps.setString(2, pw);
 
		ResultSet rs = ps.executeQuery();
		
 
		while (rs.next()) {
//			response.sendRedirect("success.html");
//			response.getWriter().append("Logged In").append(request.getContextPath());
			HttpSession session = request.getSession(true);	    
			session.setAttribute("username",un); 
			response.sendRedirect("dashboard.jsp");		
			c.close();
			return;
		}
		
		//response.sendRedirect("error.html");
		HttpSession session = request.getSession(true);	
		session.invalidate();
        request.setAttribute("errorMessage", "Invalid user or password");
        RequestDispatcher rd = request.getRequestDispatcher("/jsp/login.jsp");
        rd.forward(request, response); 
        c.close();
		return;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block				
			e.printStackTrace();
		}	    
	        
	}

}
