import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class MysqlConnJDBC {

    public static void main(String[] argv) {

	System.out.println("-------- MySQL JDBC Connection Testing ------");

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException e) {

            System.out.println("Where is your MySQL JDBC Driver?");
            return;

        }

	System.out.println("MySQL JDBC Driver Registered!\n");

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

        } catch (Exception e) {

            System.out.println(e);
            return;

        }

        if (connection != null) {
	    System.out.println("You made it, take control your database now!");
	    try {
                connection.close();
	    } catch (Exception e) {};
        } else {
	    System.out.println("Failed to make connection!");
	} 
    }
}
