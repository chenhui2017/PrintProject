using PrintDAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintBLL
{
    /// <summary>
    /// Users yzz  2017-4-29 0.39
    /// </summary>
  public  class UsersBLL
    {

      
        /// <summary>
        /// 
        /// </summary>
        /// <param name="username">用户名</param>
        /// <param name="pwd">密码</param>
        /// <returns>用户信息</returns>
        public DataTable getUsers(string username, string pwd)
        {
            try
            {
                DataTable dtUsers = UsersDAL.GetUsers(username, pwd);
                return dtUsers;
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
