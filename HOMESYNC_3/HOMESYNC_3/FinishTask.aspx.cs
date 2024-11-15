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
    public partial class FinishTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void FinishMyTask(object sender, EventArgs e)
        {
            try
            {
                string connStr = WebConfigurationManager.ConnectionStrings["HOMESYNC_3"].ToString();
                int user_id1 = Int32.Parse(user_id.Text);
                string title1 = title.Text;

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    using (SqlCommand FinishMyTaskCommand = new SqlCommand("FinishMyTask", conn))
                    {
                        FinishMyTaskCommand.CommandType = System.Data.CommandType.StoredProcedure;
                        FinishMyTaskCommand.Parameters.Add(new SqlParameter("@user_id", user_id1));
                        FinishMyTaskCommand.Parameters.Add(new SqlParameter("@title", title1));
                        conn.Open();
                        object result = FinishMyTaskCommand.ExecuteScalar();                        
                            outputBox.InnerHtml = $"Task '{title1}' has been finished for user {user_id1}.";
                        conn.Close();
                    }
                }
            }
            catch (SqlException sqlEx)
            {
                outputBox.InnerHtml = $"SQL Error: {sqlEx.Message}";
            }
            catch (Exception ex)
            {
                outputBox.InnerHtml = $"Error: {ex.Message}";
            }
        }

    }
}