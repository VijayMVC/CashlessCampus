<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryUser.master" AutoEventWireup="true" CodeFile="viewTrans.aspx.cs" Inherits="viewTrans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <center>
    <h1><u> View Library Transaction </u></h1>
    <asp:UpdatePanel ID="uppnl" runat="server">
    <ContentTemplate>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" 
            Height="155px" Width="726px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="rfid" HeaderText="User RFID No" SortExpression="rfid" />
                <asp:BoundField DataField="bname" HeaderText="Book Name" SortExpression="bname" />
                <asp:BoundField DataField="aname" HeaderText="Author Name" SortExpression="aname" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                <asp:BoundField DataField="fpd" HeaderText="Fine Per Day" SortExpression="fpd" />
                <asp:BoundField DataField="idate" HeaderText="Issue Date" SortExpression="idate" />
                <asp:BoundField DataField="totalFine" HeaderText="Total Fine" 
                    SortExpression="totalFine" />
                <asp:BoundField DataField="return_date" HeaderText="Return Date" 
                    SortExpression="return_date" />
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
            SelectCommand="SELECT * FROM [Return_Book]"></asp:SqlDataSource>
    
    
    
    
    </ContentTemplate>
    
    
    
    
    </asp:UpdatePanel>



    </center>


</asp:Content>

