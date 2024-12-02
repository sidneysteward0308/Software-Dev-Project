import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmployeeManagement {

    public static void main(String[] args) {
        displayEmployeeMonthlyStatement();
    }

    public static void displayEmployeeMonthlyStatement() {
        //SQL DATABASE INFO
        String url = "jdbc:mysql://localhost:3306/employeedata"; 
        String user = "root"; 
        String password = "<pw>"; 

        //SQL Paystatement calculation by salary/months_worked
        String query = "SELECT first_name, last_name, salary, months_worked, " +
                       "(salary / months_worked) AS pay_statement " +
                       "FROM Employee WHERE months_worked > 0";

        //Connects to DB
        try (Connection conn = DriverManager.getConnection(url, user, password);
             PreparedStatement preparedStatement = conn.prepareStatement(query)) {

            //Executes the query
            ResultSet rs = preparedStatement.executeQuery();

            //Displays Employee Monthly Pay Statements
            System.out.println("Employee Pay Statements:");
            System.out.printf("%-15s %-15s %-10s %-15s %-15s%n", "First Name", "Last Name", "Salary", "Months Worked", "Monthly Pay Statement");

            //Iterates through each row selected from the query in DB
            while (rs.next()) {
                String firstName = rs.getString("first_name");
                String lastName = rs.getString("last_name");
                double salary = rs.getDouble("salary");
                int monthsWorked = rs.getInt("months_worked");
                double payStatement = rs.getDouble("pay_statement");

                System.out.printf("%-15s %-15s %-10.2f %-15d %-15.2f%n", firstName, lastName, salary, monthsWorked, payStatement);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}