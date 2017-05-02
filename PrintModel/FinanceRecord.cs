using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintModel
{
    /// <summary>
    /// 财务记录表 yzz  2017-4-29 16：27
    /// </summary>
  public  class FinanceRecord
    {
        public int       ID;//ID
        public string    Classify;//类型 默认收入
        public int       CompanyInfoID;//`公司信息表ID`默认是0
        public string    CompanyName;//公司名称
        public int       CraftOrderSummaryID;//`工单总表ID`
        public string    CraftOrderNumber;//工单号`
        public int       PurchaseRecordID;//采购记录表ID`默认是0
        public string    FundType;//款项类型`
        public decimal   AmountReceivable;//`应收金额`
        public decimal   AmountReceivaed ;//`实收金额`
        public decimal   AmountUncalled ;//`未收金额`
        public decimal   AmountPayable;//应付金额`
        public decimal   AmountPaid;//实付金额`
        public decimal   AmountUnpaid;//未付金额`
        public decimal   AmountAdvanced ;//`预付金额`
        public decimal   AmountSurrenderProfits;//利金额`
        public string    Status;//状态`
        public string    SettleDestroy;//结销`是或者否
        public string    Audit;//审核 是或者否
        public string    InboundOrderNumber;//入库单号`
        public DateTime  DateTime ;//时间`
        public string    Operator;//操作员`
        public string    Receiver;//收款人`
        public string    Abstract;//摘要`
        public string    Remark;//备注`

    }
}
