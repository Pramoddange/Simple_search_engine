<%@page import ="java.util.ArrayList"%>
<%@page import="com.HistoryResult"%>
<html>
<head>
<link rel ="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<h1> Simple Search Engine</h1>
<form action ="Search">
   <input type="text" name="keyword"></input>
   <button type="submit">Search</button>
</form>
<form action ="History">
 <button type="submit">History</button>
 </from>
   <table border =2 align="center" class ="resultTable">
   <tr>
   <th>keyword</th>
   <th>link</th>
   </tr>
   <%
        ArrayList<HistoryResult> results=(ArrayList<HistoryResult>)request.getAttribute("result");
        for(HistoryResult result:results){
     %>
     <tr>
         <td><%out.println(result.getKeyword());%></td>
               <td><a href="<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
      </tr>
      <%
      }
      %>
      </table>
      </body>
      </html>
