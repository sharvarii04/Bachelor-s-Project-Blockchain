package com.connection;

import java.sql.*;
import java.util.*;
public class Dbconn {
	
    public Dbconn() throws SQLException {
        //initComponents();
        //Connection con;

    }

    public static Connection conn() throws Exception {
       Connection con;
         Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/new_organ_donation", "root", "admin");
        
        return (con);

    }

    public static void main(String args[]) {
        
    }
}
