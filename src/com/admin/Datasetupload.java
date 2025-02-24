package com.admin;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.connection.Dbconn;

/**
 * Servlet implementation class Datasetupload
 */
@WebServlet("/Datasetupload")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 50, // 50MB
maxFileSize = 1024 * 2048 * 100, // 100 MB

maxRequestSize = 1024 * 2048 * 1000)
public class Datasetupload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Datasetupload() {
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
		Part filePart = request.getPart("file1");
		InputStream inputStream = filePart.getInputStream();
		Connection con;
		BufferedReader br = null;
		StringBuilder sb = new StringBuilder();

		String line;
		try {
			Connection conn;
            conn = Dbconn.conn();
			br = new BufferedReader(new InputStreamReader(inputStream));
			while ((line = br.readLine()) != null) {
				
				 String[] d=line.split(",");
	                Statement sts = conn.createStatement();
	                sts.executeUpdate("insert into sensor_data(Hospital_Name,Email_Id,systolic_bp,diastolic_bp,heart_rate,QT_interval,PR_interval,oxy_saturation,temp_sensor,pid) values('" + d[0] + "','" + d[1] + "','" + d[2] + "','" + d[3] + "','" + d[4] + "','" + d[5] + "','" + d[6] + "','" + d[7] + "','"+d[8]+"','"+d[10]+"')");
System.out.println(line);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}

		RequestDispatcher rd = request.getRequestDispatcher("/A_Upload_Patient_infoPage.jsp");

		rd.include(request, response);
	}

}
