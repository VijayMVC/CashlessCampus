<%@ Page Title="" Language="C#" MasterPageFile="~/CafeUser.master" AutoEventWireup="true" CodeFile="cafe1_VerifyUser.aspx.cs" Inherits="viewProfile" %>

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
            ID="txtRFID" runat="server" AutoPostBack="True" 
            ontextchanged="txtRFID_TextChanged"></asp:TextBox>



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
         GridLines="Vertical" Visible="False">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
             <asp:TemplateField HeaderText="User ID">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("userID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email ID">
                <ItemTemplate>
                    <asp:Label ID="lblemail" runat="server" Text='<%# Eval("emailID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="First Name">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <ItemTemplate>
                    <asp:Label ID="Label51" runat="server"  Text='<%# Eval("gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Father Name">
                <ItemTemplate>
                    <asp:Label ID="lblfather" runat="server"  Text='<%# Eval("fathername") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DOB">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Address">
                <ItemTemplate>
                    <asp:Label ID="lbladd" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="City">
                <ItemTemplate>
                    <asp:Label ID="lblcity" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="State">
                <ItemTemplate>
                    <asp:Label ID="lblstate" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Postal Code">
                <ItemTemplate>
                    <asp:Label ID="lblpostal" runat="server" Text='<%# Eval("postalCode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone No">
               
                <ItemTemplate>
                    <asp:Label ID="Label91" runat="server" Text='<%# Eval("phoneno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Country">
               
                <ItemTemplate>
                    <asp:Label ID="lblcon" runat="server" Text='<%# Eval("country") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="RFID">
               
                <ItemTemplate>
                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("RFID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>


    
       
       </td>
       
       </tr>
       
       </table>
       
        
   


</center>
 </ContentTemplate>
    
    </asp:UpdatePanel>
</asp:Content>

