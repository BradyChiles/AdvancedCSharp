using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/** =========================================================

 Brady Chiles

 Operating System: Windows 10
 Microsoft Visual: Visual Studio 2015

 CIS 174

 Name Of homework Assignment Unit 2 - Price Quotation

 Program Description: This program wil laccept input through two text boxes. One for sales and one for discount percent.
                      The Calculate button can then be pressed to determine the discount amount and total sales after discount.
                      The Clear button will clear the text boxes, and the discount amount/sales price labels.
                      There are required field validators on each of the text boxes.

 Academic Honesty:

 I attest that this is my original work.

 I have not used unauthorized source code, either modified or unmodified.

 I have not given other fellow student(s) access to my program.

=========================================================== **/

namespace Unit2_Chiles
{
    public partial class Index : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            //Shuts off unobtrusive validation
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        //Calulcate Button Click
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //Variables
            double salesPrice = 0;
            double discountPercent = 0;
            double discountAmount = 0;
            double totalSales = 0;

            //Pull vaue from sales price text box
            salesPrice = Convert.ToDouble(txtSalesPrice.Text);

            //Takes the value from the discount percent text box and makes it a decimal.
            discountPercent = (Convert.ToDouble(txtDiscountPercent.Text)) / 100;

            //Calculate discount amount
            discountAmount = salesPrice * discountPercent;
            //Assigns the discount amount to the label
            lblDiscountAmount.Text = "Discount Amount: " + discountAmount.ToString("c");

            //Calculates total sales
            totalSales = salesPrice - discountAmount;
            //Assigns total sales to label
            lblTotalPrice.Text = "Total Sales: " +  totalSales.ToString("c");
        }

        //Clear Button Click
        protected void btnClear_Click(object sender, EventArgs e)
        {
            //Clears the text boxes of input and discount amount/total price of answers
            txtSalesPrice.Text = "";
            txtDiscountPercent.Text = "";
            lblDiscountAmount.Text = "Discount Amount: ";
            lblTotalPrice.Text = "Total Price: ";
        }

    }
}