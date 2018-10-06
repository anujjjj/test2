
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.*;


/**
 * Servlet implementation class SignUp
 */
@WebServlet("/jsp/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String un=request.getParameter("username");
		String pw=request.getParameter("password");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String eno=request.getParameter("eno");
		String lname=request.getParameter("lname"); 
		String CandidateId; 
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		 // loads driver
	
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms", "root", "123"); // gets a new connection
		
		String pw_hash = BCrypt.hashpw(pw, BCrypt.gensalt()); 
		
		String sql="insert into User(id,email,password,firstName,lastName,phone)" + "values(?,?,?,?,?,?)";
		PreparedStatement ps = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
		ps.setString(1, un);
		ps.setString(3, pw_hash);
		ps.setString(2, email);
		ps.setString(4, phone);
		ps.setString(5, eno);
		ps.setString(6, lname);
				
		int rowAffected = ps.executeUpdate();
        if(rowAffected == 1)
        {
            // get candidate id
            rs = ps.getGeneratedKeys();
            if(rs.next())
                CandidateId = rs.getString(1);
            	c.close();
            	response.sendRedirect("signup_success.jsp");
        }
		
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
