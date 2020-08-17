package orders;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Invorder
 */
public class Invorder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Invorder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement("insert into orders values(?,?,?,?,?,?,?)");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int oid=Integer.parseInt(request.getParameter("oid"));
		String cname=request.getParameter("name");
		String oproduct=request.getParameter("ord_product");
		int productp=Integer.parseInt(request.getParameter("price"));
		String cphone=request.getParameter("phone");
		String address=request.getParameter("address");
		String aname=request.getParameter("dli_name");
		try {
			ps.setLong(1, oid);
			ps.setString(2, cname);
			ps.setString(3, oproduct);
			ps.setLong(4, productp);
			ps.setString(5, cphone);
			ps.setNString(6, address);
			ps.setNString(7, aname);
			ps.executeUpdate();
			
			request.setAttribute("aname", aname);;
			RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
			rd.forward(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
