using PrintBLL.BaseSys;
using PrintModel.BaseSys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrintProject.BaseSys
{
    /// <summary>
    /// ProductType 的摘要说明
    /// </summary>
    public class ProductTypeHandler : BaseHttpHandler<ProductType>
    {
       
        public void GetProductType()
        {
            var ProductType = PostDataToModel();
            var bll = new ProductTypeBLL();
            var data = bll.Get(ProductType);
            Write(data);
        }
    }
}