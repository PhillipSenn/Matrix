using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;

public class myFunctions
{
    [Microsoft.SqlServer.Server.SqlFunction]
    public static SqlString isActive(SqlInt32 ActiveBit)
    {
        if (ActiveBit == 1)
            return "Active";
        else
            return "Not Active";
    }
}

