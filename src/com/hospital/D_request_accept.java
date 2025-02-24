package com.hospital;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Blockchain.ptop;

import com.connection.Dbconn;

/**
 * Servlet implementation class D_request_accept
 */
@WebServlet("/D_request_accept")
public class D_request_accept extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public D_request_accept() {
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
			LocalDateTime date = LocalDateTime.now();
		    DateTimeFormatter format1 = 
		      DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss"); 
		     
			String Transplantation_Date_Time= date.format(format1);
			Connection conn = Dbconn.conn();
			Statement st = conn.createStatement();
			String Patient_Status = "Transplantation Done";
			
				st.executeUpdate("update tbl_donor_organ set Donor_Status='"
						+ Patient_Status
						+ "',H_Full_Name='"+H_Full_Name+"',H_Address='"+H_Address+"',H_Email_Id='"+H_Email_ID+"',H_Mobile='"+H_Mobileno+"',Transplantation_Date_Time='"+Transplantation_Date_Time+"' where B_ID='"
						+ D_ID
						+ "'");
				String donor_data="";
				Statement sts=conn.createStatement();
				ResultSet rs=sts.executeQuery("select * from tbl_donor_organ where B_ID='"+D_ID+"'");
				if(rs.next())
				{
					donor_data=rs.getString("D_Email_ID")+","+rs.getString("D_Name")+","+rs.getString("d_Mobile_No")+","+rs.getString("D_Organ_Name")+","+rs.getString("D_Blood_Group")+","+rs.getString("D_Age")+","+rs.getString("D_Height")+","+rs.getString("D_Weight");
					
				}
				
				
			int noofnode=4;
			String data=donor_data+","+H_Full_Name+","+H_Address+","+H_Email_ID+","+H_Mobileno+","+Transplantation_Date_Time+","+Patient_Status;
			
			ptop.ptopverify(noofnode,data);

			pw.println("<script> alert('Donor Request Accept Successfully');</script>");
			RequestDispatcher rd = request
					.getRequestDispatcher("/HospitalHomePage.jsp");
			rd.include(request, response);

		} catch (Exception ex) {
			System.out.println(ex);
		}
	}

}
