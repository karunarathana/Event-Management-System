<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registe.aspx.cs" Inherits="FinalDebra.view.Registe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/loging.css" rel="stylesheet" />
    <title>Register</title>
</head>
<body>
        <div class="main_wrapper">
        <div class="logingForm_component">
            <form id="form2" runat="server">
            <h1>Debra</h1>
            <div id="select_user_input">
                <label for="">User Type</label>
                 <asp:DropDownList ID="DropDownList1" runat="server">
                     <asp:ListItem Text="Partner" Value="Partner"></asp:ListItem>
                     <asp:ListItem Text="User" Value="User"></asp:ListItem>
                 </asp:DropDownList>
            </div>
            <div  class="logingForm_component_input_item">
                <label for="">User Name</label>
                <asp:TextBox ID="TextBox1"  runat="server"  placeholder="User Name"  /> 
            </div>
            <div  class="logingForm_component_input_item">
                <label for="">Password</label>
                 <asp:TextBox TextMode="Password" ID="TextBox2"  runat="server"  placeholder="Password"  /> 
            </div>
            <div class="loggin_btn_input_componet" >
                <asp:Button  runat="server" id="Register" OnClick="register_btn_click" Text="Register"  />
            </div>
            <p id="redirect_account_page">Do you have an account?<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Click</asp:LinkButton></p>
           </form>
        </div>
    </div>
</body>
</html>
