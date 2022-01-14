using consciencia.DAO;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace consciencia
{
    public partial class historias : System.Web.UI.Page
    {
        public List<HistoriaDAO> usersHistories;
        private string connectionString = ConfigurationManager.AppSettings["CONNECTION_STRING"];

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection(
               connectionString))
            {
                var queryString = "SELECT * FROM tbHistorias where DeletedAt is null";
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                usersHistories = new List<HistoriaDAO>();
                while (reader.Read())
                { 
                    HistoriaDAO history = new HistoriaDAO()
                    {
                        Id = (int?)reader[0],
                        Nome = (string)reader[1],
                        Historia = (string)reader[2]
                    };

                    usersHistories.Add(history);
                }
                reader.Close();
            }

            if (!Page.IsPostBack)
            {
                Repeater1.DataSource = usersHistories;
                Repeater1.DataBind();
            }
        }

        public void addClick(object sender, EventArgs e)
        {
            Response.Redirect("~/suahistoria.aspx");
        }

        public void edit_Click(object sender, CommandEventArgs e)
        {
            var Id = (String)e.CommandArgument;
            Response.Redirect($"~/suahistoria.aspx?Id={Id}");
        }

        public void delete_Click(object sender, CommandEventArgs e)
        {
            var Id = (String)e.CommandArgument;
            using (SqlConnection connection = new SqlConnection(
               connectionString))
            {
                var queryString = $"UPDATE tbHistorias SET DeletedAt = sysdatetime() WHERE Id = {Id}";
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Connection.Open();
                command.ExecuteNonQuery();

                Response.Redirect(Request.RawUrl);
            }

        }
    }
}