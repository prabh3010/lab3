
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author prabh
 */
public class ArithmeticCalculatorServlet extends HttpServlet {

  

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("message", "---");
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
        return;
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String numb1 = request.getParameter("firstNumber");
        String numb2 = request.getParameter("secondNumber");
        request.setAttribute("firstNumber", numb1);
        request.setAttribute("secondNumber", numb2);
        String operation = request.getParameter("operation");
        if(numb1 == null || numb1.equals("") || numb2 == null || numb2.equals("")) {
            request.setAttribute("message", "invalid");
            getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
            return;
        }
        
        int first = Integer.parseInt(numb1);
        int second = Integer.parseInt(numb2);
        if(operation.equals("+")){
            request.setAttribute("message", first + second);
        }
        else if(operation.equals("-")){
            request.setAttribute("message", first - second);
        }
        else if(operation.equals("*")){
            request.setAttribute("message", first * second);
        }
        else if(operation.equals("%")){
            request.setAttribute("message", first % second);
        }
        else{
            request.setAttribute("message", "invalid");
        }
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
        return;
       
    }

}
