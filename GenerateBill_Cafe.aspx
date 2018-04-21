<%@ Page Title="" Language="C#" MasterPageFile="~/CafeUser.master" AutoEventWireup="true" CodeFile="GenerateBill_Cafe.aspx.cs" Inherits="GenerateBill_Cafe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="viewpnl" runat="server">
    <ContentTemplate>
    <center>
    <h1><u>Generate Bill</u></h1>
    <br />
        <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Text=""></asp:Label> <br />
        <asp:Label ID="lblItems" Visible="false" runat="server" Text=""></asp:Label>
    <table>
    <tr>
    <td align="right">
        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="RFID NO:"></asp:Label></td>

        <td>
            <asp:TextBox ID="txtTag" runat="server"></asp:TextBox></td>
    
    </tr>
     <tr>
    <td align="right">
        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Item Name:"></asp:Label></td>

        <td>
            <asp:DropDownList ID="drpItem" runat="server" AutoPostBack="True" 
                onselectedindexchanged="drpItem_SelectedIndexChanged">

            </asp:DropDownList>
            
            </td>
            <td>
            
            
                <asp:Button ID="Button1" runat="server" Height="30px" Width="120px" Text="Add Item" 
                    onclick="Button1_Click" /></td>
    
    </tr>
    <tr>
    <td align="right">
        <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Items Panel:"></asp:Label></td>

        <td>
            <asp:ListBox ID="ListBox1" runat="server" Height="190px" Width="263px"></asp:ListBox>
            
            </td>
     <td> 
         <asp:Button ID="Button2" runat="server" Height="30px" Width="120px" Text="Remove Item" onclick="Button2_Click" 
                     /></td>
    </tr>
    <tr>
    <td align="right">
        <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Item Size:"></asp:Label></td>

        <td>
            <asp:TextBox ID="txtSize" runat="server"></asp:TextBox></td>
    
    </tr>
    <tr>
    <td align="right">
        <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Price:"></asp:Label></td>

        <td>
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox></td>
    
    </tr>
    <tr>
    <td align="right">
        <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Total Price:"></asp:Label></td>

        <td>
            <asp:TextBox ID="txtTotal" runat="server" Text="0"></asp:TextBox></td>
    
    </tr>
    <tr>
    <td colspan="2" align="center">
    
        <asp:Button ID="Button3" runat="server" Text="Generate Bill" Height="30px" 
            Width="120px" onclick="Button3_Click" />
    </td>
    
    </tr>
    </table>  
       
    </center>
    
    
    
    
    
    
    
    
    
    </ContentTemplate>
    
    
    
    
    
    
    </asp:UpdatePanel>



</asp:Content>

