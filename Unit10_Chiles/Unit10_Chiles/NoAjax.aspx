<%@ Page Title="" Language="C#" MasterPageFile="~/Unit10.Master" AutoEventWireup="true" CodeBehind="NoAjax.aspx.cs" Inherits="Unit10_Chiles.WebForm3" %>

<asp:Content ID="noAjaxContent" ContentPlaceHolderID="mainContent" runat="server">

    <div class="container">

        <h1>Non-Ajax Enabled Page</h1>

        <form id="noAjaxForm" runat="server">

            <asp:Label ID="lblNoAjaxMessage" runat="server" Text="Click the button!"></asp:Label>
            <br />
            <asp:Button ID="btnNoAjax" class="btn btn-primary" runat="server" Text="Update the Time!" OnClick="btnNoAjax_Click"/>

        </form>

    </div>

</asp:Content>
