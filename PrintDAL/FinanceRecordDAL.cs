using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintDAL
{
  public  class FinanceRecordDAL
    {
        /// <summary>
        /// 查询财务记录表
        /// </summary>
      public static DataTable GetFinanceRecord()
        {
            StringBuilder strSql = new StringBuilder();
            string Sql = string.Format(@" select f.ID,  f.DateTime,f.CraftOrderNumber,f.CompanyName,f.Abstract,f.AmountReceivable,f.AmountAdvanced,f.AmountReceivaed,f.AmountUncalled,f.AmountSurrenderProfits,f.SettleDestroy,
            f.FundType,f.Status,f.Audit,f.Remark FROM FinanceRecord AS f LEFT JOIN CompanyInfo AS C ON f.CompanyInfoID=C.ID");
            strSql.Append(Sql);
            return DataFactory.SqlDataBase().GetDataTableBySQL(strSql);


        }

    }
}
