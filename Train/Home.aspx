<%@ Page Language="C#" MasterPageFile="~/BaseMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="خانه" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 1000px;
            float: left;
            height: 130px;
            margin-left: 0px;
        }
        .style5
        {
            width: 1372px;
        }
        .style6
        {
            height: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style4">
        <tr>
            <td align="center" class="style5" dir="ltr" rowspan="5">
                <asp:GridView ID="GridViewVote" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                    EmptyDataText="پیامی ارسال نشده است" ForeColor="#333333" GridLines="None" 
                    Visible="False" Width="999px">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="نام کاربری" 
                            SortExpression="Username" />
                        <asp:BoundField DataField="Date" HeaderText="تاریخ ارسال پیام" 
                            SortExpression="Date" />
                        <asp:BoundField DataField="Title" HeaderText="موضوع" SortExpression="Title" />
                        <asp:BoundField DataField="Text" HeaderText="متن" SortExpression="Text" />
                        <asp:BoundField DataField="Answer" HeaderText="پاسخ" SortExpression="Answer" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DataBaseConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:DataBaseConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [Title], [Text], [Date], [Answer], [Username] FROM [Vote] WHERE ([Username] = @Username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Username" SessionField="username" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td align="right" dir="rtl">
                <asp:Button ID="BtnBuy" runat="server" onclick="BtnBuy_Click" Text="خرید بلیط" 
                    Width="80px" />
            </td>
        </tr>
        <tr>
            <td align="right" dir="rtl">
                <asp:Button ID="BtnChangePassword" runat="server" 
                    onclick="BtnChangePassword_Click" Text="تغییر رمز ورود" Width="80px" />
            </td>
        </tr>
        <tr>
            <td align="right" dir="rtl">
                <asp:Button ID="BtnSendMessage" runat="server" onclick="BtnSendMessage_Click" 
                    Text="تماس با ما" Width="80px" />
            </td>
        </tr>
        <tr>
            <td align="right" dir="rtl">
                <asp:Button ID="BtnMessages" runat="server" onclick="BtnMessages_Click" 
                    Text="پیام ها" Width="80px" />
            </td>
        </tr>
        <tr>
            <td align="right" dir="rtl" class="style6">
                <asp:Button ID="BtnExit" runat="server" onclick="BtnExit_Click" 
                    style="height: 26px" Text="خروج" Width="80px" />
            </td>
        </tr>
    </table>
</asp:Content>

