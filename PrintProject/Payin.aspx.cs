using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PrintBLL;
using System.Data;

namespace PrintProject
{
    public partial class Payin : System.Web.UI.Page
    {
        FinanceRecordBLL financeRecordBLL = new FinanceRecordBLL();

        public decimal AmountReceivableSUM = 0; //应收金额汇总
        public decimal AmountAdvancedSUM = 0;//预付金额汇总
        public decimal AmountReceivaedSUM = 0;//实收款
        public decimal AmountUncalledSUM = 0;//余额（未收金额汇总）
        public decimal AmountSurrenderProfitsSUM = 0;//让利金额汇总


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();//加载财务登记表的数据
            
            }

        }

        /// <summary>
        /// 查询财务记录表
        /// </summary>
        public void BindData()
        {
            DataTable dt = financeRecordBLL.GetFinanceRecord();

           

            //var query = from CraftOrderNumber in dt.AsEnumerable() select dt;
           

            //this.anpList.RecordCount = query.Count();
            //int curr_page_index = this.anpList.CurrentPageIndex;
            //if (Request.QueryString["page"] != null && StringHandler.IsNumeric(Request.QueryString["page"].ToString()))
            //{
            //    curr_page_index = Convert.ToInt32(Request.QueryString["page"]);
            //}

            //this.rptFinanceRecord.DataSource = query.Skip((curr_page_index - 1) * this.anpList.PageSize).Take(this.anpList.PageSize);
            //this.rptFinanceRecord.DataBind();
            PagedDataSource pds = new PagedDataSource();
            pds.DataSource =dt.DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = this.anpList.PageSize;
            pds.CurrentPageIndex = this.anpList.CurrentPageIndex - 1;
            this.anpList.RecordCount = dt.Rows.Count;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                AmountReceivableSUM += Convert.ToDecimal(dt.Rows[i]["AmountReceivable"]); //应收金额汇总
                AmountAdvancedSUM += Convert.ToDecimal(dt.Rows[i]["AmountAdvanced"]); ;//预付金额汇总
                AmountReceivaedSUM += Convert.ToDecimal(dt.Rows[i]["AmountReceivaed"]); ;//实收款
                AmountUncalledSUM += Convert.ToDecimal(dt.Rows[i]["AmountUncalled"]); ;//余额（未收金额汇总）
                AmountSurrenderProfitsSUM += Convert.ToDecimal(dt.Rows[i]["AmountSurrenderProfits"]); ;//让利金额汇总
            }
            rptFinanceRecord.DataSource = pds;
            rptFinanceRecord.DataBind();  

        }
        protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
        {
            this.anpList.CurrentPageIndex = e.NewPageIndex;
            BindData();
        }  
    }
}