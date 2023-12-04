package javaguides.recipe.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javaguides.recipe.model.Recipe;

public class RecipeDao {
	private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    private Connection jdbcConnection;
     
    public RecipeDao(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }
     
    protected void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection(
                                        jdbcURL, jdbcUsername, jdbcPassword);
        }
    }
	public int addRecipe(Recipe recipe, InputStream photo) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO recipe" +
            "  (recipeName, ingridient, step, photo, userId) VALUES " +
            " (?, ?, ?, ?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");
        
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/quiz2?useSSL=false", "root", "");
        		
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
                preparedStatement.setString(1, recipe.getRecipeName());
                preparedStatement.setString(2, recipe.getIngridient());
                preparedStatement.setString(3, recipe.getStep());
                preparedStatement.setInt(5, recipe.getUserId());
                if(photo != null)
                	preparedStatement.setBlob(4, photo);

                System.out.println(preparedStatement);
                // Step 3: Execute the query or update query
                result = preparedStatement.executeUpdate();

            } catch (SQLException e) {
                // process sql exception
                printSQLException(e);
            }
            return result;
	}
	
	public ArrayList<Recipe> listAllRecipe() throws SQLException {
        ArrayList<Recipe> listRecipe = new ArrayList<>();
        Recipe recipe = null;
        String sql = "SELECT * FROM recipe";
         
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/quiz2?useSSL=false", "root", "");
        		
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            ResultSet rs = preparedStatement.executeQuery();
	
	            // Step 4: Process the ResultSet object.
	            while (rs.next()) {
	            	Integer id = rs.getInt("id");
	                String recipeName = rs.getString("recipeName");
	                String ingridient = rs.getString("ingridient");
	                String step = rs.getString("step");
	                recipe = new Recipe(id, recipeName, ingridient, step);
	                listRecipe.add(recipe);
	            }
	            rs.close();

            } catch (SQLException e) {
                // process sql exception
                printSQLException(e);
            }
         
        return listRecipe;
    }
    
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
