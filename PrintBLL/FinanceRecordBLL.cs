using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PrintDAL;
using System.Data;

namespace PrintBLL
{
    public   class FinanceRecordBLL
    {



          /// <summary>
          /// 查询财务记录表
          /// </summary>
          /// <returns>财务记录表</returns>
        public DataTable GetFinanceRecord()
        {
            try
            {
                DataTable dtFinanceRecord =FinanceRecordDAL .GetFinanceRecord();
                return dtFinanceRecord;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
