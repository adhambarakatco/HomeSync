using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOMESYNC_3
{
    public partial class Tasks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RedirectButton_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            switch (clickedButton.ID)
            {
                case "btnViewTask":
                    Response.Redirect("ViewTask.aspx");
                    break;

                case "btnFinishTask":
                    Response.Redirect("FinishTask.aspx");
                    break;

                case "btnViewStatus":
                    Response.Redirect("ViewAllTask.aspx");
                    break;

                case "btnAddReminder":
                    Response.Redirect("AddReminder.aspx");
                    break;

                case "btnUpdateDeadline":
                    Response.Redirect("UpdateDeadline.aspx");
                    break;

                default:
                    break;
            }
        }
    }
}

