using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintModel
{
    /// <summary>
    /// 财务支出月结表 2017-4-29 22:41
    /// </summary>
   public class FinanceSpendMonthly
    {

        public int       ID;//ID
        public int       CompanyInfoID;//公司信息表ID`
        public decimal   LastMonthShiftTo ;//`上月转入`
        public decimal   AmountPayable;//`应付金额`
        public decimal   AmountPaid;//`实付金额`
        public decimal   AmountUnpaid;//未付金额`
        public int       Year;//`年`
        public int       Month;//月`
        public DateTime  TimeToStart;//时段开始`
        public DateTime  TimeToEnd;//时段结束`
        public DateTime  DateTime;//时间`

    }
}
