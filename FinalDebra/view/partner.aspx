<%@ Page Language="C#" AutoEventWireup="true" CodeFile="partner.aspx.cs" Inherits="FinalDebra.view.partner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script defer src="../javascript/JavaScript1.js"></script>
    <link href="../css/StyleSheet1.css" rel="stylesheet" />
    <title>Partner</title>
</head>
<body>
         <div>
        <div class="admin_main_wrapper">
            <div class="navigation_bar_admin_panel">
            <div>
                <h1 id="">Debra</h1>
            </div>
            <div class="navigation_bar_admin_panel_right_componenet">
                <div class="image_div_component">
                    <img src="../Assert/user.png" width="25" alt="" srcset="">
                </div>
                <p>Partner</p>
            </div>
            </div>
            <div class="admin_body_component">
                    <div class="admin_body_component_left_component">
                       <div>
                            <div id="item_home" class="admin_body_component_left_component_items">
                                <img src="../Assert/home.png" width="20" alt="" srcset="">
                                <p>Home</p>
                            </div>
                            <div id="event" class="admin_body_component_left_component_items">
                                <img src="../Assert/event.png" width="20" alt="" srcset="">
                                <p>Add Event</p>
                            </div>
                            <div id="view_all_event" class="admin_body_component_left_component_items">
                                <img src="../Assert/event.png" width="20" alt="" srcset="">
                                <p>View Add All Event</p>
                            </div>
                            <div id="sellTicket" class="admin_body_component_left_component_items">
                                <img src="../Assert/ticket.png" width="20" alt="" srcset="">
                                <p>Selling Ticket Details</p>
                            </div>
                            <div id="systemSetting" class="admin_body_component_left_component_items">
                                <img src="../Assert/system.png" width="20" alt="" srcset="">
                                <p>System Setting</p>
                            </div>
                       </div>
                        <div id="footer_image">
                            <img src="../Assert/pexels-wendywei-1190298.jpg" width="100%" height="100%" alt="">
                        </div>
                    </div>
                    <div class="admin_body_component_right_component">
                        <div id="admin_home_right_bar">
                            <h1>Welcome Back Home</h1>
                        </div>
                        <div id="admin_venue_right_bar">
                           <div id="hide_venue" class="a_v_r_t_venue">
                            <p>Add Event</p>
                                <div class="top">
                                     <form id="form1" runat="server">
                                        <div class="_serach_bar">
                                        <asp:TextBox ID="TextBox6" placeholder="Event Name" runat="server" />
                                        <div class="search_btn">
                                            <img src="../Assert/search-interface-symbol.png"  width="15" alt="pls">
                                            <asp:Button ID="search" Text="Search" OnClick="SearchBtn_Click" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="botom">
                                    <div class="botom_sub_wrapper">
                                        <div class="botom_left">
                                   
                                                        <div class="botom_left_item">
                                                            <label for="">Even Name</label><br>
                                                            <asp:TextBox ID="TextBox0" placeholder="Event Name" runat="server" />
                                                        </div>
                                                        <div class="botom_left_item">
                                                            <label for="">Partner Name</label><br>
                                                            <asp:TextBox ID="TextBox1"  runat="server"  placeholder="Partner Name"  /> 
                                                        </div>
                                                        <div class="botom_left_item">
                                                            <label for="">Venue</label><br>
                                                            <asp:TextBox ID="TextBox2"  runat="server"  placeholder="Venue"  /> 
                                                        </div>
                                                    </div>
                                                   <div class="botom_right">
                                                        <div class="botom_right_item">
                                                            <label for="">Schedule</label><br>
                                                            <asp:TextBox ID="TextBox3"  runat="server"  placeholder="Schedule"  /> 
                                                        </div>
                                                        <div  class="botom_right_item">
                                                            <label for="">Price</label><br>
                                                            <asp:TextBox ID="TextBox4"  runat="server"  placeholder="Price"  /> 
                                                        </div>
                                                        <div  class="botom_right_item">
                                                            <label for="">Contact</label><br>
                                                            <asp:TextBox ID="TextBox5"  runat="server"  placeholder="Contact"  /> 
                                                        </div>
                                                   </div>
                                                </div>
                                               <div class="crud_btn">
                                                 <asp:Button  runat="server" id="insert" OnClick="insertData" Text="Insert"  /> 
                                                <asp:Button  runat="server" id="update" OnClick=" update_Click" Text="Update"  />
                                                <asp:Button  runat="server" id="delete" OnClick=" delete_Click" Text="Delete"  />
                                            </div>
                                         </form>
                                </div>
                           </div>
                        </div>
                        <div id="admin_selling_ticket_right_bar">
                            <div id="hide_venue" class="a_v_r_t_venue">
                                <p>Selling Ticket</p>
                                    <div class="top">
                                        <!-- <div id="add_venue_booking_list" class="_new_btn">
                                            <img src="Assert/plus.png" width="15" alt="pls">
                                            <span>New</span>
                                        </div> -->
                                        <div class="_serach_bar">
                                            <input type="text" placeholder="search">
                                            <div class="search_btn">
                                                <img src="../Assert/search-interface-symbol.png"  width="15" alt="pls">
                                                <span>Search</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="botom">
                                        <table id="customers">
                                            <tr>
                                                <th>#</th>
                                                <th>Event Name</th>
                                                <th>Venue</th>
                                                <th>Price</th>
                                                <th>Commission </th>
                                                <th>Selling Tickets</th>
                                                <th>Total</th>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Flash Back</td>
                                                <td>Polpithigama Mahajana Stadium</td>
                                                <td>Rs.500.00</td>
                                                <td>10%</td>
                                                <td>50</td>
                                                <td>Rs.50,000.00</td>
                                            </tr>
                                          </table>
                                    </div>
                               </div>
                            </div>
                         <div id="admin_view_add_all_event__ticket_right_bar">
                                <div id="hide_venue" class="a_v_r_t_venue">
                                 <p>Selling Ticket</p>
                                     <div class="top">
                                         <!-- <div id="add_venue_booking_list" class="_new_btn">
                                             <img src="Assert/plus.png" width="15" alt="pls">
                                             <span>New</span>
                                         </div> -->
                                         <div class="_serach_bar">
                                             <input type="text" placeholder="search">
                                             <div class="search_btn">
                                                 <img src="../Assert/search-interface-symbol.png"  width="15" alt="pls">
                                                 <span>Search</span>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="botom">
                                         <table id="customers">
                                             <tr>
                                                 <th>#</th>
                                                 <th>Event Name</th>
                                                 <th>Venue</th>
                                                 <th>Price</th>
                                                 <th>Commission </th>
                                                 <th>Selling Tickets</th>
                                                 <th>Total</th>
                                             </tr>
                                             <tr>
                                                 <td>1</td>
                                                 <td>Flash Back</td>
                                                 <td>Polpithigama Mahajana Stadium</td>
                                                 <td>Rs.500.00</td>
                                                 <td>10%</td>
                                                 <td>50</td>
                                                 <td>Rs.50,000.00</td>
                                             </tr>
                                           </table>
                                     </div>
                                </div>
                             </div>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>
