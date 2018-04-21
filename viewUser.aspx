<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="viewUser.aspx.cs" Inherits="viewDonar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="uppnl" runat="server">
    <ContentTemplate>
   
<center>

<div style="overflow:auto;width:900px;">

</div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
         GridLines="Vertical" DataKeyNames="userID" 
        onrowdeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
        <asp:BoundField DataField="userID" HeaderText="User ID" 
                SortExpression="userID" />
        <asp:TemplateField HeaderText="Image" SortExpression="image">
        <ItemTemplate><asp:Image ID="userImage"   runat="server" ImageAlign="Left" ImageUrl='<%# Bind("uimage") %>'  Height="150px" Width="170px" /></ItemTemplate>
            </asp:TemplateField>
            
            <asp:BoundField DataField="emailID" HeaderText="Email ID" 
                SortExpression="emailID" />
            <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
            <asp:BoundField DataField="gender" HeaderText="Gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="fatherName" HeaderText="Father Name" 
                SortExpression="fatherName" />
            <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="phoneNo" HeaderText="Phone No." 
                SortExpression="phoneNo" />
            <asp:BoundField DataField="rdateTime" HeaderText="Registration Date" 
                SortExpression="rdateTime" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" 
                ShowHeader="True" />
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
        SelectCommand="SELECT [userID], [emailID], [fname], [lname], [gender], [fatherName], [dob], [address], [state], [phoneNo], [rdateTime] FROM [registration]">
    </asp:SqlDataSource>

</center>
</ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

