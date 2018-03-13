using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/** =========================================================

 Brady Chiles

 Operating System: Windows 10
 Microsoft Visual Studio 2015

 CIS 174

 Name Of homework Assignment Unit 1 Price Quotation

 Program Description: This program will accept the input of a sales price and the discount percentage through the use of 
                      text boxes. With the push of a calculate button it will determine the amount deducted (discount amount), 
                      and the total price (sales price - discount amount).

 Academic Honesty:

 I attest that this is my original work.

 I have not used unauthorized source code, either modified or unmodified.

 I have not given other fellow student(s) access to my program.

=========================================================== **/

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        //Button click event handler - linked to the caluclate button
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //If he input is valid then it will fire
            if (IsValid)
            {
                //Variables
                double sale = Convert.ToDouble(txtSalesPrice.Text);
                double discountPercent = Convert.ToDouble(txtDiscountPercent.Text);
                double discountAmount;
                double totalPrice;

                //Finds the discount amount by dividing the discount amount by the sale amount.
                discountAmount = discountPercent / sale;
                //Outputs the discount amount formatted to currency to the discount amoutn label.
                lblDiscountAmount.Text = discountAmount.ToString("c");

                //Find the total price by deducting the discount amount from the total sales.
                totalPrice = sale - discountAmount;
                //Outputs yhe totalPrice to the total price label, formatted for curerency.
                lblTotalPrice.Text = totalPrice.ToString("c");
            }   
        }
    }
}