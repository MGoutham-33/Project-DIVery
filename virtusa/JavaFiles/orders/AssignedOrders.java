package orders;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import virtusalogin.DliLogin;
/**
 * Servlet implementation class AssignedOrders
 */
public class AssignedOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignedOrders() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		String name=(String) request.getAttribute("name");
		ResultSet rs = null;
		try {
			rs = st.executeQuery("select * from orders where aname='"+name+"'");
			if(rs.next()) {
					request.setAttribute("oid", rs.getLong("oid"));
					request.setAttribute("cname", rs.getString(2));
					request.setAttribute("product", rs.getString(3));
					request.setAttribute("price", rs.getLong(4));
					request.setAttribute("cphone", rs.getString(5));
					request.setAttribute("cadd", rs.getString(6));
					RequestDispatcher rd = request.getRequestDispatcher("dli_orders.jsp");
					rd.forward(request,response);
			}
			else response.sendRedirect("invalid.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
