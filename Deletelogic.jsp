<%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%
    
    String name=request.getParameter("name");
    String lname=request.getParameter("lname");
   


    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/ecommerce","root","1234");
        PreparedStatement st=
con.prepareStatement("delete from customer where customer_name=? and customer_lastname=?");       
        st.setString(1,name);
        st.setString(2,lname);
         
        st.executeUpdate();
        con.close();
        response.sendRedirect("Delete.jsp");

    
%>