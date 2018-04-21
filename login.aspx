<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type = "text/javascript" >
    function preventBack() { window.history.forward(); }
    setTimeout("preventBack()", 0);
    window.onunload = function () { null };
</script>
<center><table style="width: 230px; margin-bottom: 14px;">
     <tr><td height="20" colspan="2" align="center"><asp:Label ID="Label1" ForeColor ="red" runat="server" Text="" Visible ="false"></asp:Label></td></tr> 
     <tr><td height="25" align="right"><asp:Label ID="Label2" runat="server" Font-Bold="True" Style="position: static" Width="97px">Login Name :</asp:Label></td><td height="25" style="width: 192px">&nbsp;<asp:TextBox 
             ID="txt_id" runat="server" Style="position: static" TabIndex="1" Width="145px" 
             Height="25px"/>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_id" ErrorMessage="*"></asp:RequiredFieldValidator></td></tr>    
    <tr><td  height="25" align="right"><asp:Label ID="Label4" runat="server">Password :</asp:Label></td><td height="25" style="width: 192px"> &nbsp;<asp:TextBox 
            ID="txt_pwd" runat="server" TextMode="Password" TabIndex="2" Width="145px" 
            Height="25px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pwd" ErrorMessage="*"></asp:RequiredFieldValidator></td></tr>
        <tr><td  height="25" align="right"><asp:Label ID="Label3" runat="server">User Type :</asp:Label></td><td height="25" style="width: 192px"> &nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
             <asp:ListItem Text="----Select----" Value="n"></asp:ListItem>
                        <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                        <asp:ListItem Text="Library" Value="Library"></asp:ListItem>
                        <asp:ListItem Text="Cafe" Value="Cafe"></asp:ListItem>
                        <asp:ListItem Text="Parking" Value="Parking"></asp:ListItem>
                        <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
            </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_pwd" ErrorMessage="*"></asp:RequiredFieldValidator></td></tr>

    <tr><td colspan ="2" align="center" height="25">
        <asp:Button ID="Button2" 
            runat="server" Style="position: static" Text="Enter" Width="72px"  TabIndex="5" 
            CssClass="bttn" onclick="Button2_Click" />
        <asp:Label ID="lblerr" runat="server" ForeColor="Red" Text="Label" 
            Visible="False"></asp:Label>
        </td></tr>
            <tr>
            <td align="center"><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl ="~/register.aspx">Register</asp:HyperLink></td></tr>
               <tr><td align="center"> <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl ="~/forgot.aspx">Forget Password</asp:HyperLink></td></tr>
    </table></center>
</asp:Content>

