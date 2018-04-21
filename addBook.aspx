<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryUser.master" AutoEventWireup="true" CodeFile="addBook.aspx.cs" Inherits="addBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<center>
<h1><u>Register Book Details</u></h1>
<asp:UpdatePanel ID="regPnl" runat="server">
<ContentTemplate>



<table cellspacing="2">
<tr>
<td colspan="2" align="center">

    <asp:Label ID="lblDisp" runat="server" ForeColor="Blue" Text="" ></asp:Label>
</td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="Book Name :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

    </td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label2" runat="server" Text="Author Name :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>

    </td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label3" runat="server" Text="Price :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>

    </td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label4" runat="server" Text="Fine Per Day :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtFine" runat="server"></asp:TextBox>

    </td>

</tr>

<tr>
<td colspan="2" align="center">
    <asp:Button ID="Button1" runat="server" Text="Register Book" 
        onclick="Button1_Click" Height="30px" Width="130px" />


</td>



</tr>



</table>
</ContentTemplate>


</asp:UpdatePanel>

</center>
</asp:Content>

