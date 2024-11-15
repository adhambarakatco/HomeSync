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
    public partial class ViewAllTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RetrieveUserTasks(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["HOMESYNC_3"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            try
            {
                int user_id1 = Int32.Parse(user_id.Text);
                SqlCommand viewTaskCommand = new SqlCommand("ViewMyTask", conn);
                viewTaskCommand.CommandType = System.Data.CommandType.StoredProcedure;
                viewTaskCommand.Parameters.Add(new SqlParameter("@user_id", user_id1));
                conn.Open();
                var taskStatus = viewTaskCommand.ExecuteScalar();
                if (taskStatus != null)
                {
                    outputBox.InnerText = "Task Status: " + taskStatus.ToString();
                }
                else
                {
                    outputBox.InnerText = "No task found for the given user ID.";
                }
            }
            catch (SqlException sqlEx)
            {
                outputBox.InnerText = "SQL Error: " + sqlEx.Message;
            }
            catch (Exception ex)
            {
                outputBox.InnerText = "Error: " + ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}