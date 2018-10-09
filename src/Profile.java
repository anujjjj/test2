

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
		String uid=(String)session.getAttribute("username"); 

		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=null;
		c = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms", "root", "123");
		PreparedStatement pst=null	;
		pst = c.prepareStatement("select * from User where id=?  ");
		
		pst.setString(1, uid);	
		

		

		ResultSet rs = pst.executeQuery();
		
		
		if(rs.next()) {
			String firstName= rs.getString("firstName");
			String lastName= rs.getString("lastName");
			String  email= rs.getString("email");			
			String phone= rs.getString("phone");
			String password= rs.getString("password");
			session.setAttribute("firstName", firstName);				
			session.setAttribute("lastName", lastName);
			session.setAttribute("email", email);
			session.setAttribute("phone", phone);
			session.setAttribute("password", password);

			
			pst.close();
			c.close();

		response.sendRedirect("/test2/jsp/profile.jsp");
	      
		}	
		
		

		
		

		
		return;	
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
}

	
