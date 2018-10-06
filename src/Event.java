

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
		String eventId = request.getParameter("eventId");		
		String interestID=request.getParameter("Interest_idInterest");
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=null;
		c = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms", "root", "123");
		PreparedStatement pst=null;
		PreparedStatement pst1=null;
		pst = c.prepareStatement("select * from Event where eventId=? ");
		pst1= c.prepareStatement("select info from Event_has_Interest where Event_eventId=? && Interest_idInterest=?");
		pst.setString(1, eventId);	
		pst1.setString(1, eventId);
		pst1.setString(2, interestID);
		

		ResultSet rs = pst.executeQuery();
		ResultSet rs1 = pst1.executeQuery();
		
		if(rs.next()) {
			String  eventName= rs.getString("eventName");
			String  startDate= rs.getString("startDate");
			String  endDate= rs.getString("endDate");			
			String  ldatevol= rs.getString("ldatevol");			
			String  ldatereg= rs.getString("ldatereg");			

			request.setAttribute("eventName", eventName);				
			request.setAttribute("eventId", eventId);
			request.setAttribute("ldatevol", ldatevol);
			request.setAttribute("ldatereg", ldatereg);
			request.setAttribute("startDate", startDate);
			request.setAttribute("endDate", endDate);
			pst.close();
			//c.close();
			
	      //  RequestDispatcher rd = request.getRequestDispatcher("/jsp/event.jsp");
	      //  rd.forward(request, response);
//			response.sendRedirect("./jsp/event.jsp");
		}	
		
		if(rs1.next()) {
			String  info= rs1.getString("info");
				

			request.setAttribute("info", info);				
			
			pst1.close();
			
			
	        
		}	
		c.close();
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/event.jsp");
        rd.forward(request, response);
//		response.sendRedirect("./jsp/event.jsp");
		
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
