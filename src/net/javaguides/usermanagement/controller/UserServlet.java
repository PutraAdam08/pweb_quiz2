package javaguides.usermanagement.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javaguides.usermanagement.dao.UserDao;
import javaguides.usermanagement.model.User;

@WebServlet("/register")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }
    
    public UserServlet() {
    	super();
    	// TODO auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	// TODO auto-generated method stub
    	response.getWriter().append("served at: ").append(request.getContextPath());
    	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/register.jsp");
    	dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = new User();
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        
        try {
            userDao.registerUser(user);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        response.sendRedirect("login");
    }
}