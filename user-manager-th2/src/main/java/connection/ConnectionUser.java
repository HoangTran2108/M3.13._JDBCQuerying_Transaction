package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUser {
    private static String databaseName = "user1";
    private static final String url = "jdbc:mysql://localhost:3306/"+databaseName;
    private static final String user = "root";
    private static final String password = "123456";

    public static Connection getConnection() throws SQLException {
        Connection connection;
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());
        connection = DriverManager.getConnection(url, user, password);
        return connection;
    }
    public static void closeConnection(Connection connection) throws SQLException {
        if (connection != null) {
            connection.close();
        }
    }
}
