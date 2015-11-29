using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for My_CARE_Data
/// </summary>
public class My_CARE_Data
{
    string conn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

    public DataTable GetRecords(string Query)
    {
        try
        {
            SqlConnection objsqlconn = new SqlConnection(conn);
            SqlCommand MyCommand2 = new SqlCommand(Query, objsqlconn);
            objsqlconn.Open();            
            SqlDataAdapter MyAdapter = new SqlDataAdapter();
            MyAdapter.SelectCommand = MyCommand2;
            DataTable dTable = new DataTable();
            MyAdapter.Fill(dTable);
            objsqlconn.Close();
            return dTable;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    public void UpdateLoginTime(string UserID, string Pwd)
    {
        try {
            string strSQL = "Update  UserData Set LastLogin=@LastLogin WHERE UserID=@UserID and Password=@Pwd";
            SqlConnection objsqlconn = new SqlConnection(conn);
            SqlCommand UpdateCommand = new SqlCommand(strSQL, objsqlconn);
            objsqlconn.Open();
            UpdateCommand.Parameters.AddWithValue("@LastLogin", DateTime.Now.ToString());
            UpdateCommand.Parameters.AddWithValue("@UserID", UserID);
            UpdateCommand.Parameters.AddWithValue("@Pwd", Pwd);
            UpdateCommand.ExecuteNonQuery();
            objsqlconn.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}
