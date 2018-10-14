

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
 * Servlet implementation class Manage
 */
@WebServlet("/Manage")
public class Manage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Manage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub"
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String eventId= request.getParameter("eventId");
		String interestId = request.getParameter("interestId");
		int manpar=Integer.parseInt((request.getParameter("manpar")));
		String interest=(String)request.getAttribute("interest");
		HttpSession session = request.getSession(true);
		String uid = (String)session.getAttribute("username");
		
		System.out.println(eventId);
		System.out.println(interestId);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
		
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms", "root", "123"); // gets a new connection
		
		
		PreparedStatement ps1 = c.prepareStatement("insert into Student_has_Event_has_Interest values(?,?,?,?,?) ");
		ps1.setString(1, uid);
		ps1.setString(2, eventId);
		ps1.setString(3, interestId);
		ps1.setInt(4, manpar);
		ps1.setInt(5, 2);
		
	int rs1 = ps1.executeUpdate();
	System.out.println(rs1);
		if(rs1>0) {
			 System.out.println("DOne");
			 c.close();
			 session.setAttribute("error", "The request has been recieved");
			 response.sendRedirect("/test2/Event?eventId="+eventId+"&Interest_idInterest="+interestId);
		}
		
		else {
			System.out.println("error");
			
		}
		}
		catch (ClassNotFoundException | SQLException e) {
			
			// TODO Auto-generated catch block				
			e.printStackTrace();
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
