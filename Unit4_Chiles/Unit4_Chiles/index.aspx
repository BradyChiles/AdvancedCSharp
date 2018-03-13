<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Unit4_Chiles.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Royal Inns and Suites - Reservation Request</title>
    <meta name="viewport" content="width=device-width, inital-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/main.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <div class ="container">

        <header>
            <h1>Royal Inns and Suites</h1>
        </header>

        <h4>Where you're always treated like royalty</h4>

         <h2>Reservation Request</h2>

        <form id="form1" runat="server" defaultfocus ="txtArrival" defaultButton ="btnSubmit">

           <h3>Request Data</h3>

            <div class = "form-group">
                <label for="txtArrival" id="lblArrival">Arrival Date</label>
                <asp:RequiredFieldValidator CssClass ="reqField" ID="reqArrival" runat="server" ErrorMessage="This field is required" ControlToValidate="txtArrival"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtArrival" runat="server" CssClass ="form-control"></asp:TextBox>
            </div>

            <div class = "form-group">
                <label for="txtDeparture" id="lblDeparture">Departure Date</label>
                <asp:RequiredFieldValidator CssClass ="reqField" ID="reqDeparture" runat="server" ErrorMessage="This field is required" ControlToValidate="txtDeparture"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtDeparture" runat="server" CssClass ="form-control"></asp:TextBox>
            </div>

            <div class = "form-group">
                <label for="ddlPeople" id="lblPeople">Number of People</label>
                <asp:DropDownList ID="ddlPeople" runat="server" CssClass = "form-control">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:DropDownList>
               
            </div>

            <div class = "form-group">
                <label for="ddlPeople" id="lblBed">Bed Type</label>
                <asp:RadioButton ID="rdoKing" runat="server" 
                     Checked ="True" GroupName ="Beds" Text ="King"/>
                <asp:RadioButton ID="rdo2Queen" runat="server" 
                     Checked ="False" GroupName ="Beds" Text ="Two Queens"/>
                <asp:RadioButton ID="rdoQueen" runat="server" 
                     Checked ="False" GroupName ="Beds" Text ="One Queen"/>
            </div>

            <h3>Special Requests</h3>

            <div class = "form-group">
                <asp:TextBox ID="txtSpecialRequests" runat="server" CssClass ="form-control"
                    Rows ="7" TextMode ="MultiLine"></asp:TextBox>
            </div>

            <h3>Contact Information</h3>

            <div class = "form-group">
                <label for="txtFirstName" id="lblFirstName">First Name</label>
                <asp:RequiredFieldValidator CssClass ="reqField" ID="reqFirstName" runat="server" ErrorMessage="This field is required" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass ="form-control"></asp:TextBox>
            </div>

            <div class = "form-group">
                <label for="txtLastName" id="lblLastName">Last Name</label>
                <asp:RequiredFieldValidator CssClass ="reqField" ID="reqLastName" runat="server" ErrorMessage="This field is required" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtLastName" runat="server" CssClass ="form-control"></asp:TextBox>
            </div>

            <div class = "form-group">
                <label for="txtEmail" id="lblEmail">Email Address</label>
                <asp:RequiredFieldValidator CssClass ="reqField" ID="reqEmail" runat="server" ErrorMessage="This field is required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtEmail" runat="server" CssClass ="form-control" TextMode ="Email"></asp:TextBox>
            </div>

            <div class = "form-group">
                <label for="txtPhone" id="lblPhone">Phone Number</label>
                <asp:RequiredFieldValidator CssClass ="reqField" ID="reqPhone" runat="server" ErrorMessage="This field is required" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>          
                <asp:TextBox ID="txtPhone" runat="server" CssClass ="form-control" TextMode ="Phone"></asp:TextBox>
            </div>

            <div class = "form-group">
                <label for="ddlContact" id="lblContact">Prefered Contact Method</label>
                <asp:DropDownList ID="ddlContact" runat="server" CssClass = "form-control">
                    <asp:ListItem>Email</asp:ListItem>
                    <asp:ListItem>Phone</asp:ListItem>
                 </asp:DropDownList>
            </div>

            <div class = "form-group">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click"/>
               <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn" OnClick="btnClear_Click" CausesValidation="False"/>
            </div>

            <div class = "form-group confirmationLabels">
                <asp:Label ID="lblConfirmation" runat="server" Text=""></asp:Label>
                <br />
                <asp:Label ID="lblConfirmation2" runat="server" Text=""></asp:Label>
            </div>

        </form>

        <label id="lblCopyright">&copy;2014, Royal Inns and Suites</label>
    </div>
</body>
</html>
