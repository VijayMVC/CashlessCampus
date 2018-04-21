<%@ Page Title="" Language="C#" MasterPageFile="~/ParkingUser.master" AutoEventWireup="true" CodeFile="Chcek_Out.aspx.cs" Inherits="Chcek_IN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="pnlcheck_in" runat="server">
    <ContentTemplate>
    <center>
    <h1><u>Check Out Details</u></h1>
    <table>
    <tr>
        <asp:Label ID="lbldisp" ForeColor="Red" runat="server" Text=""></asp:Label>
    </tr>
    <tr>
    <td align="right">
        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="RFID No:"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtTag" runat="server" AutoPostBack="True" 
            ontextchanged="txtTag_TextChanged"></asp:TextBox></td>
    
    </tr>
     <tr>
    <td align="right">
        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Select Vehicle:"></asp:Label></td>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Text="----Select---" Value="Not Selected"></asp:ListItem>
        </asp:DropDownList>
        
        </td>
    
    </tr>
    <tr>
    <td align="right">
        <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Vehicle Description :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtDesc" runat="server" AutoPostBack="True" 
            TextMode="MultiLine" Height="80px" Width="249px"></asp:TextBox></td>
    
    </tr>
    <tr>
    <td align="right">
        <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Check-In Date :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtCheckIn" runat="server" 
            TextMode="SingleLine" ></asp:TextBox></td>
    
    </tr>
     <tr>
    <td align="right">
        <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Check-In Time :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtTime" runat="server" 
            TextMode="SingleLine" ></asp:TextBox></td>
    
    </tr>
      <tr>
    <td align="right">
        <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Check-Out Time :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtOut" runat="server" 
            TextMode="SingleLine" ></asp:TextBox></td>
    
    </tr>
     <tr>
    <td align="right">
        <asp:Label ID="Label5" runat="server" ForeColor="Black" Text="Total Hours :"></asp:Label></td>
    <td>
        <asp:TextBox ID="txtTimeDiff" runat="server" 
            TextMode="SingleLine" ></asp:TextBox></td>
    
    </tr>
    <tr>
    <td colspan="2" align="center">
    
        <asp:Button ID="Button1" runat="server" Text="Check Out" Height="30px" 
            Width="130px" onclick="Button1_Click" />
    </td>
    
    </tr>
    
    </table>
    
    
    
    </center>
    
    
    
    
    
    </ContentTemplate>
    
    
    
    
    </asp:UpdatePanel>




</asp:Content>

