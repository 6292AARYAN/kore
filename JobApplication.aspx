<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobApplication.aspx.cs" Inherits="JobApplication" MasterPageFile="~/MasterPage.Master" %>

<asp:Content runat="server" ID="conhead" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ID="coninner" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="bannerArea2">
        <h1>Application Form</h1>
    </div>
    <div style="margin-top: 8px;"></div>
    <div class="cmsarieabg">
        <div class=" container">
            <div class="row">
                <div class="card-header col-sm-12">
                    ]]]
                    <b class="text-capitalize text-primary">General Detail</b>
                </div>
                <div class="clearfix"></div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Name:</label>
                        <asp:TextBox runat="server" ID="txtname" Placeholder="NAME" TextMode="SingleLine" CssClass="form-control">
                        </asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Sex:</label>
                        <asp:DropDownList runat="server" ID="ddlsex" CssClass="form-control">
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                            <asp:ListItem Value="Common">Common</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Date of Birth:</label>
                        <asp:TextBox runat="server" ID="txtdob" Placeholder="Date of Birth" type="date" CssClass="form-control">
                        </asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Marital Status:</label>
                        <asp:DropDownList runat="server" ID="ddlmaritalstatus" CssClass="form-control">
                            <asp:ListItem>Single</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>Divorced</asp:ListItem>
                            <asp:ListItem>Widower</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Height (in cm):</label>
                        <asp:TextBox runat="server" ID="txtheight" Placeholder="Height (in cm)" CssClass="form-control">
                        </asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Weight (in Kgs):</label>
                        <asp:TextBox runat="server" ID="txtweight" Placeholder="Weight (in Kgs)" CssClass="form-control">
                        </asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label>Any major medical problems in the past 5 years:</label>
                        <asp:TextBox runat="server" ID="txtmedical" Placeholder="Any major medical problems in the past 5 years" TextMode="MultiLine" Height="70px" CssClass="form-control">
                        </asp:TextBox>
                    </div>
                </div>
                <div class="card-header col-sm-12">
                    <b class="text-capitalize text-primary">Contact Information</b>
                </div>
                <div class="clearfix"></div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>
                            Permanant Address
                        </label>
                        <asp:TextBox runat="server" ID="txtPermanentAddress" CssClass="form-control" Placeholder="Permanant Address"
                            TextMode="MultiLine" Height="70px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>
                            Present Address
                        </label>
                        <asp:TextBox runat="server" ID="txtPresentAddress" CssClass="form-control" Placeholder="Present Address"
                            TextMode="MultiLine" Height="70px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Residing for the past:</label>
                        <asp:DropDownList runat="server" ID="ddlresident" CssClass="form-control">
                            <asp:ListItem>&lt; 6 months</asp:ListItem>
                            <asp:ListItem>0.5 - 1 year</asp:ListItem>
                            <asp:ListItem>1 - 2 year</asp:ListItem>
                            <asp:ListItem>2 - 5 year</asp:ListItem>
                            <asp:ListItem>5 - 10 year</asp:ListItem>
                            <asp:ListItem>&gt; 10 years</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>State</label>
                        <asp:TextBox runat="server" ID="ddlstate" CssClass="form-control" Placeholder="State">
                        </asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Telephone Number:</label>
                        <asp:TextBox runat="server" ID="txttelephone" type="number" Placeholder="Telephone No" MaxLength="11" CssClass="form-control">
                        </asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Phone number for future communication:</label>
                        <asp:TextBox runat="server" ID="txtphoneother" type="number" Placeholder="Phone number for future communication" MaxLength="11" CssClass="form-control">
                        </asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Email:</label>
                        <asp:TextBox runat="server" ID="txtemail" type="email" Placeholder="Email" CssClass="form-control">
                        </asp:TextBox>
                    </div>
                </div>
                <div class="card-header col-sm-12">
                    <b class="text-capitalize text-primary">Educational Details</b>
                </div>
                <div class="clearfix"></div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Year of Passing</th>
                            <th>School</th>
                            <th>Board</th>
                            <th>State</th>
                            <th>Marks (%)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <th>Class 10th</th>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtyrpass10" CssClass="form-control" Placeholder="10th class year of passing"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txt10school" CssClass="form-control" Placeholder="10th class school name"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txt10board" CssClass="form-control" Placeholder="10th class school board"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtsate10" CssClass="form-control" Placeholder="10th class school state"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtmarks10" CssClass="form-control" Placeholder="10th class marks"></asp:TextBox></td>
                        </tr>
                        <th>Class 12th/ Equivalent</th>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtyrpass12" CssClass="form-control" Placeholder="12th class year of passing"></asp:TextBox></td>

                            <td>
                                <asp:TextBox runat="server" ID="txt12school" CssClass="form-control" Placeholder="12th class school name"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txt12board" CssClass="form-control" Placeholder="12th class school board"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtstate12" CssClass="form-control" Placeholder="12th class school state"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtmarks12" CssClass="form-control" Placeholder="12th class marks"></asp:TextBox></td>
                        </tr>
                    </tbody>
                </table>
                <div class="clearfix"></div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Year of admission</th>
                            <th>Year of passing</th>
                            <th>Branch/ Specialization</th>
                            <th>Marks</th>
                            <th>Degree/ Diploma :</th>
                            <th>University</th>
                            <th>Institute/ College</th>
                            <th>State</th>
                        </tr>
                    </thead>
                    <tbody>
                        <th>Graduation</th>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtyrofadmision" CssClass="form-control" Placeholder="Year of admission"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtofpassing" CssClass="form-control" Placeholder="Year of passing"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtbranch" CssClass="form-control" Placeholder="Branch/ Specialization"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtmarks" CssClass="form-control" Placeholder="Marks"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtdegree" CssClass="form-control" Placeholder="Degree/ Diploma"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtuniversity" CssClass="form-control" Placeholder="University"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtinstitute" CssClass="form-control" Placeholder="Institute/ College"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtstate" CssClass="form-control" Placeholder="State"></asp:TextBox></td>
                        </tr>
                        <th>Other</th>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtyrofadmisionother" CssClass="form-control" Placeholder="Year of admission"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtofpassingother" CssClass="form-control" Placeholder="Year of passing"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtbranchother" CssClass="form-control" Placeholder="Branch/ Specialization"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtmarksother" CssClass="form-control" Placeholder="Marks"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtdegreeother" CssClass="form-control" Placeholder="Degree/ Diploma"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtuniversityother" CssClass="form-control" Placeholder="University"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtinstituteother" CssClass="form-control" Placeholder="Institute/ College"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtstateother" CssClass="form-control" Placeholder="State"></asp:TextBox></td>
                        </tr>
                    </tbody>
                </table>
                <div class="clearfix"></div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <label>
                            Have you re-appeared in any subject? Give details.
                        </label>
                        <asp:TextBox runat="server" ID="txtgivedetailseducation" CssClass="form-control" TextMode="MultiLine" Height="100px"
                            placeholder="Have you re-appeared in any subject? Give details.">
                        </asp:TextBox>
                    </div>
                </div>
                <div class="card-header col-sm-12">
                    <b class="text-capitalize text-primary">Family Details</b>
                </div>
                <div class="clearfix"></div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Relationship</th>
                            <th>Educational Qualifications</th>
                            <th>Occupation</th>
                            <th>Company/Organization</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th>Father</th>
                            <td>
                                <asp:TextBox runat="server" ID="txtEducational" CssClass="form-control" Placeholder="Educational Qualifications"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtOccupation" CssClass="form-control" Placeholder="Occupation"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtCompany" CssClass="form-control" Placeholder="Company/Organization"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th>Mother</th>
                            <td>
                                <asp:TextBox runat="server" ID="txtEducational1" CssClass="form-control" Placeholder="Educational Qualifications"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtOccupation1" CssClass="form-control" Placeholder="Occupation"></asp:TextBox></td>
                            <td>
                                <asp:TextBox runat="server" ID="txtCompany1" CssClass="form-control" Placeholder="Company/Organization"></asp:TextBox></td>
                        </tr>
                    </tbody>
                </table>
                <div class="card-header col-sm-12">
                    <b class="text-capitalize text-primary">Other Information</b>
                    <div class="clearfix"></div>
                    <p>How do you rate your communication ability?</p>
                </div>
                <div class="clearfix"></div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Spoken</label>
                        <div class="clearfix"></div>
                        <asp:RadioButtonList runat="server" ID="rbability" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="Excellent">Excellent</asp:ListItem>
                            <asp:ListItem Value="Good">Good</asp:ListItem>
                            <asp:ListItem Value="Manageable">Manageable</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Written</label>
                        <div class="clearfix"></div>
                        <asp:RadioButtonList runat="server" ID="rbwritten" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Value="Excellent">Excellent</asp:ListItem>
                            <asp:ListItem Value="Good">Good</asp:ListItem>
                            <asp:ListItem Value="Manageable">Manageable</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Do you know how to drive?</label>
                        <asp:DropDownList runat="server" ID="ddldrive" CssClass="form-control">
                            <asp:ListItem Value="Yes">Yes</asp:ListItem>
                            <asp:ListItem Value="No">No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Will you be using any personal conveyance delhi?</label>
                        <asp:DropDownList runat="server" ID="ddlpersonalconveyance" CssClass="form-control">
                            <asp:ListItem Value="Yes">Yes</asp:ListItem>
                            <asp:ListItem Value="No">No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>What do you expect to achieve from this training.</label>
                        <asp:TextBox runat="server" ID="txtachievetrain" CssClass="form-control" Placeholer="What do you expect to achieve from this training"></asp:TextBox>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label>Wish to provide in support of your candidature .</label>
                        <asp:TextBox runat="server" ID="txtcandidature" CssClass="form-control" Placeholer="Any other info you wish to provide in support of your candidature"></asp:TextBox>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-sm-12">
                    <asp:LinkButton runat="server" ID="btnsub" class="btn btn-primary fa fa-save pull-right mr-1" OnClick="btnsub_Click">&nbsp;Submit and Save</asp:LinkButton>
                    <div class="clearfix"></div>
                    <br />
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
