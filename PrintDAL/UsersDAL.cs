using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintDAL
{
    /// <summary>
    /// Users yzz  2017-4-29 0.39
    /// </summary>
   public class UsersDAL
    {
        /// <summary>
        /// 查询用户列表
        /// </summary>
        public static DataTable GetUsers(string username, string pwd)
        {

            StringBuilder strSql = new StringBuilder();
            string strWhere = string.Empty;
            strWhere = "where UserName='" + username + "' and Pwd='" + pwd + "'";
            string Sql = string.Format(@" SELECT   ID, UserName, Pwd, Activate='是' from  Users   {0} ", strWhere);
            strSql.Append(Sql);
            return DataFactory.SqlDataBase().GetDataTableBySQL(strSql);


        }
    }
}
