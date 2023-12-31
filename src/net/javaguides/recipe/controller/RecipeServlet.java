package javaguides.recipe.controller;

import javaguides.recipe.dao.RecipeDao;
import javaguides.recipe.model.Recipe;
import javaguides.usermanagement.model.User;

import java.io.IOException;
import java.sql.SQLException;
import java.io.InputStream;
import java.util.List;
import java.util.ArrayList;
import javax.servlet.http.Part;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

 
/**
 * Servlet implementation class RecipeServlet
 */
@WebServlet("/recipe")
public class RecipeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private RecipeDao recipeDao;
    
    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
 
        recipeDao = new RecipeDao(jdbcURL, jdbcUsername, jdbcPassword);
 
    }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session=request.getSession(false); 
		if(session==null){
			response.sendRedirect("login");
	    } 
		String action = request.getServletPath();
		 
	    try {
	        switch (action) {
	        case "/new":
	            showNewForm(request, response);
	            break;
	        default:
	            listRecipe(request, response);
	            break;
	        }
	    } catch (SQLException ex) {
	        throw new ServletException(ex);
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("recipeForm.jsp");
        dispatcher.forward(request, response);
    }
	
	 private void insertRecipe(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		//InputStream photo = null;
		//Part filePart = request.getParts("photo");
		HttpSession session=request.getSession(); 
	    User user = (User) session.getAttribute("user");
	    Integer userId = user.getId();
	    String recipeName = request.getParameter("recipeName");
	    String ingridient = request.getParameter("ingridient");
	    String step = request.getParameter("step");
	    
	 
	    Recipe newRecipe = new Recipe(recipeName, ingridient, step);
	    //recipeDao.addRecipe(newRecipe);
	    response.sendRedirect("recipe");
	    }
	 
	private void listRecipe(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        ArrayList<Recipe> listRecipe = recipeDao.listAllRecipe();
        request.setAttribute("listRecipe", listRecipe);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/recipe.jsp");
        dispatcher.forward(request, response);
    }

}
