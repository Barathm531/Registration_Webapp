
<%
	String msg = (String) session.getAttribute("msg");

	if (msg != null) {
%>


<div class="alert alert-success text-center" role="alert">
<strong><%=msg %></strong>
	
</div>
<%
	session.removeAttribute("msg");
	}
%>

