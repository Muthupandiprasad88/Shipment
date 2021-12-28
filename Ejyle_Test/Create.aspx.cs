using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Configuration;

public partial class Create : System.Web.UI.Page
{
    DBConnection Con = new DBConnection();
    Ship objship = new Ship();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShipConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ship_type();
        }
    }

    void ship_type()
    {
        DataSet Ds = new DataSet();
        try
        {

            string com = "select ID,Type_Name from Ship_Type";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            dd_type.DataSource = dt;
            dd_type.DataTextField = "Type_Name";
            dd_type.DataValueField = "ID";
            dd_type.DataBind();
            dd_type.Items.Insert(0, new ListItem("--- Select ---", ""));
           
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void clk_redirect(object sender, EventArgs e)
    {
        Response.Redirect("Shipment.aspx");
    }
    protected void clk_Create(object sender, EventArgs e)
    {
        if (dd_Exp.SelectedValue != "0")
        {
            
            DataTable Ds = new DataTable();
            try
            {
                Ds = objship.Operation(Name.Text,Description.Text,Address.Text,dd_Exp.SelectedValue,dd_type.SelectedValue);
                if (Ds != null)
                {
                    
                            reset();
                            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Shipment Created Successfully');", true);
                    Response.Redirect("Shipment.aspx");
                }
                
            }
            catch (Exception ex)
            {
                throw ex;

            }
        }
    }
    protected void clk_reset(object sender, EventArgs e)
    {
        reset();
    }

    public void reset()
    {
        Name.Text = "";
        Description.Text = "";
        Address.Text = "";
        dd_Exp.SelectedIndex = 0;
        dd_type.SelectedIndex = 0;
    }
}