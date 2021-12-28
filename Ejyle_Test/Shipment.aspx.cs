using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Shipment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShipConnectionString"].ConnectionString);
    DBConnection DBCon = new DBConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    protected void clk_redirect(object sender, EventArgs e)
    {
        Response.Redirect("Create.aspx");
    }

    protected void BindData()
    {
       
            con.Open();
            DataTable ddicno = new DataTable();
            SqlCommand cmd = new SqlCommand("select a.ID,Name,Description,Address,Case when Expedited='1' then 'True' when Expedited='2' then 'False' End Exp ,b.Type_Name from Shipment a Left join Ship_Type b on b.ID=a.Ship_Type", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "<center>No Records</center>";
            }
            else
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

            con.Close();
        
    }

    protected void lnkView_Click(object sender, EventArgs e)
    {
        try
        {
            LinkButton btnButton = sender as LinkButton;
            GridViewRow gr = (GridViewRow)btnButton.NamingContainer;
            System.Web.UI.WebControls.Label lblB = (System.Web.UI.WebControls.Label)gr.FindControl("lblB");
            DataTable ddokdicno = new DataTable();
            string lblid1 = lblB.Text;
            ddokdicno = DBCon.Ora_Execute_table("select * From Shipment where id='" + lblid1 + "' ");
            if (ddokdicno.Rows.Count != 0)
            {
                DataTable dt = DBCon.Ora_Execute_table("Delete from Shipment where id='" + lblid1 + "'");
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Shipment Deleted Successfully');", true);
                BindData();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Shipment Deleted Successfully');", true);
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }

    }
}