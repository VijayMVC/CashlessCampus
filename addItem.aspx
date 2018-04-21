<%@ Page Title="" Language="C#" MasterPageFile="~/CafeUser.master" AutoEventWireup="true" CodeFile="addItem.aspx.cs" Inherits="addItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="addpnl" runat="server">
    <ContentTemplate>
    
   
    <center>
    <h1><u>Add Items</u></h1>
        <asp:Label ID="lblDisp" ForeColor="Red" runat="server" Text=""></asp:Label>
    <table>
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Item Name :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </td>
    
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Item Size :"></asp:Label></td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Text="Small" Value="Small"></asp:ListItem>
        <asp:ListItem Text="Medium" Value="Medium"></asp:ListItem>
        <asp:ListItem Text="Large" Value="Large"></asp:ListItem>
        <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
        </asp:DropDownList>
    </td>
    
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Item Price :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    </td>
    
    </tr>
    <tr>
   
    <td colspan="2" align="center">
        <asp:Button ID="Button1" runat="server" Text="Register Item" Height="30px" 
            Width="120px" onclick="Button1_Click" />
    </td>
    
    </tr>
    
    </table>

    </center>

     </ContentTemplate>
    
    </asp:UpdatePanel>


</asp:Content>

