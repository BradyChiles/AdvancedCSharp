<%@ Page Title="" Language="C#" MasterPageFile="~/Unit10.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Unit10_Chiles.WebForm1" %>

<asp:Content ID="indexContent" ContentPlaceHolderID="mainContent" runat="server">

    <div class="container">

        <h1>Welcome!</h1>

        <p>This is a website that demonstrates the difference between an Ajax ENabled web page and one that doe snot use Ajax. 
            The page that doe suse Ajax will update the time on the label by peforming a 'partial page post bacl' to the server (no spinney). 
            The page that does not use Ajax will perform a 'full page post back' to the server (and you will see the spinney).</p>

        <p>Just for fun...there is a third way to update information without doing any 'post backs' at all using JQuery.</p>

    </div>
</asp:Content>
