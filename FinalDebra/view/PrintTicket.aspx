<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintTicket.aspx.cs" Inherits="FinalDebra.view.PrintTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script defer src="../javascript/printTicket.js"></script>
    <link href="../css/test.css" rel="stylesheet" />
    <title>Ticket For</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="partnert_main_wrapper">
        <div class="navigation_bar_partner_panel">
            <div class="logo">
                <h1 id="">Debra</h1>
            </div>
            <div class="navigation_bar_partner_panel_right_componenet">
                <div class="image_div_component">
                    <img src="../Assert/user.png" width="25" alt="" srcset="">
                </div>
                <p><asp:Label ID="Label2" runat="server" ></asp:Label></p>
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
                    <img src="Assert/the.png" width="220" alt="">
                  </div>
            </div>
            <div class="right_wrapper">
                <div id="Home" class="tabcontent firstView">
                    <h3>Your Ticket is Ready</h3>
                    <div id="content" class="ticket_main_wrapper">
                        <div class="header_comp">
                           <div class="top_header">
                                <h3><asp:Label ID="Label1" runat="server" ></asp:Label></h3>
                                <p>Optional Guests / Info</p>
                           </div>
                            <div class="">
                                <p></p>
                                <p></p>
                                <p></p>
                               </div>
                        </div>
                         <div  class="main_dev">
                            <div>
                                <div class="item_flex">
                                    <img src="../Assert/location.png" width="30" alt="" srcset="">
                                    <p><asp:Label ID="Label3" runat="server" ></asp:Label></p>
                                </div>
                                <div class="item_flex">
                                    <img src="../Assert/calendar .png" width="30" alt="" srcset="">
                                    <p><asp:Label ID="Label4" runat="server" ></asp:Label></p>
                                </div>
                                 <div class="item_flex">
                                     <img src="../Assert/groupuseres.png" width="30" alt="" srcset="">
                                     <p><asp:Label ID="Label5" runat="server" ></asp:Label></p>
                                 </div>
                               </div>
                               <div class="second_flex
                               ">
                                <p>Thurday</p>
                                <p id="date">30</p>
                                <p>Novemer 2024</p>
                               </div>
                         </div>
                    </div>
                    <div class="ticket_btn">
                         <button id="print_btn">Download Ticket</button> 
                         <asp:Button  runat="server" id="back" OnClick="back_main" Text="Back Main Menu"  /> 
                    </div>
                </div>
            </div>
        </div>
    </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/printThis/1.15.0/printThis.js"></script>
    </form>
</body>
</html>
