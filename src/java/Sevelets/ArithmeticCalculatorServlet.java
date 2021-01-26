package Sevelets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 824664
 */
public class ArithmeticCalculatorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculation.jsp")
            .forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        String firstNum = request.getParameter("firstNum");
        String secondNum = request.getParameter("secondNum");
        String calculation = request.getParameter("cal");
        
        request.setAttribute("firstNum", firstNum);
        request.setAttribute("secondNum", secondNum);
        
        try {
            int a,b = 0;
            
            a = Integer.parseInt(firstNum);
            b = Integer.parseInt(secondNum);
            int result = 0;

            if(calculation.equals("+")) {
                result = a + b;
            }
            else if(calculation.equals("-")) {
                result = a - b;
            }
            else if(calculation.equals("*")) {
                result = a *+ b;
            }
            else {
                result = a % b;
            }
            
             request.setAttribute("result", result);
            
        }
        catch (NumberFormatException e) {
            request.setAttribute("result", "Incalid");
        }
        
    }

}
