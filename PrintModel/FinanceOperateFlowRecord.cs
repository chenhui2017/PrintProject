using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintModel
{
    /// <summary>
    /// 财务操作流水记录 yzz 2017-4-29 22:45
    /// </summary>
   public class FinanceOperateFlowRecord
    {
        public int       ID ;//ID
        public int       CompanyInfoID ;//`公司信息表ID` 默认-1
        public int       intFinancialRecordID;//财务记录表ID` 默认-1
        public string    Classify;//类别
        public string    FundType;//款项类型`
        public decimal   Price;//--`金额`
        public string    Operator;//操作员`
        public DateTime  DateTime;//	--`时间`
        public string    Remark;//`备注`
 
    }
}
