<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="FinalDebra.view.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script defer src="../javascript/admin.js"></script>
    <link href="../css/admin.css" rel="stylesheet" />
    <title>Admin</title>
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
                <p>Administarator</p>
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
                        <button class="tablinks" onclick="openCity(event, 'Add_Event')">Event</button>
                    </div>
                    <div class="tab_items">
                        <img src="../Assert/event.png"width="30" height="30"alt="" srcset="">
                        <button class="tablinks" onclick="openCity(event, 'View_Event')">View Event</button>
                    </div class="tab_items">
                  </div>   
                  <div>
                    <img src="../Assert/the.png" width="220" alt="">
                  </div>
            </div>
            <div class="right_wrapper">
                <div id="Home" class="tabcontent firstView">
                    <h3>Home Page</h3>
                    <p>🚀Welocome Admin🎉</p>
                   <div class="welcome_image">

                   </div>
                  </div>
                  
                  <div id="Add_Event" class="tabcontent">
                    <h3>Customize Event Post</h3>
                    <p>Notice:- Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum fugiat suscipit dolores reiciendis fugit ducimus nemo dolorum ad</p>
                   <form id="form1" runat="server">
                        <div class="search_item_add_event_page userinputItems">
                            <div>
                               <asp:TextBox ID="TextBox6" runat="server" placeholder="Event name"  />
                            </div>
                            <asp:Button  runat="server" id="search" OnClick="SearchBtn_Click" Text="Insert"  /> 
                        </div>
                        <div class="user_input_main_wrapper">
                            <div class="user_input_letft_wrapper">
                                <div class="userinputItems">
                                    <label for="">Event name</label><br>
                                    <asp:TextBox ID="TextBox0" runat="server" placeholder="Event name"  />
                                </div>
                                <div class="userinputItems">
                                    <label for="">Partner Name</label><br>
                                   <asp:TextBox ID="TextBox1"  runat="server"  placeholder="Partner Name"  /> 
                                </div>
                                <div class="userinputItems">
                                    <label for="">Place</label><br>
                                    <asp:TextBox ID="TextBox2"  runat="server"  placeholder="Place"  /> 
                                </div>
                            </div>
                            
                            <div class="user_input_letft-wrapper">
                                <div class="userinputItems">
                                    <label for="">Schedule</label><br>
                                   <asp:TextBox ID="TextBox3"  runat="server"  placeholder="Schedule"  /> 
                                </div>
                                <div class="userinputItems">
                                    <label for="">Price</label><br>
                                   <asp:TextBox ID="TextBox4"  runat="server"  placeholder="Price"  /> 
                                </div>
                                <div class="userinputItems">
                                    <label for="">Contact</label><br>
                                    <asp:TextBox ID="TextBox5"  runat="server"  placeholder="Contact"  /> 
                                </div>
                            </div>
                        </div>
                        <div class="crud_button">
                            <button>Insert</button>
                            <button>Delete</button>
                            <button>Update</button>
                        </div> 
                    </form>
                  </div>
                  
                  <div id="View_Event" class="tabcontent">
                    <h3>View All Partner</h3>
                    <p>Tokyo is the capital of Japaan.</p>
                         <div class="table"  style="overflow-x: auto;">
            
                          <table>
         
                             <asp:GridView ID="GridView3" runat="server"></asp:GridView> 
    
                          </table>
                    </div>
                  </div>
        </div>
    </div>
</body>
</html>
