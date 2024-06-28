<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="FinalDebra.view.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/booking.css" rel="stylesheet" />
    <title>Booking</title>
</head>
<body>
      <div class="partnert_main_wrapper">
        <div class="navigation_bar_partner_panel">
            <div class="logo">
                <h1 id="">Debra</h1>
            </div>
            <div class="navigation_bar_partner_panel_right_componenet">
                <div class="image_div_component">
                    <img src="../Assert/user.png" width="25" alt="" srcset="">
                </div>
                <p><asp:Label ID="Label1" runat="server" ></asp:Label> </p>
            </div>
        </div>

        <div class="partner_main_body_wrapper">
            <div class="left_warpper">
                <div class="tab">
                    <div class="tab_items">
                        <img src="../Assert/home.png" width="30" height="30" alt="" srcset="">
                        <button class="tablinks" onclick="openCity(event, 'Home')">Home</button>
                    </div>
                    <div class="tab_items">
                        <img src="../Assert/event.png" width="30" height="30" alt="" srcset="">
                        <button class="tablinks" onclick="openCity(event, 'Add_Event')">Ticket Booking</button>
                    </div>
                  </div>
                  
                  <div>
                    <img src="../Assert/the.png" width="220" alt="">
                  </div>
            </div>
            <div class="right_wrapper">
                <div id="Home" class="tabcontent firstView">
                    <h3>Booking Details</h3>
                    <form id="form1" runat="server">
                        <div class="details_main_wrapper">
                            <div class="details_left_wrapper">
                                <h2>Billing Details</h2>
                                <div class="details_items">
                                    <asp:TextBox ID="eventname" runat="server" placeholder="Full Name"/>
                                </div>
                                <div class="details_items">
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Email Address"/>
                                </div>
                                <div class="details_items">
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Phone Number"/>
                                </div>
                                <div class="details_items">
                                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Nic/Passport/Driving Licnecse"/>                                </div>
                                <div class="details_items">
                                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Qontity"/>
                                </div>
                                <div class="pay_button">
                                  <asp:Button  runat="server" id="Button2" OnClick="checkTotal" Text="Check Total"  /> 
                                </div>
                            </div>
                            <div class="details_right_wrapper">
                                <h2>Booking Summary</h2>
                                <div>
                                     <div class="booking_summary_flex">
                                        <p>Band Name</p>
                                        <p><asp:Label ID="Label2" runat="server" ></asp:Label></p>
                                     </div>
                                     <div class="booking_summary_flex">
                                        <p>Sub Total</p>
                                        <p><asp:Label ID="Label3" runat="server" ></asp:Label></p>
                                     </div>
                                     <div class="booking_summary_flex">
                                        <p>Convenience Fees(1%)</p>
                                        <p><asp:Label ID="Label4" runat="server" ></asp:Label></p>
                                     </div>
                                     <div class="booking_summary_flex">
                                        <p>Total</p>
                                        <p><asp:Label ID="Label5" runat="server" ></asp:Label></p>
                                     </div>
                                     <div class="details_items">
                                         <asp:TextBox ID="TextBox5" runat="server" placeholder="Card Name"/>
                                     </div>
                                     <div class="details_items">
                                         <asp:TextBox ID="TextBox6" runat="server" placeholder="MM/YY"/>
                                     </div>
                                    <div class="details_items">
                                        <asp:TextBox ID="TextBox7" runat="server" placeholder="Security Code"/>
                                    </div>
                                </div>
                                <div class="payment_mages">
                                    <img src="../Assert/Visa&mastercard.png" width="70" alt="" srcset="">
                                    <img src="../Assert/Skrill.png" alt="" width="70" srcset="">
                                    <img src="../Assert/AmericanExpress.png" alt="" width="70" srcset="">
                                </div>
                                <div class="check_box_details">
                                    <input type="checkbox" name="" id="">
                                    <p>* I accept and agree to Terms and Conditions</p>
                                </div>
                                <div class="pay_button">
                                    <asp:Button  runat="server" id="Button1" OnClick="pay_of_book" Text="Pay"  /> 
                                </div>
                            </div>
                        </div>
                    </form>
                  </div>
                  
            </div>
        </div>
    </div>
</body>
</html>
