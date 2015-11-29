using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    My_CARE_Data data = new My_CARE_Data();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();

        dt = data.GetRecords("Select * from UserData Where UserID='"+ txtUserID.Text +"' AND Password='"+ txtPwd.Text +"'");
        if(dt.Rows.Count > 0)
        {
            Session.Add("UserID", txtUserID.Text);
            Session.Add("Pwd", txtPwd.Text);
            data.UpdateLoginTime(txtUserID.Text, txtPwd.Text);
            Response.Redirect("Home.aspx");           
        }
        else
        {
            loginError.Text ="Invalid UserID or Password";
        }
    }
    protected void btnClose_Click(object sender, EventArgs e)
    {

    }
}