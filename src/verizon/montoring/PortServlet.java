package verizon.montoring;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PortServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PortServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String deviceId = request.getParameter("deviceId");
		List<PortDetails> pDetails = new MonitoringDAO().distinctPort(deviceId);
		request.setAttribute("pDetails", pDetails);
		this.getServletContext().getRequestDispatcher("/PortDetails.jsp")
				.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
