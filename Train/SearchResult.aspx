<%@ Page Language="C#" MasterPageFile="~/BaseMasterPage.master" AutoEventWireup="true" CodeFile="SearchResult.aspx.cs" Inherits="SearchResult" Title="نتایج جستجو" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 361px;
        }
        .style6
        {
            color: #FFFFFF;
            font-size: large;
            height: 37px;
        }
    .style18
    {
        color: #FFFFFF;
    }
        .style20
        {
            font-size: medium;
        }
        .style21
        {
            color: #FF0000;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style4">
        <tr>
            <td align="center" class="style21" colspan="2" dir="rtl">
                جستجو</td>
        </tr>
        <tr>
            <td align="center" class="style6" colspan="2" dir="rtl">
                مبدا:<span class="style18"><span class="style20"><asp:DropDownList 
                                ID="DropDownListSource" runat="server" ValidationGroup="2">
                                <asp:ListItem>تهران</asp:ListItem>
                                <asp:ListItem>خرمشهر</asp:ListItem>
                                <asp:ListItem>مشهد</asp:ListItem>
                            </asp:DropDownList>
&nbsp;&nbsp;&nbsp; مقصد:<asp:DropDownList ID="DropDownListDestination" runat="server" ValidationGroup="2">
                                <asp:ListItem>تهران</asp:ListItem>
                                <asp:ListItem Selected="True">مشهد</asp:ListItem>
                                <asp:ListItem>خرمشهر</asp:ListItem>
                            </asp:DropDownList>
&nbsp;&nbsp;&nbsp; نوغ قطار:<asp:DropDownList ID="DropDownListDegree" runat="server" ValidationGroup="2">
                                <asp:ListItem>درجه 1</asp:ListItem>
                                <asp:ListItem>قطار سبز</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownListYekSare" runat="server" ValidationGroup="2">
                                <asp:ListItem>یک سره</asp:ListItem>
                                <asp:ListItem>دو سره</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Button ID="BtnSearch" runat="server" onclick="BtnSearch_Click" 
                                Text="جستجو" />
                            </span></span>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server" RenderMode="Inline" 
                    UpdateMode="Conditional">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="BtnSearch" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display." ForeColor="#333333" 
                    GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                            SortExpression="ID" />
                        <asp:BoundField DataField="Source" HeaderText="Source" 
                            SortExpression="Source" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" 
                            SortExpression="Destination" />
                        <asp:BoundField DataField="YekSare" HeaderText="YekSare" 
                            SortExpression="YekSare" />
                        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
                    DeleteCommand="DELETE FROM [TicketTravels] WHERE [ID] = @ID" 
                    InsertCommand="INSERT INTO [TicketTravels] ([ID], [Source], [Destination], [YekSare], [Model], [Price]) VALUES (@ID, @Source, @Destination, @YekSare, @Model, @Price)" 
                    ProviderName="<%$ ConnectionStrings:DataBaseConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [ID], [Source], [Destination], [YekSare], [Model], [Price] FROM [TicketTravels] WHERE (([Destination] = @Destination) AND ([Model] = @Model) AND ([Source] = @Source) AND ([YekSare] = @YekSare)) ORDER BY [ID]" 
                    UpdateCommand="UPDATE [TicketTravels] SET [Source] = @Source, [Destination] = @Destination, [YekSare] = @YekSare, [Model] = @Model, [Price] = @Price WHERE [ID] = @ID">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Destination" QueryStringField="Destination" 
                            Type="String" />
                        <asp:QueryStringParameter Name="Model" QueryStringField="Model" Type="String" />
                        <asp:QueryStringParameter Name="Source" QueryStringField="Source" 
                            Type="String" />
                        <asp:QueryStringParameter Name="YekSare" QueryStringField="YekSare" 
                            Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                        <asp:Parameter Name="Source" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="YekSare" Type="String" />
                        <asp:Parameter Name="Model" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Source" Type="String" />
                        <asp:Parameter Name="Destination" Type="String" />
                        <asp:Parameter Name="YekSare" Type="String" />
                        <asp:Parameter Name="Model" Type="String" />
                        <asp:Parameter Name="Price" Type="Decimal" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="style5">
                <asp:Button ID="BtnBack" runat="server" onclick="BtnBack_Click" Text="بازگشت" />
            </td>
            <td align="center">
                <asp:Button ID="BtnBuy" runat="server" Text="خرید" onclick="BtnBuy_Click" />
                <asp:TextBox ID="TxtCode" runat="server"></asp:TextBox>
                <asp:Label ID="LblCode" runat="server" ForeColor="White" Text="کد بلیط"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

