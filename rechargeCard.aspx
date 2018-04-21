<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="rechargeCard.aspx.cs" Inherits="rechargeCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="rechargepnl" runat="server"></asp:ScriptManager>
<center>
<h1><u>Smart Card Recharge</u></h1>
<asp:UpdatePanel ID="regpnl" runat="server">
<ContentTemplate>

<table cellspacing="5px">
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="RFID Card No:- "></asp:Label></td>
    <td>
        <asp:TextBox ID="txtCard" runat="server" AutoPostBack="True" ontextchanged="txtCard_TextChanged" 
            ></asp:TextBox></td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label2" runat="server" Text="Available Amount:- "></asp:Label></td>
    <td>
        <asp:TextBox ID="txtAvl" runat="server"></asp:TextBox></td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label3" runat="server" Text="Amount:- "></asp:Label></td>
    <td>
        <asp:TextBox ID="txtAmt" runat="server"></asp:TextBox></td>

</tr>
<tr>
<td colspan="2" align="center">

    <asp:Button ID="btnAdd" runat="server" Text="Add Amount" Height="30px" 
        Width="120px" onclick="btnAdd_Click" />
</td>

</tr>
<tr>
    <asp:Label ID="lblDisp" runat="server" ForeColor="Blue" Text=""></asp:Label>

</tr>

</table>


</ContentTemplate>

</asp:UpdatePanel>


</center>







</asp:Content>

