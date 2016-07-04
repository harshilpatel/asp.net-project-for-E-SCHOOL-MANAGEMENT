using System;
using Com.Recruitment.Application;
using Com.Recruitment.DataBase.Connection;
using Com.Recruitment.view;
using System.Data;
using System.Collections;
using System.Text;

namespace Com.Recruitment.UI
{
    public class WebFactory
    {
        private static Hashtable hs = new Hashtable();

        public static WebFactory CreateInstance()
        {
            return new WebFactory();
        }
        public void LoadApplication()
        {
            Init.Load();
            Com.Recruitment.DataBase.Connection.ConnectionPool.CreateInstance();
            
        }
        public static void beginSession(string SessionId, string uid, string pass)
        {
            WebSession o = WebSession.login(uid, pass);
            if (o != null)
                hs.Add(SessionId, o);
        }
        public static bool validateUser(string SessionId)
        {
            object obj = hs[SessionId];
            if (obj == null)
            {
                return false;
            }
            return true;
        }
        public static Object getsessionobject(string s)
        { return hs[s];
        }
        public static void endSession(string SessionId)
        {
            if (hs.Contains(SessionId))
            {
                hs.Remove(SessionId);
            }
        }
        
        
    }
  
    
    
    
    
    
    
    public class WebSession
    {
        string userid , password , role;
       
        /*login method take username and password as input; select the 
         * password for the username match it with password parameter;
         * return an instance of Webseesion if password match else
         * return a reference with null value
         * 
         * It uses ExecuteScaler Method of Connection object;
         * */
        public static WebSession login(string uid, string pass)
        {
            Connection conn;
            WebSession obj = null;
            string query = "select * from login where userid='" + uid + "' and password='" + pass + "'";
            conn=ConnectionPool.getConnection();
            DataSet ds = conn.getDataSet(query, "password");
            ConnectionPool.Free(conn);
            if (ds.Tables["password"].Rows.Count > 0)
            {
                obj = new WebSession();
                obj.password = pass;
                obj.role = ds.Tables["password"].Rows[0]["role"].ToString();
                obj.userid = uid;
                return obj;
            }

            
            
            return null;
        }


        public string GetName()
        { return userid; }

        public string GetRole()
        { return role; }
    }
}
