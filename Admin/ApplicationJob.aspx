<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplicationJob.aspx.cs" Inherits="Admin_ApplicationJob" MasterPageFile="~/Admin/MasterPage.master" %>

<asp:Content runat="server" ID="adminhead" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ID="inner" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="bannerArea2">
        <h1>View Fresh Job Application</h1>
    </div>
    <!--banner end-->

    <div class="cmsarieabg">
        <div class=" container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="cms-section">
                        <p>
                            <div class="table table-responsive">
                                <asp:GridView runat="server" ID="gvImage" Class="table table-hover table-bordered"
                                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="#CCCCCC" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Category">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                        <asp:BoundField DataField="Sex" HeaderText="Sex" />
                                        <asp:BoundField DataField="DOB" HeaderText="DOB" DataFormatString="{0:dd-MMM-yyyy}" />
                                        <asp:BoundField DataField="MarritalStatus" HeaderText="Marrital Status" />
                                        <asp:BoundField DataField="Height" HeaderText="Height" />
                                        <asp:BoundField DataField="Weight" HeaderText="Weight" />
                                        <asp:BoundField DataField="PermanentAddress" HeaderText="PermanentAddress" />
                                        <asp:BoundField DataField="StateId" HeaderText="StateId" />
                                        <asp:BoundField DataField="TelephoneNo" HeaderText="TelephoneNo" />
                                        <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" />
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

            </div>
        </div>
    </div>
</asp:Content>
