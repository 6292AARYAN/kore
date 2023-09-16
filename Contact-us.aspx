<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact-us.aspx.cs" Inherits="Contact_us" MasterPageFile="~/MasterPage.Master" %>

<asp:Content runat="server" ID="conhead" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ID="coninner" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="bannerArea2">
        <h1>Contact Us</h1>
    </div>
    <div style="margin-top: 8px;"></div>
    <div class="cmsarieabg">
        <div class=" container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="contactBg">
                        <div class="col-sm-12">
                            <div class="bg-white p-3 text-center">
                                <strong>Kore Automation Solutions</strong>
                                <br>
                                Plot No.1838, MIE-2nd
                                <br>
                                Bahadurgarh, Jhajjar(Haryana)
                                <br>
                                PIN - 124507
                                <br>
                                Phone: +91-9891622422(Off.), +91-92-543-65-478
                                <br>
                                Email: info@koreautomation.com
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="bg-white p-3 mt-3">
                                <div class="row">
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtcontactPerson" required="" placeholder="Enter your name"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox runat="server" CssClass="form-control" AutoCompleteType="Email" required="" type="email" ID="txtemail" placeholder="Enter email address"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <div class="form-group">
                                            <asp:TextBox runat="server" CssClass="form-control" ID="txtcompanyName" required="" placeholder="Enter company name"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox runat="server" Type="Number" CssClass="form-control" ID="txtphone" required="" placeholder="Enter phone number"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12">
                                        <div class="form-group">
                                            <asp:TextBox runat="server" ID="txtmessage" CssClass="form-control" required="" TextMode="MultiLine" Height="100px" placeholder="Enter Message"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="submitBg">

                                    <asp:Button runat="server" ID="btnsubmit" class="submit" Text="Submit" OnClick="btnsubmit_Click" />

                                    <asp:Button runat="server" ID="Button1" class="reset" Text="Reset" OnClick="Button1_Click" />

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
