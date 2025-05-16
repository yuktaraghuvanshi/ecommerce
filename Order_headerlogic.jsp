<%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%
    
    String da=request.getParameter("date");
    int co = Integer.parseInt(request.getParameter("contact"));  
    


    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/ecommerce","root","1234");
        PreparedStatement st=
con.prepareStatement("insert into order_header(order_date,shipping_contact) values(?,?)");       
        st.setString(1,da);
        st.setInt(2,co);
        
        st.executeUpdate();
        con.close();
        response.sendRedirect("Order_header.jsp");

    
%>