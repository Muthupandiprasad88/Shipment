using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

/// <summary>
/// Summary description for DBConnection
/// </summary>
public class DBConnection
{
    SqlConnection SqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShipConnectionString"].ToString());
    SqlCommand SqlCmd = new SqlCommand();

    public void ClearParameters()
    {
        SqlCmd.Parameters.Clear();
    }
    public DataTable Ora_Execute_table(string Sql)
    {
        DataTable Dt = new DataTable();
        try
        {
            SqlDataAdapter Orada = new SqlDataAdapter(Sql, SqlConn);
            Orada.Fill(Dt);
        }

        catch (Exception ex)
        {
        }
        return Dt;
    }

    public void SetupCommand(String spName, SqlParameter[] SqlParams)
    {
        
        SqlCmd.Connection = SqlConn;
        SqlCmd.CommandType = CommandType.StoredProcedure;
        SqlCmd.CommandText = spName;
        SqlCmd.CommandTimeout = 120;
        if (SqlParams != null)
        {
            foreach (SqlParameter SqlParam in SqlParams)
            {
                SqlCmd.Parameters.Add(SqlParam);
            }
        }
    }

    public DataTable Execute_DataSet(string spName, SqlParameter[] SqlParams)
    {
        SetupCommand(spName, SqlParams);
        SqlDataAdapter da = new SqlDataAdapter(SqlCmd);
        DataTable ds = new DataTable();
        da.Fill(ds);
        return ds;
    }
}
