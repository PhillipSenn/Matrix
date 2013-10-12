using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public class mySprocs
{
    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void InsertAuthor()
    {
        using (SqlConnection conn = new SqlConnection("context connection=true"))
        {
            SqlCommand comm = new SqlCommand();
            comm.CommandText = "INSERT INTO AUTHORS (FirstName, LastName) VALUES ('Sally', 'Smith')";

            comm.Connection = conn;

            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
        }
    }

    [Microsoft.SqlServer.Server.SqlFunction]
    public static SqlString isActive(SqlInt32 ActiveBit)
    {

        if (ActiveBit == 1)
            return "Active";
        else
            return "Not Active";
    }
}

 