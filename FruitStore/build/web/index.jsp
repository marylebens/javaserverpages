<%@ page language="java" contentType="text/html" %>
<html>
<body bgcolor="lightgrey">
    <h2> Welcome to the Fruit Store!</h2>
    <p>We deliver top quality fresh fruit directly to your home.</p>
    <jsp:useBean id="clock" class="java.util.Date" />

<% 

if (clock.getHours( ) < 12) { %>
  Good morning!
<% } else if (clock.getHours( ) < 17) { %>
  Good day!
<% } else { %>
  Good evening!
<% } %>

    <h3>Choose your fruit:</h3>
  <form action="index.jsp">
    <input type="checkbox" name="fruits" value="Apple">Apple<br>
    <input type="checkbox" name="fruits" value="Banana">Banana<br>
    <input type="checkbox" name="fruits" value="Orange">Orange<br>
    <input type="submit" value="Enter">
  </form>  
<%
    //Use the request object to get the array of fruits that the user chose.
    String[] picked = request.getParameterValues("fruits");
    
    //If the array is not null, then loop through the array of fruits.
    if (picked != null && picked.length != 0) {
%>
      You picked the following fruits:
      <ul>
<%
        //Loop through the array of fruits and display each fruit.
        for (int i = 0; i < picked.length; i++) {
            out.println("<li>" + picked[i]);
        } //end for loop
%>
      </ul>
<% }//end if %>

</body>
</html>