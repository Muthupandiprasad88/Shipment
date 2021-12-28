<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create.aspx.cs" Inherits="Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Ejyle Technologies - Shipments</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap.min.css" />
  <link rel="stylesheet" href="css/myStyle.css">
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery-1.11.1.min.js"></script>
  <script language="JavaScript" src="js/jquery.dataTables.min.js" type="text/javascript"></script>
  <script language="JavaScript" src="js/dataTables.bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container mt-20">
        <div class="row">
          <div class="col-md-6">
            <h4>Create Shipments</h4>
          </div>
          <div class="col-md-6 text-right">
           
                <asp:Button ID="btnBack" runat="server" class="btn btn-primary" Text="Back" OnClick="clk_redirect" />
          </div>
        </div>
  <div  class="card">
    <div class="card-body">
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="input4">Sender Name</label>
          <asp:TextBox ID="Name" runat="server" class="form-control" placeholder="Sender Name"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" CssClass="red" ForeColor="Red"  ErrorMessage="Required" ControlToValidate="Name" Display="Dynamic" SetFocusOnError="true" ValidationGroup="shipment"> <span data-tag="required">Please Enter The Name</span></asp:RequiredFieldValidator>
          
          </div>
          <div class="form-group col-md-6">
            <label for="inputPassword4">Description</label>
               <asp:TextBox ID="Description" runat="server" class="form-control" TextMode="MultiLine" placeholder="Description"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="red" ForeColor="Red"  ErrorMessage="Required" ControlToValidate="Description" Display="Dynamic" SetFocusOnError="true" ValidationGroup="shipment"> <span data-tag="required">Please Enter The Description</span></asp:RequiredFieldValidator>
          </div>
                 
          <div class="form-group col-md-6">
            <label for="input4">Expedited</label>
              <asp:DropDownList ID="dd_Exp" runat="server" class="form-control">
                  <asp:ListItem Value="0">--Select--</asp:ListItem>
                  <asp:ListItem Value="1">True</asp:ListItem>
                  <asp:ListItem Value="2">False</asp:ListItem>
              </asp:DropDownList>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="red" ForeColor="Red"  ErrorMessage="Required" ControlToValidate="dd_Exp" Display="Dynamic" SetFocusOnError="true" ValidationGroup="shipment"> <span data-tag="required">Please Select The Expedited</span></asp:RequiredFieldValidator>
          </div>
          <div class="form-group col-md-6">
            <label for="input4">Shipment Type</label>
             <asp:DropDownList ID="dd_type" runat="server" class="form-control">
              </asp:DropDownList>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="red" ForeColor="Red"  ErrorMessage="Required" ControlToValidate="dd_type" Display="Dynamic" SetFocusOnError="true" ValidationGroup="shipment"> <span data-tag="required">Please Select The Shipment Type</span></asp:RequiredFieldValidator>
          </div>
            <div class="form-group col-md-6">
            <label for="input4">Recipient Address Line 1</label>
              <asp:TextBox ID="Address" runat="server" class="form-control" TextMode="MultiLine" placeholder="Address 1"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="red" ForeColor="Red"  ErrorMessage="Required" ControlToValidate="Address" Display="Dynamic" SetFocusOnError="true" ValidationGroup="shipment"> <span data-tag="required">Please Enter The Address</span></asp:RequiredFieldValidator>
          </div> 
          <div class="col-md-12 text-center">
            <asp:Button ID="btnsubmit" runat="server" class="btn btn-primary" Text="Create" OnClick="clk_Create" ValidationGroup="shipment"  />
            <asp:Button ID="btnreset" runat="server" class="btn btn-danger" Text="Reset" OnClick="clk_reset"  />
          </div>
        </div>
    </div>
  </div>
  </div>
    </form>
</body>
</html>
