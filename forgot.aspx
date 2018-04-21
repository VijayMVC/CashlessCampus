<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgot.aspx.cs" Inherits="forgot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1>Forgot Password Module</h1>
<table>

<tr>
<td>Enter Email ID :</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Verify Me" 
        onclick="Button1_Click" />


</td>


</tr>
<tr>
<td>
    <asp:Image ID="Image1" runat="server" Height="115px" Width="124px" /></td>
    <td>
        <asp:Label ID="lblpass" runat="server" Text="Label" Visible="false"></asp:Label></td>
</tr>
<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button2" runat="server" Text="Send Password" 
        onclick="Button2_Click" />

</td>

</tr>

</table>

</center>
</asp:Content>

