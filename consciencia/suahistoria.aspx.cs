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
    public partial class suahistoria : System.Web.UI.Page
    {
        private string connectionString = ConfigurationManager.AppSettings["CONNECTION_STRING"];
        public string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            string Id = Request.QueryString["Id"];

            if (!IsPostBack)
            {
                if (Id != null)
                {
                    id = Id;
                    var hist = ObterHistoria(id);
                    nomeTxtBox.Text = hist.Nome;
                    historiaTxtBox.Text = hist.Historia;
                }
            }


        }

        protected HistoriaDAO ObterHistoria(string id)
        {
            HistoriaDAO hist = new HistoriaDAO();
            using (SqlConnection connection = new SqlConnection(
               connectionString))
            {
                var queryString = $"SELECT top 1 * from tbHistorias where id = {id}";
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    hist = new HistoriaDAO()
                    {
                        Id = (int?)reader[0],
                        Nome = (string)reader[1],
                        Historia = (string)reader[2],
                    };
                }
                reader.Close();
            }

            return hist;
        } 

        protected void CreateHistoria_Click(object sender, EventArgs e)
        {
            var nome = nomeTxtBox.Text;
            var historia = historiaTxtBox.Text;

            if(id == null)
            {
                //criar
                Criar(nome, historia);
            }
            else
            {
                //atualizar
                Atualizar(id, nome, historia);
            }

            Response.Redirect("~/historias.aspx");
        }

        //metodo criar

        private void Criar(string nome, string historia)
        {
            using (SqlConnection connection = new SqlConnection(
               connectionString))
            {
                var queryString = $"INSERT INTO tbHistorias(nome, historia) values ('{nome}', '{historia}');";
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Connection.Open();
                command.ExecuteNonQuery();
            }
        }

        //metodo atualizar
        private void Atualizar(string id, string nome, string historia)
        {
            using (SqlConnection connection = new SqlConnection(
               connectionString))
            {
                var queryString = $"UPDATE tbHistorias SET Nome = '{nome}', Historia = '{historia}', UpdatedAt = sysdatetime() WHERE Id = {id};";
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Connection.Open();
                command.ExecuteNonQuery();
            }
        }
    }
}