<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryUser.master" AutoEventWireup="true" CodeFile="ViewBook.aspx.cs" Inherits="ViewBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h1><u>Student View Book Details</u></h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" 
        Height="77px" Width="336px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="bname" HeaderText="Book Name" SortExpression="bname" />
            <asp:BoundField DataField="aname" HeaderText="Author Name" SortExpression="aname" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="fperday" HeaderText="Fine For Per Day" 
                SortExpression="fperday" />
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
        SelectCommand="SELECT * FROM [Book] ORDER BY [price]"></asp:SqlDataSource>
</center>



</asp:Content>

