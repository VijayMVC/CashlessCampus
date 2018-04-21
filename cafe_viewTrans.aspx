<%@ Page Title="" Language="C#" MasterPageFile="~/CafeUser.master" AutoEventWireup="true" CodeFile="cafe_viewTrans.aspx.cs" Inherits="cafe_viewTrans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="viewpnl" runat="server">
    <ContentTemplate>
    
    <center>
    <h1><u>Cafe View Transaction</u></h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" 
            Height="119px" Width="391px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="user_RFID" HeaderText="USER RFID" 
                    SortExpression="user_RFID" />
                <asp:BoundField DataField="item_list" HeaderText="ITEM LIST" 
                    SortExpression="item_list" />
                <asp:BoundField DataField="total_price" HeaderText="TOTAL PRICE" 
                    SortExpression="total_price" />
                <asp:BoundField DataField="odate" HeaderText="ORDER DATE" SortExpression="odate" />
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
            SelectCommand="SELECT * FROM [Cafe_order]"></asp:SqlDataSource>
    
    
    
    
    
    
    </center>
    
    
    
    
    
    
    </ContentTemplate>
    
    

    </asp:UpdatePanel>



</asp:Content>

