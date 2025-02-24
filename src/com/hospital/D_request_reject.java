package com.hospital;

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
 * Servlet implementation class D_request_reject
 */
@WebServlet("/D_request_reject")
public class D_request_reject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public D_request_reject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		HttpSession session = request.getSession(true);
		String H_Email_ID = (String) session.getAttribute("H_Email_Id");
		String H_Address=(String)session.getAttribute("H_Address");
		String H_Full_Name=(String)session.getAttribute("H_Full_Name");
		String H_Mobileno=(String) session.getAttribute("H_Mobileno");
		String D_ID = request.getParameter("D_id");
		

		try {
			Connection conn = Dbconn.conn();
			Statement st = conn.createStatement();
			String Patient_Status = "Waiting";
			
				st.executeUpdate("update tbl_donor_organ set Donor_Status='"
						+ Patient_Status
						+ "',H_Full_Name='"+H_Full_Name+"',H_Address='"+H_Address+"',H_Email_Id='"+H_Email_ID+"',H_Mobile='"+H_Mobileno+"' where B_ID='"
						+ D_ID
						+ "'");
				
			

			pw.println("<script> alert('Donor Request Reject Successfully');</script>");
			RequestDispatcher rd = request
					.getRequestDispatcher("/HospitalHomePage.jsp");
			rd.include(request, response);

		} catch (Exception ex) {
			System.out.println(ex);
		}
	}

}
