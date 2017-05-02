using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PrintModel.BaseSys;

namespace PrintDAL.BaseSys
{
   public class ProductTypeDAL
    {
        /// <summary>
        /// 查询
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public DataTable Get(ProductType entity)
        {

            StringBuilder strSql = new StringBuilder();
            string strWhere = " where 1=1";
            if (!string.IsNullOrWhiteSpace(entity.TypeName1))
            {
                strWhere += string.Format(" and TypeName1='{0}'", entity.TypeName1);
            }
            if (!string.IsNullOrWhiteSpace(entity.TypeName1))
            {
                strWhere += string.Format(" and TypeName2='{0}'", entity.TypeName2);
            }
            if (!string.IsNullOrWhiteSpace(entity.TypeName1))
            {
                strWhere += string.Format(" and Brand='{0}'", entity.Brand);
            }
            
            string Sql = string.Format(@" SELECT   * from  productType   {0} ", strWhere);
            strSql.Append(Sql);
            return DataFactory.SqlDataBase().GetDataTableBySQL(strSql);
        }
        /// <summary>
        /// 删除
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool Del(int? id)
        {
            StringBuilder strSql = new StringBuilder();
            string strWhere = " where 1=1";
            if (id != null)
            {
                strWhere += string.Format(" and id='{0}'", id);
            }

            string Sql = string.Format(@" delete from  productType   {0} ", strWhere);
            strSql.Append(Sql);
            return DataFactory.SqlDataBase().ExecuteBySql(strSql)>0?true:false;
        }
        /// <summary>
        /// 修改
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public bool Update(ProductType entity)
        {
            string strUpdate = string.Empty;

            string strWhere = " where id="+ entity.ID;
            if (!string.IsNullOrWhiteSpace(entity.TypeName1))
            {
                strUpdate += string.Format(" TypeName1='{0}',", entity.TypeName1);
            }
            if (!string.IsNullOrWhiteSpace(entity.TypeCode1))
            {
                strUpdate += string.Format(" TypeCode1='{0}',", entity.TypeCode1);
            }
            if (!string.IsNullOrWhiteSpace(entity.TypeCode2))
            {
                strUpdate += string.Format(" TypeCode2='{0}',", entity.TypeCode2);
            }
            if (!string.IsNullOrWhiteSpace(entity.TypeName2))
            {
                strUpdate += string.Format(" TypeName2='{0}',", entity.TypeName2);
            }
            if (!string.IsNullOrWhiteSpace(entity.Spec))
            {
                strUpdate += string.Format(" Spec='{0}',", entity.Spec);
            }
            if (string.IsNullOrWhiteSpace(strUpdate))
            {
                throw new NotImplementedException();
            }
            else
            {
                strUpdate = strUpdate.Substring(0, strUpdate.Length - 1);
            }

            string Sql = string.Format(@" update productType  set  {0} {1}", strUpdate,strWhere);
            return DataFactory.SqlDataBase().ExecuteBySql(Sql) > 0 ? true : false;
        }
        /// <summary>
        /// 新增
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public bool Add(ProductType entity)
        {      
            string Sql = string.Format(@" insert into productType  values('{0}','{1}','{2}','{3}','{4}','{5}')  ",entity.TypeCode1,entity.TypeName1,entity.TypeCode2,entity.TypeName2,entity.Brand,entity.Spec);
            return DataFactory.SqlDataBase().ExecuteBySql(Sql) > 0 ? true : false;
        }
    }
}
