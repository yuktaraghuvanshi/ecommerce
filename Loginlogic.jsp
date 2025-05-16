<%@page  import="java.sql.Connection,java.sql.DriverManager"%>
<%@page  import="java.sql.PreparedStatement" %>
<%@page  import="java.sql.ResultSet" %>

<%
        String fName=request.getParameter("fName");
    String lName=request.getParameter("lName");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/ecommerce","root","1234");
        PreparedStatement st=
con.prepareStatement("select *  from  customer where  customer_name=? and customer_lastname=?");       
        st.setString(1,fName);
        st.setString(2,fName);
        ResultSet rs=st.executeQuery();
        if(rs.next())
        {
            
           
            response.sendRedirect("login.jsp");
            
           
        }
        else{
        out.println("invalid id/password");
        }
%>
