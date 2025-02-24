package com.donor;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.Dbconn;

/**
 * Servlet implementation class donor_add_organ
 */
@WebServlet("/donor_add_organ")
public class donor_add_organ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public donor_add_organ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession(true);
		String Dname = (String) session.getAttribute("D_Full_Name");
		String Demail = (String) session.getAttribute("D_Email_Id");
		String D_mobile_no = (String)session.getAttribute("D_Mobile");
		String D_Organ_Name = request.getParameter("Organ_Name");
		String D_Age = request.getParameter("age");
		String D_Blood_Group = request.getParameter("Blood_Group");
		String D_Height = request.getParameter("Height");
		String D_Weight = request.getParameter("Weight");
		String Donor_Status = "Pending";
		String user_type=request.getParameter("user_type");
		String Disease_name=request.getParameter("Disease_name");
		String habits_name=request.getParameter("habits_name");
		String Metal_issues=request.getParameter("Metal_issues");
		
		int flag = 0;
		try {
			Connection conn = Dbconn.conn();
			Statement st = conn.createStatement();

			st.executeUpdate("insert into tbl_donor_organ(D_Email_ID,D_Name,D_Mobile_No,D_Organ_Name,D_Blood_Group,D_Age,D_Height,D_Weight,Donor_Status,User_type,Disease_name,habits_name,Metal_issues) values('"
					+ Demail
					+ "','"
					+ Dname
					+ "','"
					+ D_mobile_no
					+ "','"
					+ D_Organ_Name
					+ "','"
					+ D_Blood_Group+ "','"+D_Age+"','"+D_Height+"','"+D_Weight+"','"+Donor_Status+"','"+user_type+"','"+Disease_name+"','"+habits_name+"','"+Metal_issues+"')");
			
			pw.println("<script> alert('Donor Add Organ Successfully');</script>");
			RequestDispatcher rd = request
					.getRequestDispatcher("/D_HomePage.jsp");
			rd.include(request, response);

		} catch (Exception ex) {
			System.out.println(ex);
		}
	}

}
