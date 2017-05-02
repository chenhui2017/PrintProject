using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/*
 *  Author: TerranRen
 *  Data:   2017-02-22
 */
namespace PrintDAL
{
    /// <summary>
    /// 数据库操作类
    /// </summary>
    public class DBHandle
    {
        private static string ConnectionString = ConfigurationManager.ConnectionStrings["SqlServer_CHFMDB_DB"].ToString();
        /*
         
         private static string str_A = ConfigurationManager.ConnectionStrings["A"].ToString();
         private static string str_B = ConfigurationManager.ConnectionStrings["B"].ToString();
         private static SqlConnection conn_A = new SqlConnection(str_A);
         private static SqlConnection conn_B = new SqlConnection(str_B);
        
         string data_name = 获取的列;
          
         SqlDataAdapter da = new SqlDataAdapter(sql, "conn_" + data_name);
                  
         */
        //private static SqlConnection conn;
        //public static SqlConnection Conn
        //{
        //    get
        //    {
        //        if (conn == null)
        //        {
        //            conn = new SqlConnection(str);
        //            conn.Open();
        //        }
        //        else if (conn.State == ConnectionState.Closed)
        //        {
        //            conn.Open();
        //        }
        //        else if (conn.State == ConnectionState.Broken)
        //        {
        //            conn.Close();
        //            conn.Open();
        //        }
        //        return conn;
        //    }
        //}

        /*
        /// <summary>
        /// 执行Select（查询）语句，并返回DataSet（数据集）类型
        /// </summary>
        /// <param name="sql">Select（查询）语句[string]类型</param>
        /// <returns>返回DataSet（数据集）类型</returns>
        public static DataSet Getds(string sql)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(sql, Conn);
            da.Fill(ds);
            return ds;
        }
        */

        /// <summary>
        /// 执行Select（查询）语句，并返回DataTable（数据集）类型
        /// </summary>
        /// <param name="sql">Select（查询）语句[string]类型</param>
        /// <returns>返回DataTable（数据集）类型</returns>
        public static DataTable Getdt(string sql)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConnectionString))
                {
                    conn.Open();
                    DataSet ds = new DataSet();
                    SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                    da.Fill(ds);
                    return ds.Tables[0];
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// 执行Select（查询）语句，并返回数据读取器对象
        /// </summary>
        /// <param name="sql">Secect（查询）语句[string]类型</param>
        /// <returns>返回数据读取器对象</returns>
        public static SqlDataReader GetDr(string sql)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConnectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    return cmd.ExecuteReader();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// 执行Insert（增加）/Delete（删除）/Update（改查），并返回[int]类型受影响行数
        /// </summary>
        /// <param name="n">Insert（增加）/Delete（删除）/Update（改查）语句</param>
        /// <returns>返回[int]类型受影响行数</returns>
        public static int ExecuteNonQuery(string sql)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(ConnectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    return cmd.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
