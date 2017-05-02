using PrintDAL.BaseSys;
using PrintModel.BaseSys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrintProject.Test
{
    public partial class TestProductType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var dal = new ProductTypeDAL();
            bool isSuccess = dal.Add(new ProductType
            {
                Brand = "Test品牌",
                Spec = "Spec",
                TypeCode1 = "TypeCode1",
                TypeCode2 = "TypeCode2",
                TypeName1 = "TypeName1",
                TypeName2 = "TypeName2"
            });
        }
    }
}