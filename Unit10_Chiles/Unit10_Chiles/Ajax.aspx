<%@ Page Title="" Language="C#" MasterPageFile="~/Unit10.Master" AutoEventWireup="true" CodeBehind="Ajax.aspx.cs" Inherits="Unit10_Chiles.WebForm2" %>

<asp:Content ID="ajaxContent" ContentPlaceHolderID="mainContent" runat="server">

    <div class="container">

        <h1>Ajax Enabled Page</h1>
    
        <form id="ajaxForm" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel ID="updatePanelAjax" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lblAjaxMessage" runat="server" Text="Click the button!"></asp:Label>
                    <br />
                    <asp:Button ID="btnAjax" class="btn btn-primary" runat="server" Text="Update the Time!" OnClick="btnAjax_Click" />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnAjax" />
                </Triggers>
            </asp:UpdatePanel>
        </form>

    </div>

</asp:Content>
