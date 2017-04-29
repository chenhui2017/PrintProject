using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

/*
 *  Author: TerranRen
 *  Data:   2017-02-22
 */
namespace PrintProject
{
    /// <summary>
    /// 公共方法类
    /// </summary>
    public class PublicOpt
    {
        /// <summary>
        /// 写入日志
        /// </summary>
        /// <param name="msg">日志内容</param>
        public static void WriteLog(string msg)
        {
            try
            {
                if (!Directory.Exists("d:/log/晨辉/"))//如果不存在就创建file文件夹
                {
                    Directory.CreateDirectory("d:/log/晨辉/");
                }

                System.IO.StreamWriter sw = System.IO.File.AppendText(
                    //AppDomain.CurrentDomain.BaseDirectory + @"bin\"   +
                    "d:/log/晨辉/" +
                    DateTime.Now.ToString("yyyyMMdd") + ".Log"
                    );
                sw.WriteLine(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss: ") + msg + "\n");
                sw.Close();
            }
            catch
            { }
        }

        /// <summary>
        /// 控制TextBox中只能输入数字  8为删除健
        /// </summary>
        /// <param name="c">e.KeyChar</param>
        /// <returns></returns>
        public static bool Key_PressMethod(char c)
        {
            //阻止从键盘输入键   
            bool result = true;
            if ((c >= 48 && c <= 57) || c == 8)
            {
                result = false;
            }
            return result;
        }
    }
}
