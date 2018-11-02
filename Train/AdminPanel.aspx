<%@ Page Language="C#" MasterPageFile="~/BaseMasterPage.master" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="AdminPanel" Title="کنترل پنل مدیر" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 1189px;
        }
        .style8
        {
            width: 1615px;
            height: 995px;
        }
        .style5
        {
            width: 100%;
        }
        .style9
        {
            height: 30px;
        }
        .style10
        {
            width: 1785px;
            height: 995px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
           
                
                   
                        <table class="style3" style="height: 500px">
                            <tr>
                                <td class="style10">
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                        DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                                        EmptyDataText="هیج بلیطی وجود ندارد" ForeColor="#333333" 
                                        GridLines="None" Visible="False">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                                ShowSelectButton="True" />
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
                                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                        DataKeyNames="Username" DataSourceID="SqlDataSource2" 
                                        EmptyDataText="کاربری وجود ندارد" ForeColor="#333333" 
                                        GridLines="None" Visible="False">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                                ShowSelectButton="True" />
                                            <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" 
                                                SortExpression="Username" />
                                            <asp:BoundField DataField="Password" HeaderText="Password" 
                                                SortExpression="Password" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                            <asp:BoundField DataField="Family" HeaderText="Family" 
                                                SortExpression="Family" />
                                            <asp:BoundField DataField="BrithdayYear" HeaderText="BrithdayYear" 
                                                SortExpression="BrithdayYear" />
                                            <asp:BoundField DataField="BrithdayMonth" HeaderText="BrithdayMonth" 
                                                SortExpression="BrithdayMonth" />
                                            <asp:BoundField DataField="BrithdayDay" HeaderText="BrithdayDay" 
                                                SortExpression="BrithdayDay" />
                                            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="Country" HeaderText="Country" 
                                                SortExpression="Country" />
                                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" 
                                                SortExpression="PostalCode" />
                                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                                SortExpression="Address" />
                                            <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" 
                                                SortExpression="MobileNumber" />
                                            <asp:BoundField DataField="OfficeNumber" HeaderText="OfficeNumber" 
                                                SortExpression="OfficeNumber" />
                                            <asp:BoundField DataField="SecurityQuestion1" HeaderText="SecurityQuestion1" 
                                                SortExpression="SecurityQuestion1" />
                                            <asp:BoundField DataField="Answer1" HeaderText="Answer1" 
                                                SortExpression="Answer1" />
                                            <asp:BoundField DataField="AlternateEmail" HeaderText="AlternateEmail" 
                                                SortExpression="AlternateEmail" />
                                            <asp:BoundField DataField="IsAdmin" HeaderText="IsAdmin" 
                                                SortExpression="IsAdmin" />
                                        </Columns>
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:DataBaseConnectionString1 %>" 
                                        DeleteCommand="DELETE FROM [Users] WHERE [Username] = @Username" 
                                        InsertCommand="INSERT INTO [Users] ([Username], [Password], [Name], [Family], [BrithdayYear], [BrithdayMonth], [BrithdayDay], [Sex], [Email], [Country], [City], [PostalCode], [Address], [MobileNumber], [OfficeNumber], [SecurityQuestion1], [Answer1], [AlternateEmail], [IsAdmin]) VALUES (@Username, @Password, @Name, @Family, @BrithdayYear, @BrithdayMonth, @BrithdayDay, @Sex, @Email, @Country, @City, @PostalCode, @Address, @MobileNumber, @OfficeNumber, @SecurityQuestion1, @Answer1, @AlternateEmail, @IsAdmin)" 
                                        ProviderName="<%$ ConnectionStrings:DataBaseConnectionString1.ProviderName %>" 
                                        SelectCommand="SELECT [Username], [Password], [Name], [Family], [BrithdayYear], [BrithdayMonth], [BrithdayDay], [Sex], [Email], [Country], [City], [PostalCode], [Address], [MobileNumber], [OfficeNumber], [SecurityQuestion1], [Answer1], [AlternateEmail], [IsAdmin] FROM [Users]" 
                                        
                                        
                                        UpdateCommand="UPDATE [Users] SET [Password] = @Password, [Name] = @Name, [Family] = @Family, [BrithdayYear] = @BrithdayYear, [BrithdayMonth] = @BrithdayMonth, [BrithdayDay] = @BrithdayDay, [Sex] = @Sex, [Email] = @Email, [Country] = @Country, [City] = @City, [PostalCode] = @PostalCode, [Address] = @Address, [MobileNumber] = @MobileNumber, [OfficeNumber] = @OfficeNumber, [SecurityQuestion1] = @SecurityQuestion1, [Answer1] = @Answer1, [AlternateEmail] = @AlternateEmail, [IsAdmin] = @IsAdmin WHERE [Username] = @Username">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Username" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Username" Type="String" />
                                            <asp:Parameter Name="Password" Type="String" />
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Family" Type="String" />
                                            <asp:Parameter Name="BrithdayYear" Type="String" />
                                            <asp:Parameter Name="BrithdayMonth" Type="String" />
                                            <asp:Parameter Name="BrithdayDay" Type="String" />
                                            <asp:Parameter Name="Sex" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="Country" Type="String" />
                                            <asp:Parameter Name="City" Type="String" />
                                            <asp:Parameter Name="PostalCode" Type="String" />
                                            <asp:Parameter Name="Address" Type="String" />
                                            <asp:Parameter Name="MobileNumber" Type="String" />
                                            <asp:Parameter Name="OfficeNumber" Type="String" />
                                            <asp:Parameter Name="SecurityQuestion1" Type="String" />
                                            <asp:Parameter Name="Answer1" Type="String" />
                                            <asp:Parameter Name="AlternateEmail" Type="String" />
                                            <asp:Parameter Name="IsAdmin" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Password" Type="String" />
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Family" Type="String" />
                                            <asp:Parameter Name="BrithdayYear" Type="String" />
                                            <asp:Parameter Name="BrithdayMonth" Type="String" />
                                            <asp:Parameter Name="BrithdayDay" Type="String" />
                                            <asp:Parameter Name="Sex" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="Country" Type="String" />
                                            <asp:Parameter Name="City" Type="String" />
                                            <asp:Parameter Name="PostalCode" Type="String" />
                                            <asp:Parameter Name="Address" Type="String" />
                                            <asp:Parameter Name="MobileNumber" Type="String" />
                                            <asp:Parameter Name="OfficeNumber" Type="String" />
                                            <asp:Parameter Name="SecurityQuestion1" Type="String" />
                                            <asp:Parameter Name="Answer1" Type="String" />
                                            <asp:Parameter Name="AlternateEmail" Type="String" />
                                            <asp:Parameter Name="IsAdmin" Type="Int32" />
                                            <asp:Parameter Name="Username" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                        DataKeyNames="ID" DataSourceID="SqlDataSource3" 
                                        EmptyDataText="پیامی وجود ندارد" ForeColor="#333333" 
                                        GridLines="None" Visible="False">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                                ShowSelectButton="True" />
                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                SortExpression="ID" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                            <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
                                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                            <asp:BoundField DataField="Answer" HeaderText="Answer" 
                                                SortExpression="Answer" />
                                            <asp:BoundField DataField="Username" HeaderText="Username" 
                                                SortExpression="Username" />
                                        </Columns>
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    </asp:GridView>
                                    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
                                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                                        DataKeyNames="ID" DataSourceID="SqlDataSource4" 
                                        EmptyDataText="هیچ خریدی صورت نگرفته است" ForeColor="#333333" GridLines="None" 
                                        Visible="False">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                                ShowSelectButton="True" />
                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                                SortExpression="ID" />
                                            <asp:BoundField DataField="Username" HeaderText="Username" 
                                                SortExpression="Username" />
                                            <asp:BoundField DataField="TicketCode" HeaderText="TicketCode" 
                                                SortExpression="TicketCode" />
                                            <asp:BoundField DataField="DateofBuy" HeaderText="DateofBuy" 
                                                SortExpression="DateofBuy" />
                                        </Columns>
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:DataBaseConnectionString1 %>" 
                                        DeleteCommand="DELETE FROM [Buy] WHERE [ID] = @ID" 
                                        InsertCommand="INSERT INTO [Buy] ([Username], [TicketCode], [DateofBuy]) VALUES (@Username, @TicketCode, @DateofBuy)" 
                                        ProviderName="<%$ ConnectionStrings:DataBaseConnectionString1.ProviderName %>" 
                                        SelectCommand="SELECT [ID], [Username], [TicketCode], [DateofBuy] FROM [Buy]" 
                                        UpdateCommand="UPDATE [Buy] SET [Username] = @Username, [TicketCode] = @TicketCode, [DateofBuy] = @DateofBuy WHERE [ID] = @ID">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ID" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Username" Type="String" />
                                            <asp:Parameter Name="TicketCode" Type="Int32" />
                                            <asp:Parameter Name="DateofBuy" Type="DateTime" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Username" Type="String" />
                                            <asp:Parameter Name="TicketCode" Type="Int32" />
                                            <asp:Parameter Name="DateofBuy" Type="DateTime" />
                                            <asp:Parameter Name="ID" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:DataBaseConnectionString1 %>" 
                                        DeleteCommand="DELETE FROM [Vote] WHERE [ID] = @ID" 
                                        InsertCommand="INSERT INTO [Vote] ([Name], [email], [Title], [Text], [Date], [Answer], [Username]) VALUES (@Name, @email, @Title, @Text, @Date, @Answer, @Username)" 
                                        ProviderName="<%$ ConnectionStrings:DataBaseConnectionString1.ProviderName %>" 
                                        SelectCommand="SELECT [ID], [Name], [email], [Title], [Text], [Date], [Answer], [Username] FROM [Vote]" 
                                        
                                        
                                        UpdateCommand="UPDATE [Vote] SET [Name] = @Name, [email] = @email, [Title] = @Title, [Text] = @Text, [Date] = @Date, [Answer] = @Answer, [Username] = @Username WHERE [ID] = @ID">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ID" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="email" Type="String" />
                                            <asp:Parameter Name="Title" Type="String" />
                                            <asp:Parameter Name="Text" Type="String" />
                                            <asp:Parameter Name="Date" Type="DateTime" />
                                            <asp:Parameter Name="Answer" Type="String" />
                                            <asp:Parameter Name="Username" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="email" Type="String" />
                                            <asp:Parameter Name="Title" Type="String" />
                                            <asp:Parameter Name="Text" Type="String" />
                                            <asp:Parameter Name="Date" Type="DateTime" />
                                            <asp:Parameter Name="Answer" Type="String" />
                                            <asp:Parameter Name="Username" Type="String" />
                                            <asp:Parameter Name="ID" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:DataBaseConnectionString1 %>" 
                                        DeleteCommand="DELETE FROM [TicketTravels] WHERE [ID] = @ID" 
                                        InsertCommand="INSERT INTO [TicketTravels] ([ID], [Source], [Destination], [YekSare], [Model], [Price]) VALUES (@ID, @Source, @Destination, @YekSare, @Model, @Price)" 
                                        ProviderName="<%$ ConnectionStrings:DataBaseConnectionString1.ProviderName %>" 
                                        SelectCommand="SELECT [ID], [Source], [Destination], [YekSare], [Model], [Price] FROM [TicketTravels]" 
                                        
                                        
                                        UpdateCommand="UPDATE [TicketTravels] SET [Source] = @Source, [Destination] = @Destination, [YekSare] = @YekSare, [Model] = @Model, [Price] = @Price WHERE [ID] = @ID">
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
                                    <table ID="TableGhatar" class="style5">
                                        <tr>
                                            <td dir="ltr" style="color: #FFFFFF">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorID" runat="server" 
                                                    ControlToValidate="TxtID" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="TxtID" runat="server" ValidationGroup="1" Visible="False" 
                                                    Width="80px"></asp:TextBox>
                                                <asp:Label ID="LblID" runat="server" Text="کد" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td dir="ltr" style="color: #FFFFFF">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSource" runat="server" 
                                                    ControlToValidate="TxtSource" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="TxtSource" runat="server" ValidationGroup="1" Visible="False" 
                                                    Width="80px"></asp:TextBox>
                                                <asp:Label ID="LblSource" runat="server" Text="مبدا" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td dir="ltr" style="color: #FFFFFF">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDestination" 
                                                    runat="server" ControlToValidate="TxtDestination" ErrorMessage="*" 
                                                    ValidationGroup="1"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="TxtDestination" runat="server" ValidationGroup="1" 
                                                    Visible="False" Width="80px"></asp:TextBox>
                                                <asp:Label ID="LblDestination" runat="server" Text="مقصد" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td dir="ltr" style="color: #FFFFFF">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorYekSare" runat="server" 
                                                    ControlToValidate="TxtYekSare" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="TxtYekSare" runat="server" ValidationGroup="1" Visible="False" 
                                                    Width="80px"></asp:TextBox>
                                                <asp:Label ID="LblYekSare" runat="server" Text="یک سره-دو سره" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td dir="ltr" style="color: #FFFFFF">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorModel" runat="server" 
                                                    ControlToValidate="TxtModel" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="TxtModel" runat="server" ValidationGroup="1" Visible="False" 
                                                    Width="80px"></asp:TextBox>
                                                <asp:Label ID="LblModel" runat="server" Text="نوع قطار" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td dir="ltr" style="color: #FFFFFF">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrice" runat="server" 
                                                    ControlToValidate="TxtPrice" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                                                <asp:TextBox ID="TxtPrice" runat="server" ValidationGroup="1" Visible="False" 
                                                    Width="80px"></asp:TextBox>
                                                <asp:Label ID="LblPrice" runat="server" Text="قیمت" Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td dir="ltr" style="color: #FFFFFF" class="style9">
                                                <asp:Button ID="BtnAdd" runat="server" Text="اضافه کردن" ValidationGroup="1" 
                                                    Visible="False" Width="80px" onclick="BtnAdd_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="style8" align="right">
                                    <asp:Button ID="BtnUsers" runat="server" onclick="BtnUsers_Click" 
                                        Text="اطلاعات کاربران" Width="100px" />
                                    <br />
                                    <br />
                                    <asp:Button ID="BtnMessag" runat="server" onclick="BtnMessag_Click" 
                                        Text="پیامهای کاربران" Width="100px" />
                                    <br />
                                    <br />
                                    <asp:Button ID="BtnProduct" runat="server" onclick="BtnProduct_Click" 
                                        Text="اطلاعات قطارها" Width="100px" />
                                    <br />
                                    <br />
                                    <asp:Button ID="BtnBuyinfo" runat="server" onclick="BtnBuyinfo_Click" 
                                        Text="اطلاعات خرید" Width="100px" />
                                    <br />
                                    <br />
                                    <asp:Button ID="BtnExit" runat="server" onclick="BtnExit_Click" Text="خروج" 
                                        Width="100px" />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                  
                    <td align="right" dir="rtl" class="style7">
                        <br />
                        <br />
                        <br />
                        <br />
                      
                    </td>
               
           
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="BtnUsers" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

