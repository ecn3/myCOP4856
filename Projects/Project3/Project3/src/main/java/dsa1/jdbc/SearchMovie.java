package dsa1.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Bernd OK
 */
public class SearchMovie {
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Statement stmt = null;
        ResultSet rs = null;
        Connection conn = null;
        final String driverName = "com.mysql.cj.jdbc.Driver";
        final String dbURL = "jdbc:mysql://localhost:3306/ECN3?serverTimezone=UTC&user=root";
        //final String dbURL = "jdbc:mysql://mysql.cs.uwf.edu/bowsnickiklewe?user=bowsnickiklewe&amp;password=KApuCR2s";

        // OK! Here we go. All in a big try - we'll check the exceptions later
        try {
            Class.forName(driverName);
            conn = DriverManager.getConnection(dbURL);
            stmt = conn.createStatement();
            // If we got that far... the rest is just a piece of cake (I guess)
            // 1. List all Moive
            rs = stmt.executeQuery("SELECT * from PlaylistECN3");
            while (rs.next()) {
                System.out.print(rs.getString(1));
                System.out.print(" " + rs.getString(2));
                System.out.print(" " + rs.getString(3));
                System.out.print(" " + rs.getString(4));
                System.out.println(" " + rs.getString(5));
            }
        // And now comes the fun part: Exception handling
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            System.out.println("SQLState:     " + e.getSQLState());
            System.out.println("VendorError:  " + e.getErrorCode());
        } catch (ClassNotFoundException e) {
            System.out.println("Cannot load JDBC driver");
        } catch (Exception e) { // This is really the worst case...
            e.printStackTrace();
        } finally {
            try { // Did I mention I hate "try" in a "finally" clause...
                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
                // Out of ideas! I give up...
            }
        }
    }
}
