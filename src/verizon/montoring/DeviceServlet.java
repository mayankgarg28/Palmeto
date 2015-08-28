package verizon.montoring;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeviceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeviceServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int zipcode = Integer.parseInt(request.getParameter("zipcode"));
		List<DeviceDetails> dDetails = new MonitoringDAO()
				.distinctDevice(zipcode);
		request.setAttribute("dDetails", dDetails);
		
		this.getServletContext().getRequestDispatcher("/DeviceDetails.jsp")
				.forward(request, response);

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
