using System;
using System.Collections.Specialized;
using System.Text;
using System.Configuration;
using System.Security;

namespace Com.Recruitment.Application
{
    /// <summary>
    /// Summary description for AppInit.
    /// </summary>
    public class Init
    {
        
        public static void Load()
        {
            NameValueCollection col = (NameValueCollection)System.Configuration.ConfigurationSettings.GetConfig("appSettings");
            Properties.LoadNameValueCol(col);
        
        }

    }
    public static class Properties
    {

        static NameValueCollection col;
        public static void LoadNameValueCol(NameValueCollection valcol)
        {
            col = valcol;
        }
        public static string getDBType()
        {
            object o = col["DbType"];
            return o.ToString();
        }
        public static int getMaxConnection()
        {
            int o = Int32.Parse(col["MaxConnection"].ToString());
            return o;
        }
        public static string getUserName()
        {
            object o = col["UserID"];
            return o.ToString();
        }
        public static string getConnectionString()
        {
            object o = col["ConnectionString"];
            return o.ToString();
        }
        public static string getPassword()
        {
            object o = col["Password"];
            return o.ToString();
        }
    }
}
