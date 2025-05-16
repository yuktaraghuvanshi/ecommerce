<%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%
    
   
String customer_name = request.getParameter("customer_name");
String customer_lastname = request.getParameter("customer_lastname");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/ecommerce", "root", "1234");

PreparedStatement st = con.prepareStatement(
    "INSERT INTO customer (customer_name, customer_lastname) VALUES (?, ?)");

st.setString(1, customer_name);
st.setString(2, customer_lastname);

st.executeUpdate();
con.close();

response.sendRedirect("Signup.jsp");


    
%>