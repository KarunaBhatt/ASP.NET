using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class RegForm : System.Web.UI.Page
{
    SqlConnection Cnn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            String Str = WebConfigurationManager.ConnectionStrings["X"].ConnectionString;
             Cnn = new SqlConnection(Str);
            Cnn.Open();
            Response.Write("Connection open");
            int Id = Int16.Parse(Tid.Text);
            int MoN = Int16.Parse(TMoNo.Text);

        String Qry = "insert into Users (id,UserName,PassWord,Email,MobileNo,Address) values("+Id+",'" + TUser.Text + "','" + TPass.Text + "','" + TMail.Text + "',"+ MoN +",'" + TAddress.Text + "')";
            SqlCommand Cmd = new SqlCommand(Qry, Cnn);
            Response.Write("command");
            Cmd.ExecuteNonQuery();
                Cnn.Close();
   
              

    }
}