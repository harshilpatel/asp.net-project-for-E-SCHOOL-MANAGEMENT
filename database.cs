using System;
using System.Data;
using System.Data.SqlClient ;
using System.Data.OleDb  ;
using System.Collections;
using System.Text;
using Com.Recruitment.Application;
using Com.Recruitment.UI;
using Com.Recruitment.view;

namespace Com.Recruitment.DataBase.Connection
{
    public class Connection
    {

        private SqlConnection sql;
        private OleDbConnection oracle;
        OleDbDataAdapter oledbda;
        private SqlCommand scom = new SqlCommand();
        private OleDbCommand ocom = new OleDbCommand();
        SqlDataAdapter sqlda;
        /*setConnection check databast type and then 
         * 
         * initialize the object of either sqlconnection or oledbconnection
         * */
        private Connection()
        {
            if ( Properties.getDBType().ToLower().Equals("sqlserver"))
            {
                sql = new SqlConnection(Properties.getConnectionString());
                sqlda = new SqlDataAdapter("aa", sql);
                scom.Connection = sql;
            }
            else
            {
                oracle = new OleDbConnection(Properties.getConnectionString());
                oledbda = new OleDbDataAdapter("aa", oracle);
                ocom.Connection = oracle;
            }
        }

        public  static Connection  CreateConnection()
        {
            return (new Connection());
        }      
        public DataSet getDataSet(string query, string table)
        {
            DataSet ds = new DataSet();
            if (Properties.getDBType() == "SqlServer")
            {
                sqlda.SelectCommand.CommandText =query ;
                sqlda .Fill(ds, table);
            }
            else
            {
                 oledbda .SelectCommand.CommandText=query;
                 oledbda.Fill(ds, table);
            }
            return ds;
        }
        public DataSet getDataSet(string query)
        {
            DataSet ds = new DataSet();
            if (Properties.getDBType() == "SqlServer")
            {
                sqlda.SelectCommand.CommandText =query ;
                sqlda.Fill(ds);
            }
            else
            {
                 oledbda .SelectCommand.CommandText=query;
                oledbda .Fill(ds);
            }
            return ds;

        }
        //#region Special Functionality for SQL Execution
        
        /*
         * ExecuteScaler method is a method that execute  sqlcommand or oledbcommand's ExecuteScaler method
         * for Connection Class it return single object as a result.
         * 
         * */
        public object ExecuteScaler(string query)
        {
            object obj = null;
            if (Properties.getDBType().ToLower().Equals("SqlServer"))
            {
                scom .CommandText =query; 
               try
                {
                    sql.Open();
                    obj = scom.ExecuteScalar();
                }
                catch 
                {
                }
                finally
                {
                    sql.Close();
                }
            }
            else
            {
                ocom .CommandText =query;

                try
                {
                    oracle.Open();
                    obj = ocom.ExecuteScalar();
                }
                catch 
                {
                }
                finally
                {
                    sql.Close();
                }
            }
            return obj;
        }
        /*
         * ExecuteNonQuery method of Connection Class is used to do 
         * Update
         * Insert
         * Delete
         * Operation in database
         * */
        public int ExecuteNonQuery(string query)
        {
            int i = 0;
            if (Properties.getDBType().ToLower().Equals("SqlServer"))
            {
                scom .CommandText=query;

                try
                {
                    sql.Open();
                    i = scom.ExecuteNonQuery();
                }
                catch 
                {
                }
                finally
                {
                    sql.Close();
                }
            }
            else
            {
                ocom .CommandText=query;

                try
                {
                    oracle.Open();
                    i = ocom.ExecuteNonQuery();
                }
                catch 
                {
                }
                finally
                {
                    sql.Close();
                }
            }
            return i;
        } 
    }
    public class ConnectionPool
    {
        private static ArrayList Aveliable;
        private static ArrayList Busy;
        public static ConnectionPool CreateInstance()
        {
            return new ConnectionPool();
        }
        private ConnectionPool()
        {
            Aveliable = new ArrayList();
            Busy = new ArrayList();
            
            ////Inserting 4 connection object in PoolList
            ///
            for (int i = 0; i < Properties.getMaxConnection(); i++)
            {
               
                Avaliable.Add(Connection.CreateConnection());
            }
        }
        public  static Connection getConnection()
        {
            Connection con;
            con = (Connection)Aveliable[Aveliable.Count - 1];
            Aveliable.Remove(con);
            Busy.Add(con);
            return con;
        }
        public static void Free(Connection con)
        {
            Aveliable.Add(con);
            Busy.Remove(con);
        }
    }
}
