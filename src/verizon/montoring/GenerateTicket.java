package verizon.montoring;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GenerateTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GenerateTicket() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String serviceId = request.getParameter("serviceId");

		int zipcode = Integer.parseInt(request.getParameter("zipcode"));
		new MonitoringDAO().sendTicket(zipcode, serviceId);
		List<Ticket> ticket = new MonitoringDAO().groupTicket();

		request.setAttribute("ticket", ticket);

		this.getServletContext().getRequestDispatcher("/GroupTicket.jsp")
				.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
