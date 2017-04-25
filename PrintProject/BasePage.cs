using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PrintProject
{
   public   class BasePage:System.Web.UI.Page
    {


        protected override void OnLoad(EventArgs e)
        {
            /*Session超时跳转*/
            if (Session["user"] == null)
            {

                //HttpContext.Current.Response.Write("<Script Language=JavaScript> location.href = 'Login.aspx';</Script>");
                Session.Abandon();  //取消当前会话
                Session.Clear();
                Response.Redirect("Login.aspx");

            }

        }
    }
}
