using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Ship
/// </summary>
public class Ship
{
    DBConnection Con = new DBConnection();


    public DataTable Operation(string name, string desc, string address, string Exp,  string Stype)
    {
        DataTable Ds = new DataTable();
        try
        {

            Con.ClearParameters();
            SqlParameter[] Param = new SqlParameter[6];
            Param[0] = new SqlParameter("@Name", name);
            Param[1] = new SqlParameter("@Desc", desc);
            Param[2] = new SqlParameter("@Address", address);
            Param[3] = new SqlParameter("@Exp", Exp);
            Param[4] = new SqlParameter("@SType", Stype);
            Param[5] = new SqlParameter("@CreatedDate", DateTime.Now.ToString("yyyy/MM/dd hh:mm:ss"));
            Ds = Con.Execute_DataSet("Shipped", Param);
           
        }
        catch
        {
        }
        return Ds;
    }
}