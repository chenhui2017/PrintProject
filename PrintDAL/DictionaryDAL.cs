using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/*
 * Author: 任我行
 * Date：2017-03-05
 */
namespace PrintDAL
{
    public static class DictionaryDAL
    {
        /// <summary>
        /// 查询字典列表
        /// </summary>
        /// <param name="PageIndex">页码</param>
        /// <param name="PageSize">分页记录行书</param>
        /// <param name="count"></param>
        /// <returns>DataTable</returns>
        public static DataTable QueryDictionaryList(Dictionary<string, string> dic, int PageIndex, int PageSize, ref int count)
        {
            string strSql = string.Empty;
            string strWhere = string.Empty;

            if (!string.IsNullOrEmpty(dic["DictType"]))
            {
                strWhere += string.Format(@" AND DictType  like  '%{0}%' ", dic["DictType"]);
            }
            
            strSql = string.Format(@" select Id, DictType, DictKey, DictValue from Dictionary where 1=1 {0} ", strWhere);

            return DataFactory.SqlDataBase().GetPageList(strSql, null, "Id", "ASC", PageIndex, PageSize, ref count);
        }

        /// <summary>
        /// 保存字典信息
        /// </summary>
        /// <param name="Param"></param>
        /// <returns>1-编辑成功，2-编辑失败，3-已存在同名LoginName</returns>
        public static int SaveDictionaryInfo(string Param)
        {
            string strSql = string.Empty;
            string paramCol = string.Empty;
            string paramStr = string.Empty;
            Dictionary<string, string> dic = JSON.Json2Object<Dictionary<string, string>>(Param);

            strSql = string.Format(@"SELECT COUNT(*) AS NUM FROM dbo.Dictionary  WHERE ID = '{0}'", dic["ID"]);

            DataTable dt = DataFactory.SqlDataBase().QueryDataTable(strSql);
            if (Convert.ToInt32(dt.Rows[0][0]) > 0)
            {
                //修改  
                foreach (string key in dic.Keys)
                {
                    if (key != "ID")
                        paramStr += string.Format(@" {0}='{1}',", key, dic[key]);
                }

                paramStr = paramStr.TrimEnd(',');
                strSql = string.Format(@"UPDATE dbo.Dictionary SET {1} WHERE ID = '{0}'", dic["ID"], paramStr);
            }
            else
            {
                strSql = string.Format(@"SELECT count(*) as Num FROM dbo.Dictionary  WHERE DictType='{0}' and DictKey='{1}'", dic["DICTTYPE"], dic["DICTKEY"]);

                DataTable dt2 = DataFactory.SqlDataBase().QueryDataTable(strSql);
                if (Convert.ToInt32(dt2.Rows[0][0]) > 0)
                {
                    return 3;
                }
                //新增
                foreach (string key in dic.Keys)
                {
                    if (key != "ID")
                    {
                        paramCol += key + ",";
                        paramStr += "'" + dic[key] + "',";
                    }
                }

                paramCol = paramCol.TrimEnd(',');
                paramStr = paramStr.TrimEnd(',');

                strSql = string.Format(@"INSERT INTO dbo.Dictionary({0}) VALUES({1})", paramCol, paramStr);
            }

            return DataFactory.SqlDataBase().ExecuteBySql(strSql) > 0 ? 1 : 2;
        }
    }
}
