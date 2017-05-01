using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintDAL
{
    /// <summary>
    /// 角色权限管理
    /// </summary>
    public class RolesJurisdictionDAL
    {
        /// <summary>
        /// 获取角色权限列表
        /// </summary>
        /// <param name="strsql"></param>
        /// <returns></returns>
        public static DataTable GetRolesJurisdictionList(string strRole)
        {
            try
            {
                string strSql = "select a.ID,Role,b.Explain,left(PowerString,6) as PowerString,Activate from RolesJurisdiction a inner join PaperInfo b on a.PaperInfoID=b.ID where Role like '%" + strRole + "%'";
                return DBHandle.Getdt(strSql);
            }
            catch (Exception exc)
            {
                //异常处理
                return null;
            }
        }

        /// <summary>
        /// 获取角色权限详细列表(增删改查导出打印详细分开)
        /// </summary>
        /// <param name="strsql"></param>
        /// <returns></returns>
        public static DataTable GetRolesJurisdictionDetailList(string strRole)
        {
            try
            {
                string strSql = "select a.ID,Role,b.Explain, left(PowerString,1) as 'Add', right(left(PowerString,2),1) as 'Delete', right(left(PowerString,3),1) as 'Edit', right(left(PowerString,4),1) as 'select', right(left(PowerString,5),1) as 'Export', right(left(PowerString,6),1) as 'Print', Activate from RolesJurisdiction a inner join PaperInfo b on a.PaperInfoID=b.ID  where Role like '%" + strRole + "%'";
                return DBHandle.Getdt(strSql);
            }
            catch (Exception exc)
            {
                //异常处理
                return null;
            }
        }

        /// <summary>
        /// 修改权限
        /// </summary>
        /// <param name="ID">主键ID</param>
        /// <param name="PowerString">权限字符串</param>
        /// <param name="Activate">是否激活</param>
        /// <returns></returns>
        public static int UpdateRoleJurisdiction(string ID, string PowerString, string Activate)
        {
            try
            {
                string strSql = string.Format("update RolesJurisdiction set PowerString='{0}', Activate='{1}' where id={2}", PowerString.PadRight(10, '0'), Activate, ID);
                return DBHandle.ExecuteNonQuery(strSql);
            }
            catch (Exception exc)
            {
                //异常处理
                return -1;
            }
        }
    }
}
