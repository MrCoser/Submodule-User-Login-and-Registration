package helper;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.getPrint;

public class Users {

	public int registerUsers(getPrint gp) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO details" +
	            " (id, name, email, password) VALUES" +
	            " (?, ?, ?, ?);";

	        int result = 0;
	        Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = DriverManager
	            .getConnection("jdbc:mysql://localhost:3306/reg?useSSL=false", "root", "Riju2156@#");

	            // Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
	        	preparedStatement.setString(1, gp.getId());
	            preparedStatement.setString(2, gp.getName());
	            preparedStatement.setString(3, gp.getEmail());
	            preparedStatement.setString(4, gp.getPassword());

	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            result = preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            // process sql exception
	            e.printStackTrace();
	        }
	        return result;
	}
	
	
	public ArrayList<Object> getUsers() throws ClassNotFoundException {
        String SELECT_USERS_SQL = "SELECT * from details ORDER BY id";
        Class.forName("com.mysql.jdbc.Driver");

        ArrayList<Object> empArr = new ArrayList<>(); 
        try {
        	Connection conn = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/reg?useSSL=false", "root", "Riju2156@#");

            // Create a statement using connection object
            PreparedStatement preparedStatement = conn.prepareStatement(SELECT_USERS_SQL);
            System.out.println(preparedStatement);
 
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();
            while(rs.next()) {
            	getPrint gp = new getPrint();
            	gp.setId(rs.getString("id"));
            	gp.setName(rs.getString("name"));
            	gp.setEmail(rs.getString("email"));
            	gp.setPassword(rs.getString("password"));
            	empArr.add(gp);
            }
            
        } catch (SQLException e) {
            // process sql exception
            e.printStackTrace();
        }
        return empArr;
    }
	
	
	public int UserLogin(getPrint gp) throws ClassNotFoundException {
			String UPDATE_EMAIL_PASSWORD_SQL = "UPDATE details SET name=?, email=?, password=? WHERE id=?";
			
			int result = 0;
	        Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = DriverManager
	            .getConnection("jdbc:mysql://localhost:3306/reg?useSSL=false", "root", "Riju2156@#");

	            // Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_EMAIL_PASSWORD_SQL)) {
	            preparedStatement.setString(1, gp.getName());
	        	preparedStatement.setString(2, gp.getEmail());
	        	preparedStatement.setString(3, gp.getPassword());
	            preparedStatement.setString(4, gp.getId());

	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            result = preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            // process sql exception
	            e.printStackTrace();
	        }
	        return result;
	}
	
	
	public int changePassword(getPrint gp) throws ClassNotFoundException {
			String CHANGE_PASSWORD_SQL = "UPDATE details SET password=? WHERE name=?";

	        int result = 0;
	        Class.forName("com.mysql.jdbc.Driver");

	        try (Connection connection = DriverManager
	            .getConnection("jdbc:mysql://localhost:3306/reg?useSSL=false", "root", "Riju2156@#");

	            // Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(CHANGE_PASSWORD_SQL)) {
	            preparedStatement.setString(1, gp.getPassword());
	            preparedStatement.setString(2, gp.getName());

	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            result = preparedStatement.executeUpdate();

	        } catch (SQLException e) {
	            // process sql exception
	            e.printStackTrace();
	        }
	        return result;
	}       
	
}
