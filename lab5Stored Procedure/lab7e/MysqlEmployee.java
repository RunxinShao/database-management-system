import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MysqlEmployee {

    public static void main(String[] argv) {

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {

            System.out.println("Where is your MySQL JDBC Driver?");
            return;

        }

        Connection connection;
        Statement stmt;
        ResultSet rs;
        try {
            connection = DriverManager.getConnection(
                    "jdbc:mysql://127.0.0.1:3306/silicon", 
                    "test",
                    "1234");
            //Replace YOURDBSER by your DB username
            //Replace YOURPASSWORD by your password for DB username

            String sql = "select * from employee"; 
            stmt = connection.createStatement();
            rs = stmt.executeQuery(sql);
            rs.next();
            while (rs.next()) {
                System.out.println(rs.getString(1));
            }

        } catch (Exception e) {

            System.out.println(e);
            return;

        }

        if (connection != null) {
	    try {
	        connection.close();
	    } catch (Exception e) {};
        } 
    }
}
