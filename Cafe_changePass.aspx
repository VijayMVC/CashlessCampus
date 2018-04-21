<%@ Page Title="" Language="C#" MasterPageFile="~/CafeUser.master" AutoEventWireup="true" CodeFile="Cafe_changePass.aspx.cs" Inherits="changePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <h1><u>Change Password</u></h1>
    <table>
    <tr>
    <td colspan="2" align="right">
        <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Red" 
            Visible="False"></asp:Label></td>
    </tr>
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="Old Password :-"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtOld" runat="server" ontextchanged="txtOld_TextChanged" 
        TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
    <asp:Label ID="Label2" runat="server" Text="New Password :"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtNew" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
    <asp:Label ID="Label3" runat="server" Text="Confirm Password :-"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtCon" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Change Password" 
        onclick="Button1_Click1" /></td>

</tr>
</table></center>
</asp:Content>

