<%@ Page Title="" Language="C#" MasterPageFile="~/ParkingUser.master" AutoEventWireup="true" CodeFile="view_parking_transaction.aspx.cs" Inherits="view_parking_transaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="trans" runat="server">
    <ContentTemplate>
    <center>
    <h1><u>View Transaction</u></h1>
        <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Enter RFID NO:"></asp:Label><asp:TextBox
            ID="txtTag" runat="server" AutoPostBack="True" 
            ontextchanged="txtTag_TextChanged"></asp:TextBox>
        
        <asp:GridView ID="GridView1" Visible="false" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3"  GridLines="Vertical" 
            Height="182px" Width="797px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="urfid" HeaderText="User RFID" SortExpression="urfid" />
                <asp:BoundField DataField="vname" HeaderText="Vehicle Name" SortExpression="vname" />
                <asp:BoundField DataField="vdesc" HeaderText="Vechile Description" SortExpression="vdesc" />
                <asp:BoundField DataField="chk_in_date" HeaderText="Check-In Date" 
                    SortExpression="chk_in_date" />
                <asp:BoundField DataField="chk_in_time" HeaderText="Check-In Time" 
                    SortExpression="chk_in_time" />
                <asp:BoundField DataField="chk_out_time" HeaderText="Check-Out Time" 
                    SortExpression="chk_out_time" />
                <asp:BoundField DataField="chk_out_date" HeaderText="Check-Out Date" 
                    SortExpression="chk_out_date" />
                <asp:BoundField DataField="total_fare" HeaderText="Total Fare" 
                    SortExpression="total_fare" />
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
    
    
    
    
    
       <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Student_Smart_CardConnectionString %>" 
            SelectCommand="SELECT * FROM [check_out]"></asp:SqlDataSource>--%>
    
    
    
    
    
    </center>
    
    
    
    

    </ContentTemplate>
    
    
    
    </asp:UpdatePanel>


</asp:Content>

