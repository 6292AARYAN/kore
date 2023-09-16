<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="Product" MasterPageFile="~/MasterPage.Master" %>

<asp:Content runat="server" ID="conhead" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ID="coninner" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="bannerArea2">
        <h1>Products</h1>
    </div>
    <div style="margin-top: 8px;"></div>
    <div class="cmsarieabg">
        <div class=" container">

            <div class="row">
                <div class="col-sm-3 col-md-3">
                    <asp:DataList runat="server" ID="dlgallery" RepeatColumns="4" RepeatDirection="Horizontal">
                        <ItemTemplate>


                            <div id="vlightbox">
                                <div class=" transEff">
                                    <a href="<%#Eval("ImagePath") %>" style="width: 250px; height: 250; margin: 15px; border: 1px solid #f1f1f1; box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px; padding: 15px;" class="vlightbox">
                                        <img class="figure-img img-thumbnail" height="177" src='<%#Eval("ImagePath") %>' /></a>
                                </div>

                            </div>


                        </ItemTemplate>
                    </asp:DataList>
                </div>

            </div>

        </div>
    </div>

    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" id="md-close">&times;</span>

            <video width="100%" id="videoPouse" controls>
                <source src="dummy_video.mp4" type="video/mp4">
                <source src="dummy_video.ogg" type="video/ogg">
                Your browser does not support HTML video.
            </video>

        </div>
    </div>
</asp:Content>
