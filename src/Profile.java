

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class Profile
 */
@WebServlet("/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession(true);	
		String UserId = (String)session.getAttribute("username");
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=null;
		c = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms", "root", "123");
		PreparedStatement pst=null	;
		pst = c.prepareStatement("select * from User where id=? ");
		
		pst.setString(1, UserId);	
		
		System.out.println("before rs");
		

		ResultSet rs = pst.executeQuery();
		
		
		if(rs.next()) {
			String firstName= rs.getString("firstName");
			String lastName= rs.getString("lastName");
			String  email= rs.getString("email");			
			String phone= rs.getString("phone");
			String id= rs.getString("id");			

			request.setAttribute("firstName", firstName);				
			request.setAttribute("lastName", lastName);
			request.setAttribute("email", email);
			request.setAttribute("phone", phone);
			request.setAttribute("id", id);

			System.out.println("in rs");
			
			pst.close();
			//c.close();
			response.sendRedirect("/test2/jsp/profile.jsp");
	      //  RequestDispatcher rd = request.getRequestDispatcher("/jsp/event.jsp");
	      //  rd.forward(request, response);
//			response.sendRedirect("./jsp/event.jsp");
		}	
		
		
		c.close();
//		RequestDispatcher rd = request.getRequestDispatcher("/test2/jsp/profile.jsp");
//        rd.forward(request, response);
		
		
		

		
		return;	
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);	
		String UserId = (String)session.getAttribute("username");
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=null;
		c = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms", "root", "123");
		PreparedStatement pst=null	;
		pst = c.prepareStatement("select * from User where id=? ");
		
		pst.setString(1, UserId);	
		
		System.out.println("before rs");
		

		ResultSet rs = pst.executeQuery();
		
		
		if(rs.next()) {
			String firstName= rs.getString("firstName");
			String lastName= rs.getString("lastName");
			String  email= rs.getString("email");			
			String phone= rs.getString("phone");
			String id= rs.getString("id");			

			request.setAttribute("firstName", firstName);				
			request.setAttribute("lastName", lastName);
			request.setAttribute("email", email);
			request.setAttribute("phone", phone);
			request.setAttribute("id", id);

			System.out.println("in rs");
			
			pst.close();
			//c.close();
			response.sendRedirect("/test2/jsp/profile.jsp");
	      //  RequestDispatcher rd = request.getRequestDispatcher("/jsp/event.jsp");
	      //  rd.forward(request, response);
//			response.sendRedirect("./jsp/event.jsp");
		}	
		
		
		c.close();
//		RequestDispatcher rd = request.getRequestDispatcher("/test2/jsp/profile.jsp");
//        rd.forward(request, response);
		
		
		

		
		return;	
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
