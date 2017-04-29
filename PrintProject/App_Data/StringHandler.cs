using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Net;
using System.Text.RegularExpressions;

/// <summary>
/// 公共类
/// </summary>
public static class StringHandler
{
  
    /// <summary>   
    /// 判断日期的全部格式   
    /// </summary>   
    /// <param name="dateStr">输入日期的字符串</param>   
    /// <returns></returns>   
    public static bool isCheckDate(string dateStr)
    {
        bool _isDate = false;

        string matchStr = "";

        matchStr += @"^((((1[6-9]|[2-9]/d)/d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]/d|3[01]))|(((1[6-9]|[2-9]/d)/d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]/d|30))|(((1[6-9]|[2-9]/d)/d{2})-0?2-(0?[1-9]|1/d|2[0-8]))|(((1[6-9]|[2-9]/d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-)) ";
        matchStr += @"(/s(((0?[0-9])|([1-2][0-3]))/:([0-5]?[0-9])((/s)|(/:([0-5]?[0-9])))))?$ ";

        RegexOptions option = (RegexOptions.IgnoreCase | (RegexOptions.Multiline | RegexOptions.IgnorePatternWhitespace));

        if (Regex.IsMatch(dateStr, matchStr, option))
            _isDate = true;
        else
            _isDate = false;

        return _isDate;
    }
    /// <summary>
    /// 判断字符是否为Duble类型  
    /// </summary>
    public static bool CheckMoneyIsDouble(string strMoney)
    {
        if (((System.Text.RegularExpressions.Regex.
            IsMatch(strMoney, @"^[-]?\d+[.]?\d*$")) ||
            (System.Text.RegularExpressions
            .Regex.IsMatch(strMoney, @"^[1-9]\d*\.\d*|0\.\d*[1-9]\d*$")))
            && CheckCharIsNum(strMoney))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    /// <summary>
    /// 判断是否数字
    /// </summary>
    public static bool CheckCharIsNum(string str)
    {
        string[] her = str.Split('.');
        bool falg = true;
        foreach (string item in her)
        {
            if (!System.Text.RegularExpressions.Regex.IsMatch(item, @"^\d+$"))
            {
                falg = false;
                break;
            }
        }
        return falg;
    }



    /// <summary>
    /// 处理 0.00
    /// </summary>
    public static string HandleDecimal(object obj)
    {
        string str = "";
        if (obj.ToString() == "0.00")
        {
            str = "";
        }
        else
        {
            str = obj.ToString();
        }
        return str;
    }

    /// <summary>
    /// 处理 0.00 返回值为0
    /// </summary>
    public static string HandleDecimal_zero(object obj)
    { 
        string str = "";
        if (obj.ToString() == "0.00")
        {
            str = "0";
        }
        else
        {
            str = obj.ToString();
        }
        return str;
    }

    /// <summary>
    /// 处理 0.0
    /// </summary>
    public static string Handle_Decimal(object obj)
    {
        string str = "";
        if (obj.ToString() == "0.0")
        {
            str = "";
        }
        else
        {
            str = obj.ToString();
        }
        return str;
    }

    /// <summary>
    /// 处理 0.0 返回0
    /// </summary>
    public static string Handle_Decimal_zero(object obj)
    {
        string str = "";
        if (obj.ToString() == "0.0")
        {
            str = "0";
        }
        else
        {
            str = obj.ToString();
        }
        return str;
    }
    /// <summary>
    /// 处理 0
    /// </summary>
    public static string HandleInt(object obj)
    {
        string str = "";
        if (obj.ToString() == "0")
        {
            str = "";
        }
        else
        {
            str = obj.ToString();
        }
        return str;
    }

    /// <summary>
    /// 判断是否数字
    /// </summary>
    public static bool IsNumeric(string str)
    {
        return System.Text.RegularExpressions.Regex.IsMatch(str, @"^\d+$");
    }

    /// <summary>
    /// 截取字符串
    /// </summary>
    public static string CutString(object content, int num)
    {
        if (content.ToString().Trim().Length > num - 2)
        {
            return content.ToString().Trim().Substring(0, num - 2) + "...";
        }
        else
        {
            return content.ToString();
        }
    }

    /// <summary>    
    /// 获取客户端IP    
    /// </summary>   
    public static string ClientIP
    {
        get
        {
            string result = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (null == result || result == String.Empty)
            {
                result = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            }
            if (null == result || result == String.Empty)
            {
                result = HttpContext.Current.Request.UserHostAddress;
            }
            return result;
        }
    }


    /// <summary>
    /// 检查URL 参数是否等于空，或长度 小于1
    /// </summary>
    public static bool isCheckQueryString(string obj_value)
    {
        bool result = false;
        if (obj_value != null && obj_value.Trim().Length > 0)
        {
            result = true;
        }
        return result;
    }

}