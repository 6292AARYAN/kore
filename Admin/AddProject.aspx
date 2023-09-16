<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProject.aspx.cs" Inherits="Admin_AddProject" MasterPageFile="~/Admin/MasterPage.master" %>

<asp:Content runat="server" ID="adminhead" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ID="inner" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="bannerArea2">
        <h1>Add Project</h1>
    </div>
    <!--banner end-->

    <div class="cmsarieabg">
        <div class=" container">
            <div class="row">
                <div class="col-sm-8">
                    <div class="cms-section">
                        <p>
                            <div class="table table-responsive">
                                <asp:GridView runat="server" ID="gvImage" Class="table table-hover table-bordered"
                                    AutoGenerateColumns="False" OnRowCommand="gvImage_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Sr.No.">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="ProjectName" HeaderText="Project Name" />
                                        <asp:BoundField DataField="Country" HeaderText="Country" />
                                        <asp:BoundField DataField="State" HeaderText="State" />
                                        <asp:BoundField DataField="Category" HeaderText="Category" />
                                        <asp:BoundField DataField="SubCatName" HeaderText="Sub-Category" />
                                        <asp:BoundField DataField="ProjectTeam" HeaderText="Team" />
                                        <asp:BoundField DataField="TeamName" HeaderText="TeamName" />
                                        <asp:BoundField DataField="ProjectDescription" HeaderText="Project Description" />
                                        <asp:BoundField DataField="ProjectDescription1" HeaderText="Project Description 1" />
                                        <asp:BoundField DataField="ProjectDescription2" HeaderText="Project Description 2" />
                                        <asp:BoundField DataField="ProjectStart" HeaderText="Project Start" DataFormatString="{0:dd-MMM-yyyy}" />
                                        <asp:BoundField DataField="ProjectEnd" HeaderText="Project End" DataFormatString="{0:dd-MMM-yyyy}"  />
                                        <asp:BoundField DataField="ProjectBudget" HeaderText="Project Budget" />
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" ID="lbdel" CommandName="del" CommandArgument='<%#Eval("ProjectId") %>'><i class="fa fa-trash"></i></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#808080" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#383838" />
                                </asp:GridView>
                            </div>
                        </p>

                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="sideBg">
                        <h1>Add New Category</h1>
                        <p>Note:- If you want to edit any Project please delete and add new.</p>
                        <div class="clearfix"></div>
                        <p>Project Name</p>
                        <asp:TextBox ID="txtprjectname" runat="server" TabIndex="1" Placeholder="Project Name" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Country</p>
                        <asp:DropDownList ID="ddlcountry" runat="server" TabIndex="2" AutoPostBack="true" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged" Placeholder="Country" Class="form-control" ></asp:DropDownList>
                        <div class="clearfix mt-1"></div>
                        <p>State</p>
                        <asp:DropDownList ID="ddlstate" runat="server" TabIndex="3" Placeholder="State" Class="form-control" ></asp:DropDownList>
                        <div class="clearfix mt-1"></div>
                        <p>Category</p>
                        <asp:DropDownList ID="ddlcategory" runat="server" TabIndex="4" AutoPostBack="true" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" Placeholder="Category" Class="form-control" ></asp:DropDownList>
                        <div class="clearfix mt-1"></div>
                        <p>Sub-Category</p>
                        <asp:DropDownList ID="ddlsub" runat="server" TabIndex="5" Placeholder="Sub-Category" Class="form-control" ></asp:DropDownList>
                        <div class="clearfix mt-1"></div>
                        <p>Project Team</p>
                        <asp:TextBox ID="txtprojteam" runat="server" TabIndex="6" Placeholder="Project Team" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Team Name</p>
                        <asp:TextBox ID="txtteamname" runat="server" TabIndex="7" Placeholder="Team Person Name" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Project Description</p>
                        <asp:TextBox ID="txtProjectDescription" runat="server" TextMode="MultiLine" Height="70px" TabIndex="8" Placeholder="Project Description" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Project Description 1</p>
                        <asp:TextBox ID="txtprojdesc1" runat="server" TextMode="MultiLine" Height="70px" TabIndex="9" Placeholder="Project Description 1" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Project Description 2</p>
                        <asp:TextBox ID="txtprojdesc2" runat="server" TextMode="MultiLine" Height="70px" TabIndex="10" Placeholder="Project Description 2" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Project Start</p>
                        <asp:TextBox ID="txtprojstart" runat="server" type="date" TabIndex="11" Placeholder="Project Start" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Project End</p>
                        <asp:TextBox ID="txtprojend" runat="server" type="date" TabIndex="12" Placeholder="Project End" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Project Budget</p>
                        <asp:TextBox ID="txtprojbudget" runat="server" TabIndex="13" Placeholder="ProjectBudget" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <asp:LinkButton runat="server" ID="lblsave" TabIndex="14" CssClass="btn btn-success pull-right mr-1 text-white" OnClick="lblsave_Click"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
                        <div class="clearfix mt-1"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
