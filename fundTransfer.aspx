<%@ Page Title="" Language="C#" MasterPageFile="~/UserHome.master" AutoEventWireup="true" CodeFile="fundTransfer.aspx.cs" Inherits="fundTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <center>
<h1><u>Fund Transfer</u></h1>
<asp:UpdatePanel ID="uppnl" runat="server">
<ContentTemplate>



<table>
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="RFID No :-"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtRFID" runat="server" ReadOnly="True"></asp:TextBox></td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label2" runat="server" Text="Available Amount :-"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtBal" runat="server" ReadOnly="True"></asp:TextBox></td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label3" runat="server" Text="Credited RFID No :-"></asp:Label></td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="false" AutoPostBack="True" 
            ontextchanged="TextBox1_TextChanged"></asp:TextBox></td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label4" runat="server" Text=" Amount :-"></asp:Label></td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="false"></asp:TextBox></td>

</tr>
<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Fund Transfer" Height="30px" 
        Width="120px" onclick="Button1_Click" />

</td>


</tr>
<tr>
<td colspan="2">
    <asp:Label ID="lblDisp" runat="server" Visible="false" Text="Label" ForeColor="Blue"></asp:Label>
</td>

</tr>

</table>


</ContentTemplate>


</asp:UpdatePanel>




</center>




</asp:Content>

