package com.test.ex;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RequestObj")
public class RequestObj extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public RequestObj() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}


	protected void actionDo(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("actionDo");
		
		String aa=(String)request.getAttribute("aa");
		String xy=(String)request.getAttribute("xy");
		
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter pw=response.getWriter();
		
		pw.print("<html><head></head><body>");
		pw.print("RequestObj: "+"<br/>");
		pw.print("aa: "+aa+"<br/>");
		pw.print("xy: "+xy);
		pw.print("</body></html>");
	}

}
