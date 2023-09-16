<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.Master" %>

<asp:Content runat="server" ID="conhead" ContentPlaceHolderID="head">
</asp:Content>
<asp:Content runat="server" ID="coninner" ContentPlaceHolderID="ContentPlaceHolder1">
 <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img class="d-block w-100" src="images/sliderProducts/banner1.jpg" />
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/sliderProducts/banner2.jpg" />
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/sliderProducts/banner3.jpg" />
    </div>
      <div class="carousel-item">
      <img class="d-block w-100" src="images/sliderProducts/banner4.jpg" />
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <!--banner end-->
    <!--products-->
    <div class="productCon">
        <div class="container">
            <h2 class="title">We Deal In Brand
            </h2>
            <div class="row mt-3">
                <div class="col-sm-2 mt-2">
                    <div class="card transEff">
                        <figure>
                            <a href="product.aspx?prdocutid=semens">
                                <img class="d-block w-100" src="images/clients/siemens-new-logo.jpg" />
                                </a>
                        </figure>
                        
                    </div>
                </div>
                 <div class="col-sm-2 mt-2">
                    <div class="card transEff">
                        <figure>
                           <a href="product.aspx?prdocutid=schneider">
                                 <img class="d-block w-100" src="images/clients/schneider-logo.jpg" /> </a>
                        </figure>
                       
                    </div>
                </div>
               <div class="col-sm-2 mt-2">
                    <div class="card transEff">
                        <figure>
                            <a href="product.aspx?prdocutid=ab">
                                 <img class="d-block w-100" src="images/clients/ab-logo.jpg" /> </a>
                        </figure>
                       
                    </div>
                </div>

                <div class="col-sm-2 mt-2">
                    <div class="card transEff">
                        <figure>
                            <a href="product.aspx?prdocutid=ge">
                                 <img class="d-block w-100" src="images/clients/ge-logo.jpg" /> </a>
                        </figure>
                       
                    </div>
                </div>

               <div class="col-sm-2 mt-2">
                    <div class="card transEff">
                        <figure>
                            <a href="product.aspx?prdocutid=larsen">
                                 <img class="d-block w-100" src="images/clients/larsen-logo.jpg" /> </a>
                        </figure>
                     
                    </div>
                </div>

                <div class="col-sm-2 mt-2">
                    <div class="card transEff">
                        <figure>
                           <a href="product.aspx?prdocutid=mitsubishi">
                                 <img class="d-block w-100" src="images/clients/mitsubishi-logo.jpg" /> </a>
                        </figure>
                       
                    </div>
                </div>
                <div class="col-sm-2 mt-2">
                    <div class="card transEff">
                        <figure>
                            <a href="product.aspx?prdocutid=omronn">
                                 <img class="d-block w-100" src="images/clients/omron-logo.jpg" /> </a>
                        </figure>
                       
                    </div>
                </div>
                <div class="col-sm-2 mt-2">
                    <div class="card transEff">
                        <figure>
                            <a href="product.aspx?prdocutid=delta">
                                <img class="d-block w-100" src="images/clients/delta-logo.jpg" />
                                </a>
                        </figure>
                        
                    </div>
                </div>
               

                <div class="col-sm-2 mt-2">
                    <div class="card transEff">
                        <figure>
                            <a href="product.aspx?prdocutid=abb">
                                 <img class="d-block w-100" src="images/clients/abb-logo.jpg" /> </a>
                        </figure>
                        
                    </div>
                </div>
            </div>
           
        </div>
    </div>
    <div class="welcomeCon">
        <div class="column ">
            <div class="left">
                <h1 style=" color:#fff;">Welcome To Kore  Automation</h1>
            </div>

        </div>
        <div class="column right">
            <div class="contentArea">
                <p>
                    Kore Automation solutions, is the fastest growing company dedicated to industrial automation, makes its customers more productive and the world more sustainable. KAS is involved in the design and installation of complete systems for monitoring
                    and control of industrial plants and providing spares and services for the same. Founded in 2006, in New Delhi, India, KAS is now the leading solution provider for all kind of Automation challenges in the industry.
                </p>
                <p>
                    We have technical expertise and are providing quality high-end systems to multiple industrial verticals, for a variety of different applications. Consistent performance has earned us the trust of leading industrial corporate houses in
                    the country. We are a system integrator for Siemens industrial automation and drive systems. The complete range of products broadly includes Programmable Logic Controllers (PLCs) ranging from, Logo!, micro-PLC S7-200, mni-PLC S7-1200,
                    PLC S7-300 & S7-400 series,
                </p>
               
            </div>
        </div>
    </div>
    <div class="hpCon">
        <div class="container">
            <h2 class="title">Photo Gallery</h2>
            <div id="vlightbox">
                <div class="owl-carousel loop2 owl-theme">
                    <div class="item">
                        <div class="card transEff">
                            <a href="images/photoGallery/lg_img1.png" class="vlightbox">
                                <img src="images/photoGallery/img1.png" alt=""></a>
                        </div>
                    </div>

                    <div class="item">
                        <div class="card transEff">
                            <a href="images/photoGallery/lg_img2.png" class="vlightbox">
                                <img src="images/photoGallery/img2.png" alt=""></a>

                        </div>
                    </div>

                    <div class="item">
                        <div class="card transEff">
                            <a href="images/photoGallery/lg_img3.png" class="vlightbox">
                                <img src="images/photoGallery/img3.png" alt=""></a>


                        </div>
                    </div>

                    <div class="item">
                        <div class="card transEff">
                            <a href="images/photoGallery/lg_img4.png" class="vlightbox">
                                <img src="images/photoGallery/img4.png" alt=""></a>


                        </div>
                    </div>

                    <div class="item">
                        <div class="card transEff">
                            <a href="images/photoGallery/lg_img5.png" class="vlightbox">
                                <img src="images/photoGallery/img5.png" alt=""></a>


                        </div>
                    </div>

                    <div class="item">
                        <div class="card transEff">
                            <a href="images/photoGallery/lg_img6.png" class="vlightbox">
                                <img src="images/photoGallery/img6.png" alt=""></a>


                        </div>
                    </div>

                </div>
            </div>

            <a href="gallery.aspx" class="btn-danger">View All Photos</a>
        </div>
    </div>
    <div class="advantageCon">
        <div class="container">
            <h2 class="title">Careers Succeed Here</h2>

            <div class="row">

                <div class="column">
                    <div class="inner">
                        <figure><i class="icon-users"></i></figure>
                        <figcaption>
                            <h3>Personalized</h3>
                            <p>At Kore Automation, we are always looking for talented individuals who are ambitious, who love challenges and who have...</p>
                        </figcaption>
                    </div>
                </div>

                <div class="column">
                    <div class="inner">
                        <figure><i class="icon-award"></i></figure>
                        <figcaption>
                            <h3>What We Offer?</h3>
                            <p>
                                We offer high-end solutions to industries to help them meet their quality and productivity challenges. We provide tailor-made
                            </p>
                        </figcaption>
                    </div>
                </div>

                <div class="column">
                    <div class="inner">
                        <figure><i class="icon-thumbs-up"></i></figure>
                        <figcaption>
                            <h3>Follow Us</h3>
                            <ul class="socialBg">
                                <a href="">
                                    <img src="images/products/facebook.png">
                                </a>
                                <a href="">
                                    <img src="images/products/twitter.png">
                                </a>
                                <a href="">
                                    <img src="images/products/linkedin.png">
                                </a>
                            </ul>
                        </figcaption>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="contactCon">
        <div class="column left">
            <div class="form">
                <h3>Enquiry Now!</h3>

                <form>
                    <div class="row">
                        <div class="cols">
                            <label for="companyName">Company Name</label>
                            <asp:TextBox runat="server" class="formControl" ID="txtcompanyName" required="" placeholder="Enter company name"></asp:TextBox>
                        </div>

                        <div class="cols">
                            <label for="contactPerson">Contact Person</label>
                            <asp:TextBox runat="server" class="formControl" ID="txtcontactPerson" required="" placeholder="Enter your name"></asp:TextBox>
                        </div>

                        <div class="cols">
                            <label for="email">Email Address</label>
                            <asp:TextBox runat="server" class="formControl" AutoCompleteType="Email" required="" type="email" ID="txtemail" placeholder="Enter email address"></asp:TextBox>
                        </div>

                        <div class="cols">
                            <label for="phone">Phone Number</label>
                            <asp:TextBox runat="server" Type="Number" class="formControl" ID="txtphone" required="" placeholder="Enter phone number"></asp:TextBox>
                        </div>


                        <div class="cols cols100">
                            <label for="message">Message/Comments</label>
                            <asp:TextBox runat="server" ID="txtmessage" class="formControl" required="" TextMode="MultiLine" Height="100px" placeholder="Enter Message"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Button runat="server" ID="btnsubmit" class="btn-danger" Text="Submit" OnClick="btnsubmit_Click" />

                </form>



            </div>


        </div>
        <div class="column right">
            <div class="inner">
                <h3>Get in Touch</h3>
                <h5>Kore Automation Solutions</h5>
                <p>Plot No.1838, MIE-2nd, Bahadurgarh, Jhajjar(Haryana), PIN - 124507</p>
                <p>
                    <strong>Tel : <a href="tel:+91-9891622422">+91-9891622422(Off.),</a> <a href="tel:+91-92-543-65-478">+91-92-543-65-478</a></br>
                        Email : <a href="mailto:info@koreautomation.com">info@koreautomation.com</a>
                    </strong>
                </p>
            </div>
        </div>
    </div>
    <div class="videoCon">
        <div class="column left"></div>
        <div class="column right">
            <div class="inner">
                <a href="#" class="btn-light" id="myPopBtn"><i class="icon-play"></i>Play our company video</a>
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
