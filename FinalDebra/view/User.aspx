<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="FinalDebra.view.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script defer src="../javascript/admin.js"></script>
    <link href="../css/user.css" rel="stylesheet" />
    <title>User</title>
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
                    <h3>Home Page</h3>
                    <p>🚀Welocome <asp:Label ID="Label2" runat="server" ></asp:Label> 🎉</p>
                   <div class="welcome_image">

                   </div>
                  </div>
                  
                  <div id="Add_Event" class="tabcontent">
                    <h3>Booking Your Favourit Event</h3>
                       <asp:Label ID="Label3" runat="server" ></asp:Label>  
                    <p>Notice:- Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum fugiat suscipit dolores reiciendis fugit ducimus nemo dolorum ad</p>
                    <div class="table"  style="overflow-x: auto;">
                       <form id="form5" runat="server">
                       <table>
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="eventname" HeaderText="Event Name" />
                                     <asp:BoundField DataField="venue" HeaderText="Place" />
                                     <asp:BoundField DataField="schedule" HeaderText="Schedule" />
                                     <asp:BoundField DataField="price" HeaderText="Price" />
                                     <asp:TemplateField>
                                         <ItemTemplate>
                                             <asp:LinkButton ID="linkselect" Text="Book" runat="server" CommandArgument='<%#Eval("eventname") %>'  OnClick="book_event" />
                                         </ItemTemplate>
                                     </asp:TemplateField>
                                </Columns>
                            </asp:GridView> 
                       </table>
                       </form>
                    </div>
                  </div>
                  <div id="View_Event" class="tabcontent">
                    <h3>View All Partner</h3>
                    <p>Tokyo is the capital of Japan.</p>
                  </div>
                  <div id="Sell_Tickets" class="tabcontent">
                    <h3>Sell_Tickets</h3>
                    <p>Tokyo is the capital of Japan.</p>
            </div>
        </div>
    </div>
</body>
</html>
