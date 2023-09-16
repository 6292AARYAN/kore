<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CurrentVacancies.aspx.cs" Inherits="CurrentVacancies" MasterPageFile="~/MasterPage.Master" %>

<asp:Content runat="server" ID="conhead" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ID="coninner" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="bannerArea2">
        <h1>Current vacancies</h1>
    </div>
    <div style="margin-top: 8px;"></div>
    <div class="cmsarieabg">
        <div class=" container">
            <div class="row">
                <div class="card-header col-sm-12">
                    <b class="text-capitalize text-primary">Live vacancies</b>
                </div>
                <div class="clearfix"></div>
                <div class="col-sm-6 p-1">
                    <asp:DataList ID="dljob" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" RepeatLayout="Flow">
                        <ItemTemplate>
                            <div class="card-body active border badge-info">
                                <div class="card-header-pills">
                                    <span>Job Title</span>&nbsp;  <%#Eval("JobTitle") %>
                                </div>
                                <div class="clearfix"></div>
                                <div class="title">
                                    <%#Eval("JobName") %>
                                </div>
                                <div class="clearfix"></div>
                                <div class="">
                                    <%#Eval("Country") %>&nbsp;- <%#Eval("State") %>
                                </div>
                                <div class="clearfix"></div>
                                <span>Salery</span>&nbsp;-<%#Eval("Salery") %>
                                <div class="clearfix"></div>
                                <span>Experiance</span>&nbsp;-<%#Eval("Experiance") %>
                                <div class="clearfix"></div>
                                <span>Key Skill</span>&nbsp;-<%#Eval("KeySkill") %>
                                <div class="clearfix"></div>
                                <span>Job Description</span>&nbsp;-<%#Eval("JobDescription") %>
                                <div class="clearfix"></div>
                                <div class="text-center" runat="server" visible="false">
                                    <asp:LinkButton runat="server" ID="lbapply" CssClass="btn btn-primary btn-sm" CommandName="apply" CommandArgument='<%#Eval("JobId") %>'><span class="fa fa-thumbs-o-up"></span>&nbsp;Apply</asp:LinkButton>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
