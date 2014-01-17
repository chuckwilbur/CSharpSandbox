<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<p style="margin-top:0px; padding-left:30px; border:2px solid blue">
<% foreach (KeyValuePair<string, object> data in ViewData) %>
<% { %>
    <%: data.Key %> = <%: data.Value %><br/>
<% } %>
</p>
