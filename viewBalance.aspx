<%@ Page Title="" Language="C#" MasterPageFile="~/UserHome.master" AutoEventWireup="true" CodeFile="viewBalance.aspx.cs" Inherits="viewBalance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h1><u>View Balance</u></h1>
<table>
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="RFID No :-"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtRFID" runat="server" ReadOnly="True"></asp:TextBox></td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label2" runat="server" Text="Available Balance :-"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtBal" runat="server" ReadOnly="True"></asp:TextBox></td>

</tr>


</table>
</center>

</asp:Content>

