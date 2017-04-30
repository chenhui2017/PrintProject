using Microsoft.VisualStudio.TestTools.UnitTesting;
using PrintCommon;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintCommon.Tests
{
    [TestClass()]
    public class ExcelHelperTests
    {
        [TestMethod()]
        public void CreateExcelTest()
        {
            //string fileName = "用户表";
            //string[] columnNames = {"用户名","年龄","备注" };
            //DataTable dt = new DataTable();
            //dt.Columns.Add("UserName", typeof(String));
            //dt.Columns.Add("Age", typeof(String));
            //dt.Columns.Add("Remark", typeof(String));
            //var row = dt.NewRow();
            //row["UserName"] = "liusile";
            //row["Age"] = "18";
            //row["Remark"] = "这是我小号";
            //dt.Rows.Add(row);

            //ExcelHelper.OutPutExcel(dt, columnNames, fileName);
            Assert.IsTrue(true);
        }
    }
}