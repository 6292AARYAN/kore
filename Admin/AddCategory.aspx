<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="Admin_AddCategory" MasterPageFile="~/Admin/MasterPage.master" %>

<asp:Content runat="server" ID="adminhead" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ID="inner" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="bannerArea2">
        <h1>Add Category</h1>
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
                                        <asp:TemplateField HeaderText="Category">
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="image" Text='<%#Eval("CategoryName") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" ID="lbdel" CommandName="del" CommandArgument='<%#Eval("CategoryId") %>'><i class="fa fa-trash"></i></asp:LinkButton>
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
                        <p>Note:- If you want to edit any category please delete and add new.</p>
                        <div class="clearfix"></div>
                        <asp:TextBox ID="txtcategory" runat="server" TabIndex="1" Placeholder="Category Name" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <asp:LinkButton runat="server" ID="lblsave" TabIndex="2" CssClass="btn btn-success pull-right mr-1 text-white" OnClick="lblsave_Click"><i class="fa fa-save"></i>&nbsp;Save</asp:LinkButton>
                        <div class="clearfix mt-1"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
