using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using My_CARE;
using System.Web.UI.DataVisualization.Charting;

public partial class Reports : System.Web.UI.Page
{
    My_CARE_Data data = new My_CARE_Data();
    protected void Page_Load(object sender, EventArgs e)
    {
/*        var conn = new OdbcConnection();
        conn.ConnectionString = "DATABASE=BLUDB;HOSTNAME=awh-yp-small03.services.dal.bluemix.net;PORT=50000;PROTOCOL=TCPIP;UID=dash105479;PWD=7LdEtp8oSk9O;";
            conn.Open();*/        
        


    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        System.Data.DataTable dt = new System.Data.DataTable();
        dt = data.GetRecords("Select * from [Table]");
        reportDataGrid.DataSource = dt;
        reportDataGrid.DataBind();

        dt = data.GetRecords("Select top 3 Loan_Amt, COUNT(Loan_Number) from [Table]");
        string[] x = new string[dt.Rows.Count];
        int[] y = new int[dt.Rows.Count]; 
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            x[i] = dt.Rows[i][0].ToString();
            y[i] = Convert.ToInt32(dt.Rows[i][1]);
        }
        /*Chart1.Series[0].Points.DataBindXY(x,y);
        Chart1.Series[0].ChartType = SeriesChartType.Column;
        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
        Chart1.Legends[0].Enabled = true;*/

    }
}