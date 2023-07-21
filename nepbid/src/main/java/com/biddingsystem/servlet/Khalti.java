package com.biddingsystem.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Khalti
 */
@WebServlet("/Khalti")
public class Khalti extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    // Requirements:
    private static final String KHALTI_URI = "https://a.khalti.com/api/v2/"; // Sandbox URI for Khalti API
    private static final String KHALTI_SECRET = "test_secret_key_c481dbc5d7a54698a5f1db7e74e155d5";
 
    /**
     * Validate a payment using the Khalti API.
     *
     * @param token  The payment token received from the client.
     * @param amount The payment amount.
     * @param pid    The payment ID associated with the payment.
     * @return A map representing the validation result with success, message, and data fields.
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Khalti() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		
		URL url = new URL(KHALTI_URI);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestProperty("Authorization", "Key " + KHALTI_SECRET);
        conn.setDoOutput(true);
        
	}

	    public static Map<String, Object> khaltiValidator(String token, double amount, String pid) {
	        Map<String, Object> payload = new HashMap<>();
	        payload.put("token", "test_secret_key_c481dbc5d7a54698a5f1db7e74e155d5");
	        payload.put("amount", amount);
	 
	        try {
	            URL url = new URL(KHALTI_URI);
	            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	            conn.setRequestMethod("POST");
	            conn.setRequestProperty("Content-Type", "application/json");
	            conn.setRequestProperty("Authorization", "Key " + System.getenv("KHALTI_SECRET"));
	            conn.setDoOutput(true);
	 
	            String jsonPayload = convertMapToJson(payload);
	 
	            try (OutputStream os = conn.getOutputStream()) {
	                byte[] input = jsonPayload.getBytes("utf-8");
	                os.write(input, 0, input.length);
	            }
	 
	            int responseCode = conn.getResponseCode();
	 
	            if (responseCode == HttpURLConnection.HTTP_OK) {
	                try (BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
	                    String response = br.readLine();
	                    Map<String, Object> json_response = convertJsonToMap(response);
	                    String name = (String) ((Map<String, Object>) json_response.get("user")).get("name");
	                    String rid = (String) json_response.get("idx");
	                    Map<String, Object> data = new HashMap<>();
	                    data.put("name", name);
	                    data.put("pid", pid);
	                    data.put("rid", rid);
	                    return createSuccessResponse("Payment Success", data);
	                }
	            } else if (responseCode == HttpURLConnection.HTTP_BAD_REQUEST) {
	                try (BufferedReader br = new BufferedReader(new InputStreamReader(conn.getErrorStream()))) {
	                    String response = br.readLine();
	                    Map<String, Object> json_response = convertJsonToMap(response);
	                    String errorKey = (String) json_response.get("error_key");
	                    if ("already_verified".equals(errorKey)) {
	                        return createErrorResponse("Already Paid", "data from khalti");
	                    }
	                }
	            }
	 
	            return createErrorResponse("Payment Unsuccess", "data from khalti");
	        } catch (Exception e) {
	            e.printStackTrace();
	            return createErrorResponse("Payment Unsuccess", "data from khalti");
	        }
	    }
	 
	    private static Map<String, Object> createErrorResponse(String string, String string2) {
			// TODO Auto-generated method stub
			return null;
		}

		// ... (rest of the code remains the same)
	 
	    private static Map<String, Object> createSuccessResponse(String string, Map<String, Object> data) {
			// TODO Auto-generated method stub
			return null;
		}

		/**
	     * Converts a Map to a JSON string.
	     * (Implement your preferred JSON library if needed.)
	     */
	    private static String convertMapToJson(Map<String, Object> map) {
	        // Implementation goes here (e.g., using Jackson, Gson, etc.)
	        return null;
	    }
	 
	    /**
	     * Converts a JSON string to a Map.
	     * (Implement your preferred JSON library if needed.)
	     */
	    private static Map<String, Object> convertJsonToMap(String json) {
	        // Implementation goes here (e.g., using Jackson, Gson, etc.)
	        return null;
	    }
	 
	    // ... (rest of the code remains the same)

}