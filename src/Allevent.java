

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Allevent
 */
@WebServlet("/Allevent")
public class Allevent extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		public class event{
			private String einfo;
			private String eventName;
		}*/
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=null;
		c = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms", "root", "123");
        Statement stmt = c.createStatement();

		ResultSet rs = stmt.executeQuery("select eventName,einfo from Event");
		
		
		ArrayList<String> events= new ArrayList<String>();
		ArrayList<String> einfos= new ArrayList<String>();

		while(rs.next()) {
			/* event E = new event();
			E.setEinfo(rs.getString("einfo"));
			  E.setEventName(rs.getString("eventName"));
			  
			  */
			String  eventName= rs.getString("eventName");
			String  einfo= rs.getString("einfo");

					request.setAttribute("eventName", eventName);		
					request.setAttribute("einfo", einfo);				


			  events.add("eventName");
			  einfos.add("einfo");
	   }
		
		request.setAttribute("events", events);		
		//request.setAttribute("einfos", einfos);				

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/dashboard.jsp");
        rd.forward(request, response);
		stmt.close();
		c.close();
		
		
		return;	
		}
		catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}


}
