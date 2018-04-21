<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryUser.master" AutoEventWireup="true" CodeFile="ReturnBook.aspx.cs" Inherits="ReturnBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <%--  <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    
<center>
<h1><u>User Book Return</u></h1>
<%--<asp:UpdatePanel ID="issuepnl" runat="server" UpdateMode="Always">
<ContentTemplate>--%>
<table cellspacing="4">
<tr>
<td colspan="2" align="center">

    <asp:Label ID="lblDisp" runat="server" ForeColor="Blue" Text="" ></asp:Label>
</td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label1" runat="server" Text="RFID No:"></asp:Label>
</td>
<td>
    <asp:TextBox ID="txtTag" runat="server" AutoPostBack="True" 
        ontextchanged="txtTag_TextChanged"></asp:TextBox>
</td>

</tr>
<tr>
<td>
    <asp:Label ID="Label2" runat="server" Text="Select Book :"></asp:Label>
</td>
<td>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged2" >
    </asp:DropDownList>
</td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label3" runat="server" Text="Book Name :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

    </td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label4" runat="server" Text="Author Name :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>

    </td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label5" runat="server" Text="Price :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>

    </td>

</tr>
<tr>
<td align="right">
    <asp:Label ID="Label6" runat="server" Text="Fine Per Day :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtFine" runat="server"></asp:TextBox>

    </td>

</tr>
<tr>
<td colspan="2" align="center">

    <asp:Button ID="Button1" runat="server" Text="Return Book" Height="30px" 
        Width="120px" onclick="Button1_Click" />
</td>


</tr>

</table>




<%--
</ContentTemplate>
</asp:UpdatePanel>--%>






</center>

</asp:Content>

