package com.activity;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
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
 * Servlet implementation class p_admit
 */
@WebServlet("/p_admit")
public class p_admit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public p_admit() {
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
		String pemailid=(String)session.getAttribute("Email_Id");
		String hid = request.getParameter("hid");
		
		
		
		try {
			Connection conn = Dbconn.conn();
			Statement st = conn.createStatement();
			
		  int i=1;
		  String query="select * from tblhospital_beds where H_id='"+hid+"'";
	
		  Statement stmt=conn.createStatement();
		  Statement stt=conn.createStatement();
		  ResultSet rs=stmt.executeQuery(query);
	    	if(rs.next())
	    	{
	    		String name=rs.getString("Hospital_Name");
	    		String emailid=rs.getString("Email_Id");
	    		String mobileno=rs.getString("Help_Desk_Number");
	    		//SendMail.SendAdmit(pemailid,name,emailid,mobileno);
	    		int oldbeds=rs.getInt(5);
	    		int newtotal=oldbeds-1;
	    		stt.executeUpdate("update tblhospital_beds set Beds_Total_1='"+newtotal+"' where H_id='"+hid+"' ");
	    		Statement st21 = conn.createStatement();
                st21.executeUpdate("insert into tblhospital_patient(Hospital_Name,Email_Id,Patient_Name,Patient_Email_ID,Patient_Mobile_No) values('" + name + "','" + emailid + "','"+session.getAttribute("Full_Name")+"','" +pemailid+ "','" + session.getAttribute("Mobile") + "')");
          
	    	}
	    	
			pw.println("<script> alert(' Admit Patient Successfully');</script>");
			RequestDispatcher rd = request
					.getRequestDispatcher("/P_DataPage.jsp");
			rd.include(request, response);

		} catch (Exception ex) {
			System.out.println(ex);
		}
	}

}
