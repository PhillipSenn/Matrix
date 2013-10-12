using System;
using System.Data;
using System.Data.SqlTypes;
using Microsoft.SqlServer.Server;


public class HelloWorldProc
{

    [Microsoft.SqlServer.Server.SqlProcedure]
    public static void HelloWorld( )
    {
        SqlContext.Pipe.Send("Hello world!");
        
    }
}
