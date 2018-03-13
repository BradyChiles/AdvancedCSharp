<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Unit8_Chiles.Default"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title>Halloween Superstore</title>
    <link href="Main.css" rel="stylesheet" type="text/css" />

</head>

<body>

    <header>

        <img src="Images/banner.jpg" alt="Halloween Store" />

    </header>

    <section>

        <form id="form1" runat="server">

            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" 
                DataKeyNames="ProductID" DataSourceID="ObjectDataSource1" Width="351px">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="true"/>
                    <asp:BoundField DataField="Name" HeaderText="Name"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("OnHand") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtOnHand" runat="server" Text='<%# Bind("OnHand") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvOnHand" runat="server" ControlToValidate="txtOnHand" ErrorMessage="On Hand is required."></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvOnHand" runat="server" ControlToValidate="txtOnHand" 
                                Type="Integer"
                                Operator="GreaterThan"
                                ValueToCompare="-1"
                                ErrorMessage="On hand cannot be negative."></asp:CompareValidator>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Link" CausesValidation="false" ShowEditButton="true"/>
                    <asp:CommandField ButtonType="Link" CausesValidation="false" ShowDeleteButton="true"/>
                </Columns>
                
            </asp:GridView>

            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
                OldValuesParameterFormatString="original_{0}"
                SelectMethod="GetProducts" TypeName="Unit9_Chiles.App_Code.ProductDB"
                UpdateMethod="UpdateProduct">
                <UpdateParameters>
                    <asp:Parameter Name="original_Product" Type="Object" />
                    <asp:Parameter Name="Product" Type="Object" />
                </UpdateParameters>
            </asp:ObjectDataSource>

            <p>

                <asp:Label ID="lblError" runat="server" CssClass="error"></asp:Label>

            </p>

            <asp:ValidationSummary ID="ValidationSummary1" runat="server"

                HeaderText="Please correct the following errors:" CssClass="error" />

        </form>

    </section>

</body>

</html>