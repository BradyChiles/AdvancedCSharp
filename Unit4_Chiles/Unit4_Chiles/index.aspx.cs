using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/** =========================================================

 Brady Chiles

 Operating System Windows 10

 Microsoft Visual Studio 2015

 CIS 174

 Name Of homework Assignment Unit 4 Royal Inss and Suites

 Program Description: This program will take input from the user for a submission form on a reservation.
    It will then validate that each of the fields has a value and print back a confirmation message to the user.

 Academic Honesty:

 I attest that this is my original work.

 I have not used unauthorized source code, either modified or unmodified.

 I have not given other fellow student(s) access to my program.

=========================================================== **/

namespace Unit4_Chiles
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Shuts of unobtrusive validation
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //Sets the arrival date text box to current date
            txtArrival.Text = DateTime.Today.ToShortDateString();
        }

        //Once the form has been validated after submit button click
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Print out confirmation message
            lblConfirmation.Text = "Thank you for your request.";
            lblConfirmation2.Text = "We will get back to you within 24 hours.";
        }

        //Reset all the fields to defaults
        protected void btnClear_Click(object sender, EventArgs e)
        {
            //Reset all fields
            txtArrival.Text = DateTime.Today.ToShortDateString();
            txtDeparture.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtSpecialRequests.Text = "";
            txtPhone.Text = "";
            rdoKing.Checked = true;
            rdo2Queen.Checked = false;
            rdoQueen.Checked = false;
            ddlPeople.SelectedIndex = 0;
            ddlContact.SelectedIndex = 0;
        }
    }
}