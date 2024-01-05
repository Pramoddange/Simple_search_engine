
package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    static Connection connection=null;
    public static Connection getConnection(){
        if(connection!=null){
            return connection;
        }
        String user="root";
        String pwd="Pramod@111";
        String dp="searchengineapp";
        return getConnection(user,pwd,dp);
    }
    private static Connection getConnection(String user, String pwd, String dp){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost/" + dp + "?user=" + user + "&password=" + pwd);
        }
        catch(SQLException | ClassNotFoundException sqlException){
            //noinspection CallToPrintStackTrace
            sqlException.printStackTrace();
        }
        return connection;
    }
}


