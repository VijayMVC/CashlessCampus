<%@ Page Title="" Language="C#" MasterPageFile="~/UserHome.master" AutoEventWireup="true" CodeFile="userTrans.aspx.cs" Inherits="userTrans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h1><u>View User Transaction</u></h1>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Vertical" AutoGenerateColumns="false" Height="114px" 
        Width="632px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
         <Columns>
                <asp:BoundField DataField="frfid" HeaderText="User RFID No" SortExpression="rfid" />
                <asp:BoundField DataField="famount" HeaderText="Amount" SortExpression="bname" />
                <asp:BoundField DataField="trfid" HeaderText="Other User RFID" SortExpression="aname" />
                <asp:BoundField DataField="fa" HeaderText="Fund Transfer" SortExpression="price" />
                <asp:BoundField DataField="uname" HeaderText="User Name" SortExpression="fpd" />
                <asp:BoundField DataField="rdate" HeaderText="Transfer Date" SortExpression="idate" />
              
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


</center>



</asp:Content>

