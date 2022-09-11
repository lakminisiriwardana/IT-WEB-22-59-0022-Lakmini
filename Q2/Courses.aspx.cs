using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentInformation
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String CourseId;
            String CourseName;
            String LecturerName;

            CourseId = TextBox1.Text.ToString();
            CourseName = TextBox2.Text.ToString();
            LecturerName = TextBox3.Text.ToString();

            String connectionString;
            SqlConnection cnn;

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();

            String sql;

            connectionString = "Data Source=DESKTOP-05VFCGC\\MSSQLSERVER01;Initial Catalog=studentinformation;Integrated Security=True";

            cnn = new SqlConnection(connectionString);

            cnn.Open();

            sql = "INSERT INTO Courses (CourseId,CourseName,LecturerName) VALUES ('"+CourseId+"', '"+CourseName+"', '"+LecturerName+"')";

            command = new SqlCommand(sql, cnn);
            adapter.InsertCommand = new SqlCommand(sql, cnn);

            adapter.InsertCommand.ExecuteNonQuery();

            Response.Write("Successfully Added!");

            command.Dispose();

            cnn.Close();
        }
    }
}