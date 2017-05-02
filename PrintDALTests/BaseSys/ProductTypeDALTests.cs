
using NUnit.Framework;
using PrintDAL.BaseSys;
using PrintModel.BaseSys;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrintDAL.BaseSys.Tests
{
    [TestFixture]
    public class ProductTypeDALTests
    {
        [Test]
        public void AddTest()
        {
           
            var dal=new ProductTypeDAL();
            bool isSuccess = dal.Add(new ProductType {
                                Brand="Test品牌",
                                Spec= "Spec",
                                TypeCode1= "TypeCode1",
                                TypeCode2= "TypeCode2",
                                TypeName1= "TypeName1",
                                TypeName2= "TypeName2"
                            });
            Assert.IsTrue(isSuccess);
        }
    }
}