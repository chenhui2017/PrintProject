using PrintDAL.BaseSys;
using PrintModel.BaseSys;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintBLL.BaseSys
{
    public class ProductTypeBLL
    {
        ProductTypeDAL dal =new ProductTypeDAL();

        public DataTable Get(ProductType entity)
        {
            return dal.Get(entity);
        }
        public bool Del(int? id)
        {
            return dal.Del(id);
        }
        public bool Update(ProductType entity)
        {
            return dal.Update(entity);
        }
        public bool Add(ProductType entity)
        {
            return dal.Add(entity);
        }
    }
}
