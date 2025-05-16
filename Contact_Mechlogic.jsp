<%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%
    
    String ad=request.getParameter("street");
    String ci=request.getParameter("city");
    String sta=request.getParameter("state")  ;
        String po=request.getParameter("postal");
                String ph=request.getParameter("phone");

            String email=request.getParameter("email");



    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/ecommerce","root","1234");
        PreparedStatement st=
con.prepareStatement("insert into contact_mech(street_address,city,state,postal_code,phone,email) values(?,?,?,?,?,?)");       
        st.setString(1,ad);
        st.setString(2,ci);
         st.setString(3,sta);
        st.setString(4,po);
         st.setString(5,ph);
          st.setString(6,email);
        st.executeUpdate();
        con.close();
        response.sendRedirect("Contact_Mech.jsp");

    
%>