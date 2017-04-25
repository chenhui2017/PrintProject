using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace PrintProject
{
    public static class JSON
    {



        /// <summary>
        /// Json转对象
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="jsonString"></param> 
        /// <returns></returns>
        //public static T Json2Object<T>(string jsonString)
        //{
        //    var a = typeof(T);
        //    using (var jsonRead = JsonReaderWriterFactory.CreateJsonReader(Encoding.UTF8.GetBytes(jsonString), System.Xml.XmlDictionaryReaderQuotas.Max))
        //    {
        //        return (T)new DataContractJsonSerializer(typeof(T)).ReadObject(jsonRead);
        //    }
        //}




        /// <summary>
        /// 对象转Json
        /// </summary>
        /// <param name="jsonObject"></param>
        /// <returns></returns>
        public static string Object2Json(object jsonObject)
        {

            try
            {

                return JsonConvert.SerializeObject(jsonObject).Replace("null", "\"\"");

            }
            catch (Exception exMsg)
            {
                return exMsg.ToString();
            }

        }

        /// <summary>
        /// Json转对象
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="json"></param>
        /// <returns></returns>
        public static T Json2Object<T>(string json)
        {
            return JsonConvert.DeserializeObject<T>(json);
        }

        /// <summary>
        /// Json转字典
        /// </summary>
        /// <param name="json"></param>
        /// <returns></returns>
        public static Dictionary<string, string> GetJsonToDic(string json) {

            return JSON.Json2Object<Dictionary<string, string>>(json);
        }

    }
}
