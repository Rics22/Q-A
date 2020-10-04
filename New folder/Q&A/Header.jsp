
<style>
.btn {
    border: none;
    color: white;
    padding: 14px 26px;
    font-size: 16px;
    cursor: pointer;
}

.info {background-color: #179AC4;} /* Blue */
.info:hover {background: #2E4358;}

.danger {background-color: #f44336;} /* Red */ 
.danger:hover {background: #da190b;}

.default {background-color: #e7e7e7; color: black;} /* Gray */ 
.default:hover {background: #ddd;}

</style>

<div align="center">

<%
if(((String)session.getAttribute("utype1"))!=null)
{
%>
	<form action="CommonToAll.jsp?Srch" method="post">
<%
}
else
{
%>
	<form action="Index.jsp?Srch" method="post">
<%
}
%><br>
  <input name="textfield" type="text" size="20" maxlength="100" required/>
  <i class="fa fa-search"><input type="submit" class="w3-button w3-theme" name="Submit" value="Search" /></i>
</form>
</div>
