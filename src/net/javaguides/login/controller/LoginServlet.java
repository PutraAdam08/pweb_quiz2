package javaguides.login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javaguides.usermanagement.model.User;
import javaguides.login.dao.LoginDao; 

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	// TODO auto-generated method stub
    	response.getWriter().append("served at: ").append(request.getContextPath());
    	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/login.jsp");
    	dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);

        try {
            if (loginDao.validate(user)) {
                HttpSession session = request.getSession(false);
                session.setAttribute("user",user);
                RequestDispatcher dispatcher = request.getRequestDispatcher("home");
            	dispatcher.forward(request, response);
            } else {
                //HttpSession session = request.getSession();
                //session.setAttribute("user", email);
                response.sendRedirect("login");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}