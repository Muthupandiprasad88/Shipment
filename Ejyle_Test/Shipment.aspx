<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shipment.aspx.cs" Inherits="Shipment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Ejyle Technologies - Shipments</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap.min.css" />
  <link rel="stylesheet" href="css/myStyle.css">
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery-1.11.1.min.js"></script>
  <script language="JavaScript" src="js/jquery.dataTables.min.js" type="text/javascript"></script>
  <script language="JavaScript" src="js/dataTables.bootstrap.min.js" type="text/javascript"></script>
</head>
<body >
    <form id="form1" runat="server">
    <div class="container mt-20">
        <div class="row">
          <div class="col-md-6">
            <h4>List of Shipments</h4>
          </div>
          <div class="col-md-6 text-right">
              <asp:Button ID="btncreate" runat="server" class="btn btn-primary" Text="Create" OnClick="clk_redirect" />
          </div>
        </div>
        <div class="row">
            <div class="col-md-12">

               
                                                   <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered dt-responsive nowrap" AutoGenerateColumns="false" HeaderStyle-BackColor="#BDC4C7" HeaderStyle-ForeColor="black" CellPadding="3" CellSpacing="2" Font-Size="12px" Width="100%" AllowPaging="true" PageSize="1000000" ShowFooter="false" GridLines="None">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="BIL" ItemStyle-HorizontalAlign="center">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server"
                                                                    ItemStyle-Width="150" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    
                                                        <asp:BoundField DataField="Name" ItemStyle-HorizontalAlign="Left" HeaderText="Name" />
                                                        <asp:BoundField DataField="Description" ItemStyle-HorizontalAlign="center" HeaderText="Description" />
                                                        <asp:BoundField DataField="Address" ItemStyle-HorizontalAlign="center" HeaderText="Address" />
                                                        <asp:BoundField DataField="Exp" ItemStyle-HorizontalAlign="center" HeaderText="Expedited" />
                                                       <asp:BoundField DataField="Type_Name" ItemStyle-HorizontalAlign="center" HeaderText="Shipment Type" />
                                                        <asp:TemplateField HeaderText="">
                                                            <ItemStyle HorizontalAlign="Center" Width="5%"></ItemStyle>
                                                            <ItemTemplate>
                                                             <asp:LinkButton ID="Lnk1" runat="server" Text="Delete" OnClick="lnkView_Click"></asp:LinkButton>
                                                              <asp:Label ID="lblB" runat="server" Visible="false" Text='<%# Eval("ID") %>' />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        
                                                    </Columns>
                                                    <FooterStyle BackColor="#BDC4C7" Font-Bold="True" ForeColor="black" />
                                                    <RowStyle BackColor="#EFF3FB" />
                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" /> 
                                                    <HeaderStyle BackColor="#BDC4C7" Font-Bold="True" ForeColor="black" />
                                                    <AlternatingRowStyle BackColor="White" />
                                                </asp:GridView>
            </div>
        </div>
    </div>
<script type="text/javascript">
	var data = [
          {
              "name": "Tiger Nixon",
              "position": "System Architect",
              "salary": "$320,800",
              "start_date": "2011/04/25",
              "office": "Edinburgh",
              "extn": "5421"
          },
          {
              "name": "Garrett Winters",
              "position": "Accountant",
              "salary": "$170,750",
              "start_date": "2011/07/25",
              "office": "Tokyo",
              "extn": "8422"
          },
          {
              "name": "Ashton Cox",
              "position": "Junior Technical Author",
              "salary": "$86,000",
              "start_date": "2009/01/12",
              "office": "San Francisco",
              "extn": "1562"
          },
          {
              "name": "Cedric Kelly",
              "position": "Senior Javascript Developer",
              "salary": "$433,060",
              "start_date": "2012/03/29",
              "office": "Edinburgh",
              "extn": "6224"
          },
          {
              "name": "Airi Satou",
              "position": "Accountant",
              "salary": "$162,700",
              "start_date": "2008/11/28",
              "office": "Tokyo",
              "extn": "5407"
          },
          {
              "name": "Brielle Williamson",
              "position": "Integration Specialist",
              "salary": "$372,000",
              "start_date": "2012/12/02",
              "office": "New York",
              "extn": "4804"
          },
          {
              "name": "Herrod Chandler",
              "position": "Sales Assistant",
              "salary": "$137,500",
              "start_date": "2012/08/06",
              "office": "San Francisco",
              "extn": "9608"
          },
          {
              "name": "Rhona Davidson",
              "position": "Integration Specialist",
              "salary": "$327,900",
              "start_date": "2010/10/14",
              "office": "Tokyo",
              "extn": "6200"
          },
          {
              "name": "Colleen Hurst",
              "position": "Javascript Developer",
              "salary": "$205,500",
              "start_date": "2009/09/15",
              "office": "San Francisco",
              "extn": "2360"
          },
          {
              "name": "Sonya Frost",
              "position": "Software Engineer",
              "salary": "$103,600",
              "start_date": "2008/12/13",
              "office": "Edinburgh",
              "extn": "1667"
          },
          {
              "name": "Jena Gaines",
              "position": "Office Manager",
              "salary": "$90,560",
              "start_date": "2008/12/19",
              "office": "London",
              "extn": "3814"
          },
          {
              "name": "Quinn Flynn",
              "position": "Support Lead",
              "salary": "$342,000",
              "start_date": "2013/03/03",
              "office": "Edinburgh",
              "extn": "9497"
          },
          {
              "name": "Charde Marshall",
              "position": "Regional Director",
              "salary": "$470,600",
              "start_date": "2008/10/16",
              "office": "San Francisco",
              "extn": "6741"
          },
          {
              "name": "Haley Kennedy",
              "position": "Senior Marketing Designer",
              "salary": "$313,500",
              "start_date": "2012/12/18",
              "office": "London",
              "extn": "3597"
          },
          {
              "name": "Tatyana Fitzpatrick",
              "position": "Regional Director",
              "salary": "$385,750",
              "start_date": "2010/03/17",
              "office": "London",
              "extn": "1965"
          },
          {
              "name": "Michael Silva",
              "position": "Marketing Designer",
              "salary": "$198,500",
              "start_date": "2012/11/27",
              "office": "London",
              "extn": "1581"
          },
          {
              "name": "Paul Byrd",
              "position": "Chief Financial Officer (CFO)",
              "salary": "$725,000",
              "start_date": "2010/06/09",
              "office": "New York",
              "extn": "3059"
          },
          {
              "name": "Gloria Little",
              "position": "Systems Administrator",
              "salary": "$237,500",
              "start_date": "2009/04/10",
              "office": "New York",
              "extn": "1721"
          },
          {
              "name": "Bradley Greer",
              "position": "Software Engineer",
              "salary": "$132,000",
              "start_date": "2012/10/13",
              "office": "London",
              "extn": "2558"
          },
          {
              "name": "Dai Rios",
              "position": "Personnel Lead",
              "salary": "$217,500",
              "start_date": "2012/09/26",
              "office": "Edinburgh",
              "extn": "2290"
          },
          {
              "name": "Jenette Caldwell",
              "position": "Development Lead",
              "salary": "$345,000",
              "start_date": "2011/09/03",
              "office": "New York",
              "extn": "1937"
          },
          {
              "name": "Yuri Berry",
              "position": "Chief Marketing Officer (CMO)",
              "salary": "$675,000",
              "start_date": "2009/06/25",
              "office": "New York",
              "extn": "6154"
          },
          {
              "name": "Caesar Vance",
              "position": "Pre-Sales Support",
              "salary": "$106,450",
              "start_date": "2011/12/12",
              "office": "New York",
              "extn": "8330"
          },
          {
              "name": "Doris Wilder",
              "position": "Sales Assistant",
              "salary": "$85,600",
              "start_date": "2010/09/20",
              "office": "Sidney",
              "extn": "3023"
          },
          {
              "name": "Angelica Ramos",
              "position": "Chief Executive Officer (CEO)",
              "salary": "$1,200,000",
              "start_date": "2009/10/09",
              "office": "London",
              "extn": "5797"
          },
          {
              "name": "Gavin Joyce",
              "position": "Developer",
              "salary": "$92,575",
              "start_date": "2010/12/22",
              "office": "Edinburgh",
              "extn": "8822"
          },
          {
              "name": "Jennifer Chang",
              "position": "Regional Director",
              "salary": "$357,650",
              "start_date": "2010/11/14",
              "office": "Singapore",
              "extn": "9239"
          },
          {
              "name": "Brenden Wagner",
              "position": "Software Engineer",
              "salary": "$206,850",
              "start_date": "2011/06/07",
              "office": "San Francisco",
              "extn": "1314"
          },
          {
              "name": "Fiona Green",
              "position": "Chief Operating Officer (COO)",
              "salary": "$850,000",
              "start_date": "2010/03/11",
              "office": "San Francisco",
              "extn": "2947"
          },
          {
              "name": "Shou Itou",
              "position": "Regional Marketing",
              "salary": "$163,000",
              "start_date": "2011/08/14",
              "office": "Tokyo",
              "extn": "8899"
          },
          {
              "name": "Michelle House",
              "position": "Integration Specialist",
              "salary": "$95,400",
              "start_date": "2011/06/02",
              "office": "Sidney",
              "extn": "2769"
          },
          {
              "name": "Suki Burks",
              "position": "Developer",
              "salary": "$114,500",
              "start_date": "2009/10/22",
              "office": "London",
              "extn": "6832"
          },
          {
              "name": "Prescott Bartlett",
              "position": "Technical Author",
              "salary": "$145,000",
              "start_date": "2011/05/07",
              "office": "London",
              "extn": "3606"
          },
          {
              "name": "Gavin Cortez",
              "position": "Team Leader",
              "salary": "$235,500",
              "start_date": "2008/10/26",
              "office": "San Francisco",
              "extn": "2860"
          },
          {
              "name": "Martena Mccray",
              "position": "Post-Sales support",
              "salary": "$324,050",
              "start_date": "2011/03/09",
              "office": "Edinburgh",
              "extn": "8240"
          },
          {
              "name": "Unity Butler",
              "position": "Marketing Designer",
              "salary": "$85,675",
              "start_date": "2009/12/09",
              "office": "San Francisco",
              "extn": "5384"
          },
          {
              "name": "Howard Hatfield",
              "position": "Office Manager",
              "salary": "$164,500",
              "start_date": "2008/12/16",
              "office": "San Francisco",
              "extn": "7031"
          },
          {
              "name": "Hope Fuentes",
              "position": "Secretary",
              "salary": "$109,850",
              "start_date": "2010/02/12",
              "office": "San Francisco",
              "extn": "6318"
          },
          {
              "name": "Vivian Harrell",
              "position": "Financial Controller",
              "salary": "$452,500",
              "start_date": "2009/02/14",
              "office": "San Francisco",
              "extn": "9422"
          },
          {
              "name": "Timothy Mooney",
              "position": "Office Manager",
              "salary": "$136,200",
              "start_date": "2008/12/11",
              "office": "London",
              "extn": "7580"
          },
          {
              "name": "Jackson Bradshaw",
              "position": "Director",
              "salary": "$645,750",
              "start_date": "2008/09/26",
              "office": "New York",
              "extn": "1042"
          },
          {
              "name": "Olivia Liang",
              "position": "Support Engineer",
              "salary": "$234,500",
              "start_date": "2011/02/03",
              "office": "Singapore",
              "extn": "2120"
          },
          {
              "name": "Bruno Nash",
              "position": "Software Engineer",
              "salary": "$163,500",
              "start_date": "2011/05/03",
              "office": "London",
              "extn": "6222"
          },
          {
              "name": "Sakura Yamamoto",
              "position": "Support Engineer",
              "salary": "$139,575",
              "start_date": "2009/08/19",
              "office": "Tokyo",
              "extn": "9383"
          },
          {
              "name": "Thor Walton",
              "position": "Developer",
              "salary": "$98,540",
              "start_date": "2013/08/11",
              "office": "New York",
              "extn": "8327"
          },
          {
              "name": "Finn Camacho",
              "position": "Support Engineer",
              "salary": "$87,500",
              "start_date": "2009/07/07",
              "office": "San Francisco",
              "extn": "2927"
          },
          {
              "name": "Serge Baldwin",
              "position": "Data Coordinator",
              "salary": "$138,575",
              "start_date": "2012/04/09",
              "office": "Singapore",
              "extn": "8352"
          },
          {
              "name": "Zenaida Frank",
              "position": "Software Engineer",
              "salary": "$125,250",
              "start_date": "2010/01/04",
              "office": "New York",
              "extn": "7439"
          },
          {
              "name": "Zorita Serrano",
              "position": "Software Engineer",
              "salary": "$115,000",
              "start_date": "2012/06/01",
              "office": "San Francisco",
              "extn": "4389"
          },
          {
              "name": "Jennifer Acosta",
              "position": "Junior Javascript Developer",
              "salary": "$75,650",
              "start_date": "2013/02/01",
              "office": "Edinburgh",
              "extn": "3431"
          },
          {
              "name": "Cara Stevens",
              "position": "Sales Assistant",
              "salary": "$145,600",
              "start_date": "2011/12/06",
              "office": "New York",
              "extn": "3990"
          },
          {
              "name": "Hermione Butler",
              "position": "Regional Director",
              "salary": "$356,250",
              "start_date": "2011/03/21",
              "office": "London",
              "extn": "1016"
          },
          {
              "name": "Lael Greer",
              "position": "Systems Administrator",
              "salary": "$103,500",
              "start_date": "2009/02/27",
              "office": "London",
              "extn": "6733"
          },
          {
              "name": "Jonas Alexander",
              "position": "Developer",
              "salary": "$86,500",
              "start_date": "2010/07/14",
              "office": "San Francisco",
              "extn": "8196"
          },
          {
              "name": "Shad Decker",
              "position": "Regional Director",
              "salary": "$183,000",
              "start_date": "2008/11/13",
              "office": "Edinburgh",
              "extn": "6373"
          },
          {
              "name": "Michael Bruce",
              "position": "Javascript Developer",
              "salary": "$183,000",
              "start_date": "2011/06/27",
              "office": "Singapore",
              "extn": "5384"
          },
          {
              "name": "Donna Snider",
              "position": "Customer Support",
              "salary": "$112,000",
              "start_date": "2011/01/25",
              "office": "New York",
              "extn": "4226"
          }
    ]


    $(document).ready(function () {
        $('#example').DataTable({
            "processing": true,
            "info": true,
            "stateSave": true,
            data: data,
            "columns": [
                { "data": "name" },
                { "data": "position" },
                { "data": "office" },
                { "data": "extn" },
                { "data": "start_date" },
                { "data": "salary" },
                {
                    "data": "Inquiry", "bSearchable": false, "bSortable": false, "sWidth": "40px",
                    "data": function (data) {
                        return '<img src="image/tras.svg" style="opacity: 0.5;width:15px;"/>'
                    }
                }
            ]
        });
    });

</script>
        </form>
</body>
</html>
