<%@ Page Title="" Language="C#" MasterPageFile="~/ParkingUser.master" AutoEventWireup="true" CodeFile="addVehicle.aspx.cs" Inherits="addVehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="addVech" runat="server">
    <ContentTemplate>
    <center>
    <h1><u>Add Vehicle Module</u></h1>
    <table>
    <tr>
        <asp:Label ID="lbldisp" ForeColor="Red" runat="server" Text=""></asp:Label>
    </tr>
    <tr>
    <td align="right">
        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Vehicle Type :"></asp:Label></td>
    
    <td>
        <asp:DropDownList ID="drpType" runat="server">
        <asp:ListItem Text="Bicycle" Value="Bicycle"></asp:ListItem>
        <asp:ListItem Text="MotorCycle" Value="MotorCycle"></asp:ListItem>
        <asp:ListItem Text="Car" Value="Car"></asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
     <tr>
    <td align="right">
        <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Vehicle Name :"></asp:Label></td>
    
    <td>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="right">
        <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="RFID No :"></asp:Label></td>
    
    <td>
        <asp:TextBox ID="txtTag" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="right">
        <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Vehicle Description :"></asp:Label></td>
    
    <td>
        <asp:TextBox ID="txtDesc" TextMode="MultiLine" runat="server" Height="72px" 
            Width="196px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td colspan="2" align="center">
    
        <asp:Button ID="btnAdd" runat="server" Text="Register Vehicle" Height="30px" 
            Width="120px" onclick="btnAdd_Click" />
    </td>
    
    </tr>
    </table>
    
    </center>

    </ContentTemplate>
    
    
    </asp:UpdatePanel>

</asp:Content>

