package db;

import java.sql.*;

public class ConnectionManager {
    private static final String DRIVER_CLASS="com.mysql.cj.jdbc.Driver";
    private static final String DATABASE_URL="jdbc:mysql://127.0.0.1:3306/xscj? useSSL=false & serverTimezone=UTC";
    private static final String DATABASE_USRE = "root";
    private static final String DATABASE_PASSWORD = "gg20030713";

    public static Connection getConnection(){
        Connection dbConnection=null;
        try {
            Class.forName(DRIVER_CLASS);
            try {
                dbConnection= DriverManager.getConnection(DATABASE_URL,DATABASE_USRE,DATABASE_PASSWORD);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return dbConnection;
    }

    public static void closeConnection(Connection dbConnection){
        try {
            if(dbConnection !=null&&(!dbConnection.isClosed()))
            dbConnection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void closeResultSet(ResultSet res){
        try {
            if(res !=null&&(!res.isClosed()))
                res.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void closeStatement(Statement statement){
        try {
            if(statement !=null&&(!statement.isClosed()))
                statement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void closeStatement(PreparedStatement preparedStatement){
        try {
            if(preparedStatement !=null&&(!preparedStatement.isClosed()))
                preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
