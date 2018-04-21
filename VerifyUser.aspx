<%@ Page Title="" Language="C#" MasterPageFile="~/LibraryUser.master" AutoEventWireup="true" CodeFile="VerifyUser.aspx.cs" Inherits="viewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="uppnl" runat="server">
    <ContentTemplate>
    
   
    <center>
<h1><u>Registration Details</u></h1>
        <asp:Label ID="lbldisp" ForeColor="Red" runat="server" Text="Label" Visible="false"></asp:Label> <br />
        <asp:Label ID="Label1" runat="server" Text="Enter RFID NO:" ForeColor="Black"></asp:Label><asp:TextBox
            ID="txtRFID" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server"
                Text="View Details" onclick="Button1_Click1" />



       <table>
       <tr>
       <td align="right">
       <asp:Image ID="Image1" runat="server" Height="280px" Width="180px" 
               Visible="False" /><br />
     
       
       </td>
       <td>
       
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="340px" 
        AutoGenerateRows="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataSourceID="SqlDataSource1" GridLines="Vertical" Visible="False">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="userID" HeaderText="User ID" 
                SortExpression="userID" />
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
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="postalCode" HeaderText="Postal Code" 
                SortExpression="postalCode" />
            <asp:BoundField DataField="country" HeaderText="Country" 
                SortExpression="country" />
            <asp:BoundField DataField="phoneno" HeaderText="Phone No" 
                SortExpression="phoneno" />
            <asp:BoundField DataField="rdateTime" HeaderText="Registration Date" SortExpression="rdateTime" />
            <asp:BoundField DataField="utype" HeaderText="User Type" SortExpression="utype" />
            <asp:BoundField DataField="RFID" HeaderText="RFID" SortExpression="RFID" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:StudentSmartCard %>" 
        SelectCommand="SELECT [userID], [emailID], [fname], [lname], [gender], [fatherName], [dob], [address], [city], [state], [postalCode], [country], [phoneno], [rdateTime],[utype],[RFID] FROM [registration] WHERE ([emailID] = @emailID)">
        <SelectParameters>
            <asp:SessionParameter Name="emailID" SessionField="emailID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
       
       </td>
       
       </tr>
       
       </table>
       
        
   


</center>
 </ContentTemplate>
    
    </asp:UpdatePanel>
</asp:Content>

