

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession(true);	
		String uid=(String)session.getAttribute("username"); 
		Mysqlconnect mcon=new Mysqlconnect();
        String sqlroot=mcon.name;
        String sqlpassword=mcon.password;
		
        try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=null;
		c = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms", sqlroot, sqlpassword);
		PreparedStatement pst=null;
		pst = c.prepareStatement("select eventId,idInterest from Admin where id=? ");
		pst.setString(1, uid);	

		

		ResultSet rs = pst.executeQuery();
        // Initializing a Dictionary 
        //Dictionary geek = new Hashtable(); 
  
        // put() method 
  
		if(rs.next()) {
			String  eventId= rs.getString("eventId");
			String  idInterest= rs.getString("idInterest");
	        //geek.put(eventId, idInterest); 


			request.setAttribute("idInterest", idInterest);				
			request.setAttribute("eventId", eventId);
			
			
		}	
		 //for (Enumeration i = geek.elements(); i.hasMoreElements();) 
	       // { 
	         //   System.out.println("Value in Dictionary : " + i.nextElement()); 
	        //} 
		pst.close();

		c.close();
	//	RequestDispatcher rd = request.getRequestDispatcher("/test2/jsp/admin.jsp");
      //  rd.forward(request, response);	
		request.getRequestDispatcher("/jsp/admin.jsp").forward(request, response);
		
		return;	
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	



	

}
