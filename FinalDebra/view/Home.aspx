<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalDebra.view.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/home.css" rel="stylesheet" />
    <title>Debra</title>
</head>
<body>
         <div class="main_wrapper">
        <div class="nav_bar_main_wrapper">
            <div class="nav_bar">
                <div class="logo">
                    <h1>Debra</h1>
                </div>
                <div class="services">
                    <a href="">Contact</a>
                    <a href="">Service</a>
                    <a href="">Abouth</a>
                </div>
                <div class="log_btn">
                     <form id="form1" runat="server">
                     <asp:Button  runat="server" id="redirect" OnClick="redirect_loging_page" Text="Open an acoount"  />
                     </form>
                </div>
            </div>
        </div>
        <div class="hero_section">
            <div class="left_hero">
                <h1>Greate Event</h1>
                <h1>Start Here</h1>
                <p>Here's all you need to knows</p>
                <button>Explore Now</button>
            </div>
            <div class="right_hero">

            </div>
        </div>
        <div class="second_section">
            <div class="second_header_text">
                <h1>We're setting the world's stage</h1>
                <h1>for live experiences</h1>
                <div class="cardview_second_section">
                    <div class="cardview_second_section_items">
                        <img src="../Assert/7176685.jpg" width="150" alt="">
                        <h2>Payment Processing</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    </div>
                    <div  class="cardview_second_section_items">
                        <img src="../Assert/Business deal-rafiki.svg" alt="" width="150">
                        <h2>Always Free Tickets</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    </div>
                    <div  class="cardview_second_section_items">
                        <img src="../Assert/Mobile UX-bro.svg" alt="" width="150">
                        <h2>App For Organizer</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="third_section">
            <div class="third_section_main_wrapper">
                <h2>Our</h2>
               <h2>Most Popular Event</h2>
               <div class="cardview_third_section">
                <div class="cardview_third_section_items">
                    <div class="image image1"></div>
                    <h2>Event</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    <button>Visit</button>
                </div>
                <div  class="cardview_third_section_items">
                    <div class="image image2"></div>
                    <h2>Event</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    <button>Visit</button>
                </div>
                <div  class="cardview_third_section_items">
                    <div class="image image3"></div>
                    <h2>Event</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    <button>Visit</button>
                </div>
               </div>
            </div>
        </div>
        <div class="abouth_image">

        </div>
        <footer>
            <div class="footer-top">
                <div class="footer-section">
                  <h4>Contact Us</h4>
                  <p>123 Street Name, City, State, 12345</p>
                  <p>Phone: (123) 456-7890</p>
                  <p>Email: debra@example.com</p>
                </div>
                <div class="footer-section">
                  <h4>Quick Links</h4>
                  <ul>
                    <li><a href="/about">About Us</a></li>
                    <li><a href="/services">Services</a></li>
                    <li><a href="/contact">Contact</a></li>
                  </ul>
                </div>
                <div class="footer-section">
                  <h4>Follow Us</h4>
                  <ul class="social-media">
                    <li><a href="#"><i class="fab fa-facebook"></i> Facebook</a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
                    <li><a href="#"><i class="fab fa-linkedin"></i> LinkedIn</a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
                  </ul>
                </div>
                <div class="footer-section">
                  <h4>Subscribe</h4>
                  <form>
                    <input type="email" placeholder="Your Email">
                    <button type="submit">Subscribe</button>
                  </form>
                </div>
              </div>
              <div class="footer-bottom">
                <p>&copy; 2024 Debra. All rights reserved.</p>
                <ul>
                  <li><a href="/privacy-policy">Privacy Policy</a></li>
                  <li><a href="/terms-of-service">Terms of Service</a></li>
                  <li><a href="/cookie-policy">Cookie Policy</a></li>
                </ul>
              </div>
              <h2 id="center_h2_tag">Debra</h2>
        </footer>
    </div>
</body>
</html>
