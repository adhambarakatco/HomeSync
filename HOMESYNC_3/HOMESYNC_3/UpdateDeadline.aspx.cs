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
    public partial class UpdateDeadline : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void UpdateTaskDeadline(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["HOMESYNC_3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                DateTime deadline = DateTime.Parse(deadline_date.Text);
                int task_id1 = int.Parse(task_id.Text);
                SqlCommand updateDeadlineCmd = new SqlCommand("UpdateTaskDeadline", conn);
                updateDeadlineCmd.CommandType = System.Data.CommandType.StoredProcedure;
                updateDeadlineCmd.Parameters.AddWithValue("@deadline", deadline);
                updateDeadlineCmd.Parameters.AddWithValue("@task_id", task_id1);

                conn.Open();
                updateDeadlineCmd.ExecuteNonQuery();
                conn.Close();
                outputBox.InnerText = "Deadline updated successfully!";
            }
            catch (Exception ex)
            {
                outputBox.InnerText = "Error: " + ex.Message;
            }
        }
    }
}