using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PrintBLL;

namespace PrintProject
{
    public partial class RolesJurisdiction : System.Web.UI.Page
    {
        public string role = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //ddlUserType.SelectedValue = Session["Role"].ToString();
            if (Session["Role"] != null && Session["Role"].ToString() != "" && ddlUserType.SelectedValue == "")
            {
                ddlUserType.SelectedValue = Session["Role"].ToString();
            }
            if (!IsPostBack)
            {

                //ddlUserType.Items.Add("超级管理员");
                //ddlUserType.Items.Add("普通管理员");
                //ddlUserType.Items.Add("超级用户");
                getRolesList("");
                //给btnSearch添加客户端事件  
                btnSearch.Attributes.Add("OnClick", "return GetAuthorityList()");
                //btnUpdate.Attributes.Add("OnClick", "return GetAuthorityListByUserType()");
            }
            //点下一页如何保留角色类型？？
        }

        //获得用户列表
        public void getRolesList(string strRole)
        {
            try
            {
                DataTable dt = RolesJurisdictionBLL.GetRolesJurisdictionList(strRole);
                //dvList.DataSource = dt;
                //dvList.DataBind();

                //rptRolesJurisdiction
                    
                PagedDataSource pds = new PagedDataSource();
                pds.DataSource =dt.DefaultView;
                pds.AllowPaging = true;
                pds.PageSize = this.anpList.PageSize;
                pds.CurrentPageIndex = this.anpList.CurrentPageIndex - 1;
                this.anpList.RecordCount = dt.Rows.Count;
                rptRolesJurisdiction.DataSource = pds;
                rptRolesJurisdiction.DataBind();  
            }
            catch (Exception exc)
            {
                //异常处理
            }
        }

        //获得用户详细权限列表，用于修改
        public void getRolesDetailList(string strRole)
        {
            try
            {
                DataTable dt = RolesJurisdictionBLL.GetRolesJurisdictionDetailList(strRole);

                dvEditList.DataSource = dt;
                dvEditList.DataBind();  
            }
            catch (Exception exc)
            {
                //异常处理
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            role = ddlUserType.Text;
            Session["Role"] = ddlUserType.SelectedValue;
            getRolesList(role);
            getRolesDetailList(role);
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            
        }

        //保存权限消息
        protected void btnSaveRoleJuridiction_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < dvEditList.Rows.Count; i++)
            {
                string ID = "";
                string PowerString = "";
                string Activate = "";
                Label lblID = (Label)dvEditList.Rows[i].FindControl("lblID");
                CheckBox cboxAdd = (CheckBox)dvEditList.Rows[i].FindControl("cbAdd");
                CheckBox cboxDelete = (CheckBox)dvEditList.Rows[i].FindControl("cbDelete");
                CheckBox cboxEdit = (CheckBox)dvEditList.Rows[i].FindControl("cbEdit");
                CheckBox cboxSelect = (CheckBox)dvEditList.Rows[i].FindControl("cbSelect");
                CheckBox cboxExport = (CheckBox)dvEditList.Rows[i].FindControl("cbExport");
                CheckBox cboxPrint = (CheckBox)dvEditList.Rows[i].FindControl("cbPrint");
                CheckBox cboxActivate = (CheckBox)dvEditList.Rows[i].FindControl("cbActivate");

                ID = lblID.Text;
                PowerString += cboxAdd.Checked == true ? "1" : "0";
                PowerString += cboxDelete.Checked == true ? "1" : "0";
                PowerString += cboxEdit.Checked == true ? "1" : "0";
                PowerString += cboxSelect.Checked == true ? "1" : "0";
                PowerString += cboxExport.Checked == true ? "1" : "0";
                PowerString += cboxPrint.Checked == true ? "1" : "0";
                Activate = cboxActivate.Checked == true ? "是" : "否";

                RolesJurisdictionBLL.UpdateRoleJurisdiction(ID, PowerString, Activate);
            }
            btnSearch_Click(sender, e); //重新加载查询
        }

        protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
        {
            this.anpList.CurrentPageIndex = e.NewPageIndex;
            //role = Session["Role"].ToString() == null ? "" : Session["Role"].ToString();
            role = ddlUserType.SelectedValue;
            getRolesList(role);
        }
    }
}