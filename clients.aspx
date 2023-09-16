<%@ Page Language="C#" AutoEventWireup="true" CodeFile="clients.aspx.cs" Inherits="clients" MasterPageFile="~/MasterPage.Master" %>

<asp:Content runat="server" ID="conhead" ContentPlaceHolderID="head">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
</asp:Content>
<asp:Content runat="server" ID="coninner" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="bannerArea2">
        <h1>Sales and Clients</h1>
    </div>
    <div style="margin-top: 8px;"></div>
    <div class="cmsarieabg">
        <div class=" container">
            <div class="row">
                <div class="card-header col-sm-12">
                    <b class="text-capitalize text-primary">Live Projects</b>
                </div>
                <div class="clearfix"></div>
                <div class="p-1 table-responsive">
                    <asp:GridView runat="server" ID="gvproject" Class="table table-striped table-bordered nowrap"
                        OnRowCreated="gvproject_RowCreated" Style="width: 100%" AutoGenerateColumns="false">
                        <Columns>
                            <asp:TemplateField HeaderText="Sr.No.">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex+1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ProjectName" HeaderText="Project-Name" />
                            <asp:BoundField DataField="Country" HeaderText="Country" />
                            <asp:BoundField DataField="State" HeaderText="State" />
                            <asp:BoundField DataField="Category" HeaderText="Category" />
                            <asp:BoundField DataField="SubCatName" HeaderText="Sub-Category" />
                            <asp:BoundField DataField="ProjectTeam" HeaderText="Team" />
                            <asp:BoundField DataField="TeamName" HeaderText="Lead-Name" />
                            <asp:BoundField DataField="ProjectDescription" HeaderText="Description" />
                            <asp:BoundField DataField="ProjectDescription1" HeaderText="Description 1" />
                            <asp:BoundField DataField="ProjectDescription2" HeaderText="Description 2" />
                            <asp:BoundField DataField="ProjectStart" HeaderText="Start" DataFormatString="{0:dd-MMM-yyyy}" />
                            <asp:BoundField DataField="ProjectEnd" HeaderText="End" DataFormatString="{0:dd-MMM-yyyy}" />
                            <asp:BoundField DataField="ProjectBudget" HeaderText="Budget" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
     <script>
         $(document).ready(function () {
             $('#ContentPlaceHolder1_gvproject').DataTable();
         });
     </script>
</asp:Content>
