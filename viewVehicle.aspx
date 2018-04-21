<%@ Page Title="" Language="C#" MasterPageFile="~/ParkingUser.master" AutoEventWireup="true" CodeFile="viewVehicle.aspx.cs" Inherits="viewVehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="viewpnl" runat="server">
    <ContentTemplate>
    <center>
    <h1><u>View Register Vehicle</u></h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" 
            Height="110px" Width="500px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="vtype" HeaderText="Vehicle Type" SortExpression="vtype" />
                <asp:BoundField DataField="vname" HeaderText="Vehicle Name" SortExpression="vname" />
                <asp:BoundField DataField="uRFID" HeaderText="User RFID" SortExpression="uRFID" />
                <asp:BoundField DataField="vdesc" HeaderText="Vehicle Description" SortExpression="vdesc" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StudentSmartCard %>" 
            SelectCommand="SELECT * FROM [add_Vechicle]"></asp:SqlDataSource>
        </center>
    </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

