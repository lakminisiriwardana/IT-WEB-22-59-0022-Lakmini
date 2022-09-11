using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace StudentInformation
{
    public partial class Details_page : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string sqlquery = "SELECT Students.StudentId, Students.Name, Students.City, Students.Email, Courses.CourseId, Courses.CourseName, Courses.LecturerName FROM Students INNER JOIN Courses ON Students.CourseId = Courses.CourseId";

            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);

            sqlconn.Open();

            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();                       
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            sqlconn.Close();

           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}