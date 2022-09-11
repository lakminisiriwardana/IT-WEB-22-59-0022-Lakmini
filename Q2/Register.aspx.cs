using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentInformation
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Name;
            String City;
            String Email;
            String CourseId;

            Name = TextBox1.Text.ToString();
            City = TextBox2.Text.ToString();
            Email = TextBox3.Text.ToString();  
            CourseId = TextBox4.Text.ToString();

            String connectionString;
            SqlConnection cnn;

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();

            String sql;

            connectionString = "Data Source=DESKTOP-05VFCGC\\MSSQLSERVER01;Initial Catalog=studentinformation;Integrated Security=True";

            cnn = new SqlConnection(connectionString);

            cnn.Open();

            sql = "INSERT INTO Students (Name,City,Email,CourseId) VALUES ('" + Name + "', '" + City + "', '" + Email + "', '" + CourseId + "')";

            command = new SqlCommand(sql, cnn);
            adapter.InsertCommand = new SqlCommand(sql, cnn);

            adapter.InsertCommand.ExecuteNonQuery();

            Response.Write("Successfully Registered!");

            command.Dispose();

            cnn.Close();
        }
    }
}