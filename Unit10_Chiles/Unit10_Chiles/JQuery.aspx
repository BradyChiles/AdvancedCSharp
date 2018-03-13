<%@ Page Title="" Language="C#" MasterPageFile="~/Unit10.Master" AutoEventWireup="true" CodeBehind="JQuery.aspx.cs" Inherits="Unit10_Chiles.WebForm4" %>

<asp:Content ID="scriptContent" ContentPlaceHolderID="headContent" runat="server">
    <script>
        $(document).ready(function () {
            $('#jqueryButton').click(function () {
                console.log("inside function");
                $('#lblJQueryMessage').html("Hello, world - this is a fresh message using JQuery! The time right now is: " + new Date($.now()));
            });
        });

    </script>
</asp:Content>

<asp:Content ID="jqueryContent" ContentPlaceHolderID="mainContent" runat="server">

    <div class="container">

        <h1>jQuery Enabled Page</h1>

        <form id="jqueryForm" runat="server">

            <label id="lblJQueryMessage">Click the Button!</label>
            <br />
            <button id="jqueryButton" type="button">Chnage the Time!</button>

        </form>

    </div>

</asp:Content>
