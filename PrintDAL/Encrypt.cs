using System;
using System.Security;
using System.Security.Cryptography;
using System.Text;
using System.IO;


namespace PrintDAL
{
    public class Encrypt
    {
        private string key = "YW";

        /// <summary>
        /// //加密
        /// </summary>
        /// <param name="desstr"></param>
        /// <param name="tkey"></param>
        /// <returns></returns>
        public string DesEncrypt(string desstr, string tkey)
        {
            try
            {
                if (tkey == "") tkey = key;
                while (Encoding.Default.GetBytes(desstr).Length % 8 != 0)
                {
                    desstr += " ";
                }

                DESCryptoServiceProvider objdes = new DESCryptoServiceProvider();
                objdes.Mode = CipherMode.ECB;
                objdes.Padding = PaddingMode.None;
                objdes.Key = getKey(tkey);

                byte[] inputByteArray = Encoding.Default.GetBytes(desstr);
                MemoryStream ms = new MemoryStream();
                CryptoStream cst = new CryptoStream(ms, objdes.CreateEncryptor(), CryptoStreamMode.Write);

                cst.Write(inputByteArray, 0, inputByteArray.Length);
                cst.FlushFinalBlock();
                //return Convert.ToBase64String(ms.ToArray());

                byte[] arrB = new byte[ms.Length];
                ms.Position = 0;
                ms.Read(arrB, 0, arrB.Length);

                int iLen = arrB.Length;
                // 每个byte用两个字符才能表示，所以字符串的长度是数组长度的两倍
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < iLen; i++)
                {
                    int intTmp = arrB[i];
                    // 把负数转换为正数
                    while (intTmp < 0)
                    {
                        intTmp = intTmp + 256;
                    }
                    // 小于0F的数需要在前面补0
                    if (intTmp < 16)
                    {
                        sb.Append("0");
                    }
                    sb.Append(Convert.ToString(intTmp, 16));
                }

                return sb.ToString();
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        /// <summary>
        ///  //解密
        /// </summary>
        /// <param name="base64str"></param>
        /// <param name="tkey"></param>
        /// <returns></returns>
        public string DesDecrypt(string base64str, string tkey)
        {
            try
            {
                //byte[] inputByteArray = Convert.FromBase64String(base64str);
                if (tkey == "") tkey = key;
                byte[] arrB = Encoding.Default.GetBytes(base64str);
                int iLen = arrB.Length;

                // 两个字符表示一个字节，所以字节数组长度是字符串长度除以2
                byte[] inputByteArray = new byte[iLen / 2];
                string strTmp = "";
                for (int i = 0; i < iLen; i = i + 2)
                {
                    strTmp = Encoding.Default.GetString(arrB, i, 2);
                    inputByteArray[i / 2] = (byte)int.Parse(strTmp, System.Globalization.NumberStyles.HexNumber);
                }

                DESCryptoServiceProvider DCSP = new DESCryptoServiceProvider();
                DCSP.Mode = CipherMode.ECB;
                DCSP.Padding = PaddingMode.None;
                DCSP.Key = getKey(tkey);

                MemoryStream mStream = new MemoryStream();
                CryptoStream cStream = new CryptoStream(mStream, DCSP.CreateDecryptor(), CryptoStreamMode.Write);
                cStream.Write(inputByteArray, 0, inputByteArray.Length);
                cStream.FlushFinalBlock();
                return Encoding.Default.GetString(mStream.ToArray());
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        private byte[] getKey(string tkey)
        {
            byte[] arrBTmp = Encoding.Default.GetBytes(tkey);

            // 创建一个空的8位字节数组（默认值为0）
            byte[] arrB = new byte[8];

            // 将原始字节数组转换为8位
            for (int i = 0; i < arrBTmp.Length && i < arrB.Length; i++)
            {
                arrB[i] = arrBTmp[i];
            }

            return arrB;
        }

        public string Md5encrypt(string msgbodystr)  //md5数字验证
        {
            StringBuilder sb = new StringBuilder();
            try
            {
                byte[] sorData = Encoding.Default.GetBytes(msgbodystr);
                MemoryStream stream = new MemoryStream(sorData);
                const string HEX_TABLE = "0123456789abcdef";

                MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();

                byte[] hashData = md5.ComputeHash(stream);
                sbyte[] myHash = new sbyte[hashData.Length];

                for (int i = 0; i < hashData.Length; i++)
                {
                    if (hashData[i] > 127)
                        myHash[i] = (sbyte)(hashData[i] - 256);
                    else
                        myHash[i] = (sbyte)hashData[i];
                }

                int j = myHash.Length;
                sb.Length = j * 2;

                //make string sb 
                int k = 0;
                for (int i = 0; i < j; i++)
                {
                    sb[k++] = HEX_TABLE[myHash[i] >> 4 & 0xf];
                    sb[k++] = HEX_TABLE[myHash[i] & 0xf];
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return sb.ToString();
        }
    }
}
