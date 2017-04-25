using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Xml;
using System.IO;
using System.Configuration;


namespace PrintDAL
{
    /// <summary>
    ///  Config 公共帮助类
    /// </summary>
    public class ConfigHelper
    {
        /// <summary>
        /// 获得配置文件appSettings子节点值
        /// </summary>
        /// <param name="key">键</param>
        /// <returns></returns>
        public static string GetAppSettings(string key)
        {
        //  return ConfigurationManager.AppSettings[key].ToString().Trim();
          return ConfigurationManager.ConnectionStrings["SqlServer_CHFMDB_DB"].ToString();
            
        }

        /// <summary>
        /// 加载全局log配置
        /// </summary>
        /// <param name="config">键</param>
        /// <returns></returns>
        public static void  LoadLogConfig(string config)
        {
            log4net.Config.XmlConfigurator.ConfigureAndWatch(new System.IO.FileInfo(config));
        }
        /// <summary>
        /// 修改配置文件
        /// </summary>
        /// <param name="xmlDocument"></param>
        /// <param name="selectPath"></param>
        /// <param name="key"></param>
        /// <param name="keyValue"></param>
        public static void SetValue(XmlDocument xmlDocument, string selectPath, string key, string keyValue)
        {
            XmlNodeList xmlNodeList = xmlDocument.SelectNodes(selectPath);
            foreach (XmlNode xmlNode in xmlNodeList)
            {
                if (xmlNode.Attributes["key"].Value.ToUpper().Equals(key.ToUpper()))
                {
                    xmlNode.Attributes["value"].Value = keyValue;
                    break;
                }
            }
        }
    }
}
