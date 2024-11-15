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
    public partial class ViewTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ViewT(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["HOMESYNC_3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            try
            {
                int user_id1 = Int32.Parse(user_id.Text);
                int creator1 = Int32.Parse(creator.Text);

                SqlCommand viewTaskCommand = new SqlCommand("ViewTask", conn);
                viewTaskCommand.CommandType = System.Data.CommandType.StoredProcedure;
                viewTaskCommand.Parameters.Add(new SqlParameter("@user_id", user_id1));
                viewTaskCommand.Parameters.Add(new SqlParameter("@creator", creator1));

                conn.Open();
                SqlDataReader reader = viewTaskCommand.ExecuteReader();

                if (reader.HasRows)
                {
                    taskGridView.DataSource = reader;
                    taskGridView.DataBind();
                    reader.Read();
                    outputTask.Text = GetTaskDetailsFromReader(reader);
                }
                else
                {
                    outputTask.Text = "No task details found.";
                }
            }
            catch (Exception ex)
            {
                outputTask.Text = "Error: " + ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }
        private string GetTaskDetailsFromReader(SqlDataReader reader)
        {
            return $"Task ID: {reader["task_id"]}\r\nTask Name: {reader["task_name"]}\r\nCreation Date: {reader["creation_date"]}\r\nDue Date: {reader["due_date"]}\r\nCategory: {reader["category"]}\r\nCreator: {reader["creator"]}\r\nTask Status: {reader["task_status"]}\r\nReminder Date: {reader["reminder_date"]}\r\nTask Priority: {reader["task_priority"]}";
        }
       
    }
}