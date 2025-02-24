package com.Patient;

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
 * Servlet implementation class organ_request
 */
@WebServlet("/organ_request")
public class organ_request extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public organ_request() {
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
		// TODO Auto-generated method stub
		
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession(true);
		String Pname = (String) session.getAttribute("Full_Name");
		String Pemail = (String) session.getAttribute("Email_Id");
		String P_mobile_no = (String)session.getAttribute("Mobile");
		String P_Organ_Name = request.getParameter("Organ_Name");
		String P_Age = request.getParameter("age");
		String P_Blood_Group = request.getParameter("Blood_Group");
		String P_Height = request.getParameter("Height");
		String P_Weight = request.getParameter("Weight");
		String Patient_Status = "Pending";
		String Disease_name=request.getParameter("Disease_name");
		String habits_name=request.getParameter("habits_name");
		String Metal_issues=request.getParameter("Metal_issues");
		
		
		int flag = 0;
		try {
			Connection conn = Dbconn.conn();
			Statement st = conn.createStatement();

			st.executeUpdate("insert into tbl_request_organ(P_Email_ID,P_Name,P_Mobile_No,P_Organ_Name,P_Blood_Group,P_Age,P_Height,P_Weight,Patient_Status,Disease_name,habits_name,Metal_issues) values('"
					+ Pemail
					+ "','"
					+ Pname
					+ "','"
					+ P_mobile_no
					+ "','"
					+ P_Organ_Name
					+ "','"
					+ P_Blood_Group+ "','"+P_Age+"','"+P_Height+"','"+P_Weight+"','"+Patient_Status+"','"+Disease_name+"','"+habits_name+"','"+Metal_issues+"')");
			
			pw.println("<script> alert(' Request Send Patient Successfully');</script>");
			RequestDispatcher rd = request
					.getRequestDispatcher("/PatientHomePage.jsp");
			rd.include(request, response);

		} catch (Exception ex) {
			System.out.println(ex);
		}
	}

}
