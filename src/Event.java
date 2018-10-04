

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
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class Event
 */
@WebServlet(description = "displays the event information", urlPatterns = { "/Event" })
public class Event extends HttpServlet  {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Event() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int event_id;
		event_id = Integer.parseInt(request.getParameter("event_id"));		
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=null;
		c = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "messi");
		PreparedStatement pst=null;
		pst = c.prepareStatement("select * from Event where eventId=? ");
		pst.setInt(1, event_id);			
		

		ResultSet rs = pst.executeQuery();
		
		if(rs.next()) {
			String  eventName= rs.getString("eventName");
			String  introduction= rs.getString("introduction");			
			request.setAttribute("eventName", eventName);				
			request.setAttribute("event_id", event_id);
			request.setAttribute("introduction", introduction);
			pst.close();
			c.close();
			
	        RequestDispatcher rd = request.getRequestDispatcher("/jsp/event.jsp");
	        rd.forward(request, response);
//			response.sendRedirect("./jsp/event.jsp");
		}									               
        
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
		doGet(request, response);
		
		
	}

}
