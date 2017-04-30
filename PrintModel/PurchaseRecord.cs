using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintModel
{
    /// <summary>
    /// 采购记录表  yzz 2017-4-29 23:33
    /// </summary>
  public  class PurchaseRecord
    {
            public int      ID;//ID
            public string   Audit;//审核 默认否
            public string   SettleDestroy;//结销`默认否
            public string   Status;//状态`  默认申请采购
            public string   Category;//类别`
            public string   Type;//`类型`
            public string   Supplier;//供应商`
            public string   Brand;//`品牌`
            public string   Standard;//规格`
            public string   Unit;//`单位`
            public int      Grammage;//`克数`默认是0
            public decimal  TonOfPrice;//吨价`
            public decimal  UnitPrice;//`单价`保留四位小数
            public int      Amount;//数量`
            public decimal  Due;//应付款`
            public decimal  AmountSurrenderProfits;//让利款`
            public decimal  AmountPaid;//实付款`
            public decimal  AmountAdvanced;//预付款`
            public decimal  AmountUnpaid ;//`余额款`
            public int      WarningAmount;//`报警数`默认是10
            public DateTime DateTime;//`时间`
            public string   Template;//模板`默认是否
            public string   Operator;//`操作员`
            public int      FinancialRecordID;//财务记录表ID`
            public string   DepartmentName;//部门名称`
            public string   Receiver;//领料人`
            public string   StorageManager;//仓管`
            public string   Remark;//`备注`
            public string   Printer;//`印刷机器`
    }
}
