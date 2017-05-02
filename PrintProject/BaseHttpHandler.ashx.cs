using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;

namespace PrintProject
{
    /// <summary>
    /// BaseHttpHandler 的摘要说明
    /// </summary>
    public class BaseHttpHandler<T> : IHttpHandler where T : new()
    {
        public HttpContext context;
        public BaseHttpHandler()
        {
           
        }
        public BaseHttpHandler(HttpContext context)
        {
            this.context = context;
        }
        public void ProcessRequest(HttpContext context)
        {
            this.context = context;
            if (string.IsNullOrEmpty(context.Request["action"]))
            {
                return;
            }
            string action = context.Request["action"];

            Type ty = this.GetType();
            MethodInfo method = ty.GetMethod(action);
            if (method != null)
            {
                method.Invoke(this,null);  
                return;
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
        public void Write(Object o = null,bool isSuccess=true,string msg="")
        {
            var data = JsonHelper.ObjectToJson(o);
            context.Response.ContentType = "text/plain";
            context.Response.Write(new {isSuccess=isSuccess,msg=msg, data=data });
        }
        public  T PostDataToModel()
        {
            var model = new T();
            Type t = model.GetType();
            PropertyInfo[] pis = t.GetProperties();
            foreach (PropertyInfo pi in pis)
            {
                if (!string.IsNullOrEmpty(context.Request.Form[pi.Name]))
                {
                    Type type = pi.PropertyType;
                    Type underlyingType = Nullable.GetUnderlyingType(type);
                    pi.SetValue(model, Convert.ChangeType(context.Request.Form[pi.Name], underlyingType ?? type));
                }
            }
            return model;
        }
    }
}