using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.ServiceModel.Web;
using System.Runtime.Serialization.Json;

namespace PrintProject
{
    public class JasonDataTable
    {

        public string code { get; set; }
        public string desc { get; set; }
        public DataTable data { get; set; }


        /// <summary>
        /// 初始化Jason对象
        /// </summary>
        /// <param name="code"></param>
        /// <param name="desc"></param>
        /// <param name="data"></param>
        public JasonDataTable(string _code, string _desc, DataTable _data)
        {

            this.code = _code;
            this.desc = _desc;
            this.data = _data;


        }




        /// <summary>
        /// 获取Jason字符串
        /// </summary>
        /// <returns></returns>
        public string ToJasonString()
        {
            int c = 0;
            if (data != null)
            {
                c = data.Rows.Count;
            }

            StringBuilder Json = new StringBuilder();
            Json.Append("{");

            Json.Append("\"code\":\"" + code + "\"");
            Json.Append(",\"desc\":\"" + desc + "\"");
            Json.Append(",\"data\":{\"total\":" + c);
            Json.Append(",\"rows\":");
            Json.Append(JsonHelper.DataTableToJson(data, ""));
            Json.Append("}");
            Json.Append("}");
            return Json.ToString().ToLower();
        }
        public string DataTableToJson(DataTable dt,int total)
        {
            StringBuilder sb = new StringBuilder();
            if (dt == null)
            {
                return "查询错误";
            }
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    sb.Append("{");
                    foreach (DataColumn dc in dr.Table.Columns)
                    {
                        sb.Append("\"");
                        sb.Append(dc.ColumnName);
                        sb.Append("\":\"");
                        if (dr[dc] != null && dr[dc] != DBNull.Value && dr[dc].ToString() != "")
                            sb.Append(dr[dc]).Replace("\\", "/");
                        else
                            sb.Append("");
                        sb.Append("\",");
                    }
                    sb = sb.Remove(sb.Length - 1, 1);
                    sb.Append("},");
                }
                sb = sb.Remove(sb.Length - 1, 1);
            }

            sb.Insert(0, "{\"" + "total\":" + total.ToString() + ",\"rows\":[");//dt.Rows.Count
            sb.Append("]}");


            return sb.ToString();
        }
        public string DataTableToJson(DataTable dt)
        {
            StringBuilder sb = new StringBuilder();
            if (dt == null)
            {
                return "查询错误";
            }
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    sb.Append("{");
                    foreach (DataColumn dc in dr.Table.Columns)
                    {
                        sb.Append("\"");
                        sb.Append(dc.ColumnName);
                        sb.Append("\":\"");
                        if (dr[dc] != null && dr[dc] != DBNull.Value && dr[dc].ToString() != "")
                            sb.Append(dr[dc]).Replace("\\", "/");
                        else
                            sb.Append("");
                        sb.Append("\",");
                    }
                    sb = sb.Remove(sb.Length - 1, 1);
                    sb.Append("},");
                }
                sb = sb.Remove(sb.Length - 1, 1);
            }

            sb.Insert(0, "{\"" + "total\":" + dt.Rows.Count.ToString() + ",\"rows\":[");//dt.Rows.Count
            sb.Append("]}");


            return sb.ToString();
        }
         

        // 从一个对象信息生成Json串
        public static string ObjectToJson(object obj)
        {
            DataContractJsonSerializer serializer = new DataContractJsonSerializer(obj.GetType());
            MemoryStream stream = new MemoryStream();
            serializer.WriteObject(stream, obj);
            byte[] dataBytes = new byte[stream.Length];
            stream.Position = 0;
            stream.Read(dataBytes, 0, (int)stream.Length);
            return Encoding.UTF8.GetString(dataBytes);
        }
        // 从一个Json串生成对象信息
        public static object JsonToObject(string jsonString, object obj)
        {
            DataContractJsonSerializer serializer = new DataContractJsonSerializer(obj.GetType());
            MemoryStream mStream = new MemoryStream(Encoding.UTF8.GetBytes(jsonString));
            return serializer.ReadObject(mStream);
        }


        public static string Object2Json(object obj)
        {

            return JsonConvert.SerializeObject(obj);
        }

    }

}
