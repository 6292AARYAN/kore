<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddJob.aspx.cs" Inherits="Admin_AddJob" MasterPageFile="~/Admin/MasterPage.master" %>

<asp:Content runat="server" ID="adminhead" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ID="inner" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="bannerArea2">
        <h1>Add New Jobs</h1>
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
                                        <asp:BoundField HeaderText="Job Title" DataField="JobTitle" />
                                        <asp:BoundField HeaderText="Job Name" DataField="JobName" />
                                        <asp:BoundField HeaderText="Country" DataField="Country" />
                                        <asp:BoundField HeaderText="State" DataField="State" />
                                        <asp:BoundField HeaderText="Job Description" ItemStyle-Wrap="true" DataField="JobDescription" />
                                        <asp:BoundField HeaderText="Key Skill" DataField="KeySkill" />
                                        <asp:BoundField HeaderText="Experiance" DataField="Experiance" />
                                        <asp:BoundField HeaderText="Salery" DataField="Salery" />
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" ID="lbdel" CommandName="del" CommandArgument='<%#Eval("JobId") %>'><i class="fa fa-trash"></i></asp:LinkButton>
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
                        <h1>Add New Job</h1>
                        <p>Note:- If you want to edit any job please delete and add new.</p>
                        <div class="clearfix"></div>
                        <p>Job Title</p>
                        <asp:TextBox ID="txttitle" runat="server" TabIndex="1" Placeholder="Job Title" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Job Name</p>
                        <asp:TextBox ID="txtjobname" runat="server" TabIndex="2" Placeholder="Job Name" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Country</p>
                        <asp:DropDownList ID="ddlcountry" runat="server" TabIndex="3" AutoPostBack="true" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>State</p>
                        <asp:DropDownList ID="ddlstate" runat="server" TabIndex="4" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Key Skill</p>
                        <asp:TextBox ID="txtkeyskill" runat="server" TabIndex="5" Placeholder="Key Skill" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Experiance</p>
                        <asp:TextBox ID="txtexp" runat="server" TabIndex="6" Placeholder="Experiance" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Salery</p>
                        <asp:TextBox ID="txtsalery" runat="server" TabIndex="7" Placeholder="Salery (example:  5k to 10 k)" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <p>Job Description</p>
                        <asp:TextBox ID="txtjobdescription" runat="server" TextMode="MultiLine" Height="100px" TabIndex="8" Placeholder="Job Description" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <asp:LinkButton runat="server" ID="lblsave" TabIndex="9" CssClass="btn btn-success pull-right mr-1 text-white" OnClick="lblsave_Click"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
                        <div class="clearfix mt-1"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
