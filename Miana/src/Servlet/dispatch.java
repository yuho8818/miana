package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class dispatch
 */
@WebServlet("/dispatch")
public class dispatch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dispatch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = (String)request.getParameter("type_recorde");
		String key = (String)request.getParameter("search_input");
		int screen_width = Integer.parseInt(request.getParameter("screen_width"));
		request.getSession().setAttribute("type", type);
		request.getSession().setAttribute("key", key);
		request.getSession().setAttribute("screen_width", screen_width);
		String path = "";
		if(screen_width>600){
            if(type.equals("Baidu")){
				path = "https://www.baidu.com/s?wd="+key+"&rsv_spt=1&rsv_iqid=0xda8f62bc0000c5f7&issp=1&f=8&rsv_bp=0&rsv_idx=2&ie=utf-8&tn=monline_3_dg&rsv_enter=1&rsv_sug3=4&rsv_sug1=2&rsv_sug7=101";
			}
            else if(type.equals("Google")){
            	path = "https://www.google.com.hk/?gws_rd=cr#newwindow=1&safe=strict&q="+key;
			}
			
		}else{
			if(type.equals("Baidu")){
				path = "https://m.baidu.com/from=844b/s?word="+key+"&ts=3411587&t_kt=0&ie=utf-8&fm_kl=021394be2f&rsv_iqid=2606624193&rsv_t=e806rHpCQ3HNNk3FK9sNTVvqCkz7%252F3Ig%252Ffur2mtmb9wxTlCKvD6fQN%252BzvQ&sa=ib&ms=1&rsv_pq=2606624193&rsv_sug4=2555&inputT=1341&ss=100";
			}
			else if(type.equals("Google")){
				path = "https://www.google.com.hk/search?q="+key+"&rlz=1CDGOYI_enTW724CN724&oq="+key+"&aqs=chrome..69i57j0l3j69i60j69i61.1378j0j4&hl=zh-CN&sourceid=chrome-mobile&ie=UTF-8";
			}
		}
		
		
		request.getRequestDispatcher("dispatch.jsp").forward(request, response);
	}
}
