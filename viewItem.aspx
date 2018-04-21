<%@ Page Title="" Language="C#" MasterPageFile="~/CafeUser.master" AutoEventWireup="true" CodeFile="viewItem.aspx.cs" Inherits="viewItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="viewpnl" runat="server">
    <ContentTemplate>
    <center>
    <h1><u>View Items</u></h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" 
            Height="101px" Width="363px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="item_id" HeaderText="Item ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="item_id" />
                <asp:BoundField DataField="item_name" HeaderText="Item Name" 
                    SortExpression="item_name" />
                <asp:BoundField DataField="item_size" HeaderText="Item Size" 
                    SortExpression="item_size" />
                <asp:BoundField DataField="item_price" HeaderText="Item Price" 
                    SortExpression="item_price" />
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
            SelectCommand="SELECT * FROM [Add_Item]"></asp:SqlDataSource>
    </center>
    </ContentTemplate>
    
    
    </asp:UpdatePanel>



</asp:Content>

