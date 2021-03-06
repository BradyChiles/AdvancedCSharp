﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Unit4_Chiles.index" %>

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

        
            
        <h3>Request Data</h3>

        <form id="form1" runat="server" defaultfocus ="txtArrival" defaultButton ="btnSubmit">

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass ="summary text-danger"
            HeaderText ="Please correct these entries:"/>

            <div class = "form-group">
                <label for="txtArrival" id="lblArrival">Arrival Date</label>
                <asp:RequiredFieldValidator CssClass ="validator" ID="reqArrival" runat="server" ErrorMessage="Arrival Date" ControlToValidate="txtArrival" Display="Dynamic">This field is required</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Arrival Date must be before Departure Date" ControlToCompare="txtDeparture" Operator="DataTypeCheck" Type="Date" ControlToValidate="txtArrival"></asp:CompareValidator>
                <asp:TextBox ID="txtArrival" runat="server" CssClass ="form-control"></asp:TextBox>
            </div>

            <div class = "form-group">
                <label for="txtDeparture" id="lblDeparture">Departure Date</label>
                <asp:RequiredFieldValidator CssClass ="validator" ID="reqDeparture" runat="server" ErrorMessage="Departure Date" ControlToValidate="txtDeparture" Display="Dynamic">This field is required</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Departure Date must be after Arrival Date" ControlToCompare="txtArrival" Operator="GreaterThan" Type="Date" ControlToValidate="txtDeparture"></asp:CompareValidator>
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

            <div class = "form-group radioButtons">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server"></asp:RadioButtonList>
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
                <asp:RequiredFieldValidator CssClass ="validator" ID="reqFirstName" runat="server" ErrorMessage="First Name" ControlToValidate="txtFirstName" Display="Dynamic">This field is required</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass ="form-control"></asp:TextBox>
            </div>

            <div class = "form-group">
                <label for="txtLastName" id="lblLastName">Last Name</label>
                <asp:RequiredFieldValidator CssClass ="validator" ID="reqLastName" runat="server" ErrorMessage="Last Name" ControlToValidate="txtLastName" Display="Dynamic">This field is required</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtLastName" runat="server" CssClass ="form-control"></asp:TextBox>
            </div>

            <div class = "form-group">
                <label for="txtEmail" id="lblEmail">Email Address</label>
                <asp:RequiredFieldValidator CssClass ="validator" ID="reqEmail" runat="server" 
                    ErrorMessage="Email Address" ControlToValidate="txtEmail" Display="Dynamic">This field is required</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator CssClass ="validator" ID="regexEmail" runat="server"
                     Display="Dynamic" ValidationExpression = "\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ErrorMessage="Email Format" ControlToValidate="txtEmail">Must be a valid email address</asp:RegularExpressionValidator>
                <asp:TextBox ID="txtEmail" runat="server" CssClass ="form-control" TextMode ="Email"></asp:TextBox>
            </div>

            <div class = "form-group">
                <label for="txtPhone" id="lblPhone">Phone Number</label>
                <asp:RequiredFieldValidator CssClass ="validator" ID="reqPhone" runat="server" ErrorMessage="Phone Number" ControlToValidate="txtPhone" Display="Dynamic">This field is required</asp:RequiredFieldValidator>          
                <asp:RegularExpressionValidator CssClass ="validator" ID="regexPhone" runat="server"
                     Display="Dynamic" ValidationExpression = "((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" 
                    ErrorMessage="Phone Format" ControlToValidate="txtPhone">Use this format: (999) 999-9999</asp:RegularExpressionValidator>
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

        </form>

        <label id="lblCopyright">&copy;2014, Royal Inns and Suites</label>
    </div>
</body>
</html>
