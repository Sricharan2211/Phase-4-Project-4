<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="WebAppRainbowSchoolAzure.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
        <tr>
           <td>
    <h2 class="text-center">Students</h2>
</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GDview" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="SId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="SId" HeaderText="SId" ReadOnly="True" SortExpression="SId" />
                        <asp:BoundField DataField="Sname" HeaderText="Sname" SortExpression="Sname" />
                        <asp:BoundField DataField="Smarks" HeaderText="Smarks" SortExpression="Smarks" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RainbowSchoolDbConnectionString %>" ProviderName="<%$ ConnectionStrings:RainbowSchoolDbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
