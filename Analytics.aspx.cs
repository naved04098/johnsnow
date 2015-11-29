using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Runtime.Serialization;
using System.Web.Script.Serialization;

public partial class Analytics : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string data = "{\r\n \"tablename\":\"scoreInput\", \r\n\"header\":[\"Age\", \"Sex\", \"BP\", \"Cholesterol\", \"Na\", \"K\", \"Drug\"], \r\n                \"data\":[[43.0, \"M\", \"LOW\", \"NORMAL\", 0.526102, 0.027164, \"drugY\"],\r\n                [50.0, \"F\", \"LOW\", \"NORMAL\", 0.585855, 0.027164, \"drugY\"]]\r\n            }  ";
        string url = "https://palbyp.pmservice.ibmcloud.com/pm/v1/score/Drug1n?accesskey=6tVl4VvWIVwHf3zYy6lnGMOndqg6ZfJSkISpgxlJzP5aIp6qnzBYj8wJBjmaT5jJ6CLJzAmcI+FiCS0IC9kjhE8rGTqTf55DhypmZGQkAJn2/hzItxwTyfk8ciez8bEeivq07pKthG6dLzRK54DsxNTEhsl5QpR8zFO4oYemXTzSMK6UKWvuXovTJ2c7BigW";
        Label1.Text= WebRequestinJson(url, data);   
        
    }

    public string WebRequestinJson(string url, string postData)
    {
        string ret = string.Empty;
        try
        {
            StreamWriter requestWriter;
            var webRequest = System.Net.WebRequest.Create(url) as HttpWebRequest;
            if (webRequest != null)
            {
                webRequest.Method = "POST";
                webRequest.ServicePoint.Expect100Continue = false;
                webRequest.Timeout = 20000;                
                webRequest.ContentType = "application/json";
                //POST the data.
                using (requestWriter = new StreamWriter(webRequest.GetRequestStream()))
                {
                    requestWriter.Write(postData);
                }
            }

            HttpWebResponse resp = (HttpWebResponse)webRequest.GetResponse();
            Stream resStream = resp.GetResponseStream();
            StreamReader reader = new StreamReader(resStream);
            ret = reader.ReadToEnd();

            
        }
        catch (WebException webex)
        {
            WebResponse errResp = webex.Response;
            using (Stream respStream = errResp.GetResponseStream())
            {
                StreamReader reader = new StreamReader(respStream);
                string text = reader.ReadToEnd();
            }
        }
        return ret;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Analytics_Result.aspx");
    }
}