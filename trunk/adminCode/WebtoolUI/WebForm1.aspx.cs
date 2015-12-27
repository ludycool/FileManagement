using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebtoolUI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          TextBox1.Text= Request.Cookies["UserData"]["AdminUserInfo"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("UserData");//初使化并设置Cookie的名称
            DateTime dt = DateTime.Now;
            TimeSpan ts = new TimeSpan(0, 1, 0, 0, 0);//过期时间为1分钟
            cookie.Expires = dt.Add(ts);//设置过期时间
            string AdminUserInfo = "AdminUserInfo";
            cookie.Values.Add("AdminUserInfo", AdminUserInfo);
            Response.AppendCookie(cookie);
        }
    }
}