package kz.iitu.javaee;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;

public class FIlter1 implements Filter {
    public void init(FilterConfig arg0) throws ServletException {}

    public void doFilter(ServletRequest req, ServletResponse resp,
                         FilterChain chain) throws IOException, ServletException {

        PrintWriter out=resp.getWriter();

        String password=req.getParameter("password");
        if(password.equals("12345")){
            chain.doFilter(req, resp);//sends request to next resource
            RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
            rd.include(req, resp);
        }
        else{
            out.print("username or password error!");
            RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
            rd.include(req, resp);
        }

    }
    public void destroy() {}


}
