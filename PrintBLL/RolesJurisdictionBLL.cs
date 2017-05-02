using PrintDAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintBLL
{
    public class RolesJurisdictionBLL
    {
        /// <summary>
        /// 获取角色权限列表
        /// </summary>
        /// <param name="strsql"></param>
        /// <returns></returns>
        public static DataTable GetRolesJurisdictionList(string strRole)
        {
            return RolesJurisdictionDAL.GetRolesJurisdictionList(strRole);
        }

        /// <summary>
        /// 获取角色权限详细列表(增删改查导出打印详细分开)
        /// </summary>
        /// <param name="strsql"></param>
        /// <returns></returns>
        public static DataTable GetRolesJurisdictionDetailList(string strRole)
        {
            return RolesJurisdictionDAL.GetRolesJurisdictionDetailList(strRole);
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
            if (ID == null || ID == "" || PowerString == "" || Activate == "")
                return -1;

            return RolesJurisdictionDAL.UpdateRoleJurisdiction(ID, PowerString, Activate);
        }
    }
}
