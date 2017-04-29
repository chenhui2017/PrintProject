using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintModel
{
   /// <summary>
   /// Users yzz  2017-4-29 0.39
   /// </summary>
  public  class Users
    {
        public int        ID;    //ID 自增
        public string     UserName;//帐号`
        public string     Pwd; //	--`密码`
        public string     FullName; //`全名`
        public string     Gender; //`性别`
        public DateTime   Birthday; //生日`
        public string     Email; //电子邮件`
        public string     QQ ; //QQ
        public string     WorkExperience; //工作经历`
        public string     Role; //`角色`
        public DateTime   LastLoginDateTime; //最后登陆时间`
        public DateTime   RegisterDateTime; //`注册时间`
        public string     Phone; //相片`  
        public string     Remark; //备注`  
        public string     LoginIP; //登陆IP`
        public string     UserTelphone; //
        public string     UserAddress; //
        public string     Activate ; //--`激活` 默认是激活
        public string     Homepage; //--`主页`
        public string     HomeTelephone; //`家庭电话`
        public string     HomeAddress; //家庭住址`
        public string     CellPhone; //手机号`
        public string     NativePlace; //`籍贯`
        public string     Nation; //`民族`
        public string     EmergencyContact; //紧急联系人`
        public string     EmergencyTelephone; //`紧急联系电话`
        public string     Jurisdiction; //权限`
    }
}
