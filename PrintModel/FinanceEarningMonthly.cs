using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintModel
{
    /// <summary>
    /// 财务收入月结表  yzz 2017-4-29 23:00
    /// </summary>
   public  class FinanceEarningMonthly
    {
        public int       ID;//ID
        public int       CompanyInfoID;//公司信息表ID`
        public decimal   LastMonthShiftTo;//上月转入`
        public decimal   AmountReceivable;//应收金额`
        public decimal   AmountReceivaed;//`实收金额`
        public decimal   AmountUncalled;//`未收金额`
        public int       Year;//`年`
        public int       Month;//`月`
        public decimal   TimeToStart;//时段开始`
        public decimal   TimeToEnd;//`时段结束`
        public DateTime  DateTime;//`时间`
    }
}
