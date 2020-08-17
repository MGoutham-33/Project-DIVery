package virtusalogin;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
public class DliLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DliLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     //response.getWriter().println("welcome "+request.getParameter("name")+" to our page");
		Connection conn=null;
		String databaseName="login";
		 String url = "jdbc:mysql://localhost:3306/" +databaseName;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
		} catch (InstantiationException | IllegalAccessException | ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			conn = DriverManager.getConnection(url, "root", "root");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Statement st = null;
		try {
			st = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String name=request.getParameter("name");
		String pass=request.getParameter("pass");
		ResultSet rs = null;
		try {
			rs = st.executeQuery("select Ag_name,password from delivery where Ag_name='"+name+"'"+"and password='"+pass+"'");
			if(rs.next()) {
				request.setAttribute("name", name);;
				/*RequestDispatcher rd = request.getRequestDispatcher("dli_dsb.jsp");
				rd.forward(request,response);*/
				
				RequestDispatcher rw = request.getRequestDispatcher("/order");
				rw.forward(request,response);
				
			}
			else response.sendRedirect("invalid.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}

}