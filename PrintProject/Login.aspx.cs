using PrintBLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrintProject
{
    public partial class Login : System.Web.UI.Page
    {
        UsersBLL UserBll = new UsersBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
               

            }

        }



        /// <summary>
        /// MD5加密
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string MD5(string str)
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5");
        }

        /// <summary>
        /// 设置Cookie值(经过Url加密)
        /// </summary>
        /// <param name="param">参数名称</param>
        /// <param name="defValue">值</param>
        public static void SetCookieValue(string param, string defValue)
        {
            HttpContext.Current.Response.Cookies[param].Value = HttpContext.Current.Server.UrlEncode(defValue);
        }

        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="sender">对控件象</param>
        /// <param name="e">事件</param>
        protected void btnlogin_Click1(object sender, EventArgs e)
        {
            try
            {
                string user = this.username.Text.Trim();
                string pwd = this.password.Text.Trim();

                DataTable dt = UserBll.getUsers(user, MD5(pwd));
                if (dt.Rows.Count <= 0)
                {
                    this.RegisterStartupScript("提示", "<script>alert('帐号或密码错误!')</script>");
                  
                    password.Text = "";
                    username.Focus();
                    return;
                }
                else
                {
                    SetCookieValue("mg_username", user);//清账号
                    Session["user"] = user;
                    Response.Redirect("Main.aspx", false);
                }
            }
            catch (Exception exc)
            {
                PublicOpt.WriteLog(exc.ToString());
            }
        }
    }
}