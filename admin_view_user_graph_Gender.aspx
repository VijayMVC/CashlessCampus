<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="admin_view_user_graph_Gender.aspx.cs" Inherits="admin_view_user_graph" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="view" runat="server">
    <ContentTemplate>
    <center>
    <h1><u>View User Graph</u></h1>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
            <Series>
                <asp:Series Name="Series1" XValueMember="gender" YValueMembers="Expr1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StudentSmartCard %>" 
            SelectCommand="SELECT gender, COUNT(gender) AS Expr1 FROM [registration] GROUP BY gender"></asp:SqlDataSource>
   </center>
    </ContentTemplate>
    
    
    
    </asp:UpdatePanel>

</asp:Content>

