<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddImages.aspx.cs" Inherits="Admin_AddImages" MasterPageFile="~/Admin/MasterPage.master" %>

<asp:Content runat="server" ID="adminhead" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ID="inner" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="bannerArea2">
        <h1>Add Gallery</h1>
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
                                        <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                <asp:Image runat="server" ID="image" Height="80px" Width="80px" src='<%#Eval("ImagePath") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:LinkButton runat="server" ID="lbdel" CommandName="del" CommandArgument='<%#Eval("ImageId") %>'><i class="fa fa-trash"></i></asp:LinkButton>
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
                        <h1>Add New Gallery Images</h1>
                        <p>Note:- If you want to edit any image please delete and add new.</p>
                        <div class="clearfix"></div>
                        <asp:FileUpload ID="fuImage" runat="server" AllowMultiple="true" Class="form-control" />
                        <div class="clearfix mt-1"></div>
                        <asp:LinkButton runat="server" ID="lblsave" CssClass="btn btn-success pull-right mr-1 text-white" OnClick="lblsave_Click"><i class="fa fa-file-image-o"></i>&nbsp;Save</asp:LinkButton>
                        <div class="clearfix mt-1"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
