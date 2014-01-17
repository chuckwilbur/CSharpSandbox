<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%: ViewData["title"] %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Message"] %></h2>
    ViewContext: <%: ViewContext.View %><br />
    ViewData: <% Html.RenderPartial("ShowDataUserControl"); %>
    Server: <%: Server.MachineName %><br />
    Is Authenticated: <%: User.Identity.IsAuthenticated %><br />
    ViewStateUserKey: <%: ViewStateUserKey %><br />
    
</asp:Content>
