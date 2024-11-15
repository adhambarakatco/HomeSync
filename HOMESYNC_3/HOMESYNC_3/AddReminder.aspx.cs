using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOMESYNC_3
{
    public partial class AddReminder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AddReminder_Click(object sender, EventArgs e)
        {
            try
            {
                string connStr = WebConfigurationManager.ConnectionStrings["HOMESYNC_3"].ToString();
                SqlConnection conn = new SqlConnection(connStr);

                int task_id1 = Int32.Parse(task_id.Text);

                DateTime reminderDate;
                if (DateTime.TryParse(reminder_date.Text, out reminderDate))
                {
                    SqlCommand addReminderCmd = new SqlCommand("AddReminder", conn);
                    addReminderCmd.CommandType = System.Data.CommandType.StoredProcedure;
                    addReminderCmd.Parameters.AddWithValue("@task_id", task_id1);
                    addReminderCmd.Parameters.AddWithValue("@reminder", reminderDate);
                    conn.Open();
                    addReminderCmd.ExecuteNonQuery();
                    conn.Close();
                    if (addReminderCmd.Parameters["@reminder"].Value != DBNull.Value)
                    {
                        outputBox.InnerHtml = "Reminder added successfully!";
                    }
                    else
                    {
                        outputBox.InnerHtml = "Failed to add reminder. Please try again.";
                    }
                }
                else
                {
                    outputBox.InnerHtml = "Invalid date format. Please enter a valid date.";
                }
            }
            catch (Exception ex)
            {
                outputBox.InnerHtml = "An error occurred: " + ex.Message;
            }
        }
    }
}