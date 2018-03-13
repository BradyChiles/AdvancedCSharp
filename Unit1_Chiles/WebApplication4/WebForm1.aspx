<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 316px;
            height: 391px;
        }
        .auto-style3 {
            font-size: xx-large;
            height: 62px;
            text-align: center;
        }
        .auto-style11 {
            width: 124px;
            height: 55px;
        }
        .auto-style12 {
            width: 167px;
            height: 55px;
        }
        .auto-style13 {
            width: 124px;
            height: 79px;
        }
        .auto-style14 {
            height: 79px;
            width: 167px;
        }
        .auto-style27 {
            width: 124px;
            height: 86px;
        }
        .auto-style28 {
            height: 86px;
            width: 167px;
        }
        .auto-style31 {
            width: 124px;
            height: 54px;
        }
        .auto-style32 {
            width: 167px;
            height: 54px;
        }
        .auto-style33 {
            width: 124px;
            height: 58px;
        }
        .auto-style34 {
            width: 167px;
            height: 58px;
        }
    </style>
</head>
<body style="height: 620px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="2"><strong>Price Quotation</strong></td>
            </tr>
            <tr>
                <td class="auto-style27">Sales Price:</td>
                <td class="auto-style28">
                    <asp:TextBox ID="txtSalesPrice" runat="server" Height="31px" Width="113px"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Discount Percent:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtDiscountPercent" runat="server" Height="31px" Width="111px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">Discount Amount:</td>
                <td class="auto-style34">
                    <asp:Label ID="lblDiscountAmount" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style31">Total Price:</td>
                <td class="auto-style32">
                    <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="btnCalculate" runat="server" Height="38px" Text="Calculate Price" ToolTip="Calculate" Width="139px" OnClick="btnCalculate_Click" style="text-align: center" />
                </td>
                <td class="auto-style14">
                    </td>
            </tr>
        </table>
        <p>
                    <asp:RequiredFieldValidator ID="reqFieldValidSales" runat="server" ErrorMessage="The Sales Price field is required.   " ControlToValidate="txtSalesPrice" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>       
                    <asp:RangeValidator ID="rangeValidSales" runat="server" ErrorMessage="The Sales Price must be between 10 and 1000." ControlToValidate="txtSalesPrice" ForeColor="Red" MaximumValue="1000" MinimumValue="10"></asp:RangeValidator>
        </p>
        <p>     
                    <asp:RequiredFieldValidator ID="reqFieldValidDiscount" runat="server" ControlToValidate="txtDiscountPercent" ErrorMessage="The Discount Percent field is required.   " ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
                    <asp:RangeValidator ID="rangeValidDiscount" runat="server" ErrorMessage="The Discount Percent must be between 10 and 50." ControlToValidate="txtDiscountPercent" ForeColor="Red" MaximumValue="50" MinimumValue="10"></asp:RangeValidator>
        </p>
    </form>
</body>
</html>
