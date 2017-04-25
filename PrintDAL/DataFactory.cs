using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace PrintDAL
{
    /// <summary>
    /// 连接数据库服务工厂
    /// </summary>
    public class DataFactory
    {
        /// <summary>
        /// 链接 SqlServer 数据库
        /// </summary>
        /// <returns></returns>
        public static IDbHelper SqlDataBase()
        {
            //SqlServer_RM_DB   SqlServer_CHFMDB_DB
           // return new SqlServerHelper(new Encrypt().DesDecrypt(ConfigHelper.GetAppSettings("SqlServer_CHFMDB_DB"), "CH").Trim());

            return new SqlServerHelper(ConfigHelper.GetAppSettings("SqlServer_CHFMDB_DB").Trim());
        }

        /// <summary>
        /// 访问LP数据库【现已停止使用 20161101】
        /// </summary>
        /// <returns></returns>
        public static IDbHelper SqlDataBaseForLisPis()
        {
            return new SqlServerHelper(new Encrypt().DesDecrypt(ConfigHelper.GetAppSettings("SqlServer_LP_DB"), "CH").Trim());
        }

    }
}
