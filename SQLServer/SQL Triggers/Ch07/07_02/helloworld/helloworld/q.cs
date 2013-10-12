using System;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;


public class q
{

    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void z()
    {
        using( SqlConnection  conn = new SqlConnection("context connection = true"))
        {
            conn.Open();
            SqlCommand comm  = new SqlCommand();
            comm.CommandText = "INSERT INTO AUTHORS(FirstName, LastName) VALUES('Sally', 'Smith')";

            comm.Connection = conn;

         //   conn.Open();
            comm.ExecuteNonQuery();
        //    conn.Close();
            

            


        }


    }
}
