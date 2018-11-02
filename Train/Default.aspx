<%@ Page Language="C#" MasterPageFile="~/BaseMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Wellcome To Shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 501px;
        }
        .style5
        {
        }
        .style7
        {
            height: 23px;
        }
        .style9
        {
    }
        .style10
        {
            width: 1308px;
        }
        .style15
    {
        color: #0000FF;
        font-size: x-large;
        font-weight: bold;
        font-style: italic;
    }
    .style16
    {
        width: 100%;
    }
    .style17
    {
        color: #FF0000;
        font-size: xx-large;
    }
    .style18
    {
        color: #FFFFFF;
    }
        .style19
        {
            color: #FF0000;
            font-size: xx-large;
            height: 132px;
        }
        .style20
        {
            font-size: medium;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">


    <table class="style3" align="right">
        <tr>
            <td class="style10" rowspan="8" align="right">
                <table class="style16">
                    <tr>
                        <td align="right" class="style19" dir="rtl">
                            جستجو:<br />
                            <span class="style18"><span class="style20">مبدا:<asp:DropDownList 
                                ID="DropDownListSource" runat="server" ValidationGroup="2">
                                <asp:ListItem>تهران</asp:ListItem>
                                <asp:ListItem>خرمشهر</asp:ListItem>
                                <asp:ListItem>مشهد</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp; مقصد:<asp:DropDownList ID="DropDownListDestination" runat="server" ValidationGroup="2">
                                <asp:ListItem>تهران</asp:ListItem>
                                <asp:ListItem Selected="True">مشهد</asp:ListItem>
                                <asp:ListItem>خرمشهر</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp; نوع قطار:<asp:DropDownList ID="DropDownListDegree" runat="server" ValidationGroup="2">
                                <asp:ListItem>درجه 1</asp:ListItem>
                                <asp:ListItem>قطار سبز</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="DropDownListYekSare" runat="server" ValidationGroup="2">
                                <asp:ListItem>یک سره</asp:ListItem>
                                <asp:ListItem>دو سره</asp:ListItem>
                            </asp:DropDownList>
                            </span></span>
                            <br />
                            <asp:Button ID="BtnSearch" runat="server" onclick="BtnSearch_Click" 
                                Text="جستجو" />
                                            </td>
                    </tr>
                    <tr>
                        <td align="center" class="style17" dir="rtl">
                            سخنی با کاربران</td>
                    </tr>
                </table>
                <br />
                <table class="style16">
                    <tr>
                        <td align="center" class="style17" dir="rtl">
                            به سیستم خرید اینترنتی بلیط شرکت رجا خوش آمدید!</td>
                    </tr>
                </table>
                <br />
                <br />
                <table class="style16">
                    <tr>
                        <td class="style18" dir="rtl">
                            بازدید کننده گرامی!<br />
                            <br />
                            شرکت قطارهای مسافری رجا خهت جلب رضایت خاطر و آسایش مسافرین محترم&nbsp; قطارها اقدام 
                            به طراحی و راه اندازی سیستم خرید اینترنتی بلیط قطار نموده است.<br />
                            مسافرین گرامی جهت استفاده از این سیستم به موارد ذیل نیاز دارند<br />
                            :<br />
                            1. داشتن کارت پول بانک سامان (<asp:HyperLink ID="HyperLinkSamanBank" 
                                runat="server" NavigateUrl="http://www.samanbank.com">www.samanbank.com</asp:HyperLink>)&nbsp; 
                            و یا
                            <br />
                            انواع کارت پول بانک پارسیان(<asp:HyperLink ID="HyperLinkPEC" runat="server" 
                                NavigateUrl="http://www.pec.ir">www.pec.ir</asp:HyperLink>)&nbsp; و یا
                            <br />
                            انواع کارت های بانکی صادره بانک ملت(<asp:HyperLink ID="HyperLinkPankMellat" 
                                runat="server" NavigateUrl="http://www.bankmellat.ir">www.bankmellat.ir</asp:HyperLink>)
                            <br />
                            2. ثبت نام در سایت خرید اینترنتی بلیط رجا<br />
                            3. استفاده از نرم افزار فایر فاکس(FireFox) نسخه 3 به بالا</td>
                    </tr>
                </table>
            </td>
            <td class="style5">
                <h1 align="right" dir="rtl">
                    <asp:Label ID="LblNewsTitle" runat="server" Text="اخبار سایت" 
                        style="color: #FFFFFF"></asp:Label>
                </h1>
                <p align="right" dir="rtl">
                    <asp:Label ID="LblNews1" runat="server" ForeColor="White" Text="خبر اول"></asp:Label>
                </p>
                <p align="right" dir="rtl">
                    <asp:Label ID="LblNews2" runat="server" ForeColor="White" Text="خبر دوم"></asp:Label>
                </p>
                <p align="right" dir="rtl">
                    <asp:Label ID="LblNews3" runat="server" ForeColor="White" Text="خبر سوم"></asp:Label>
                </p>
            </td>
        </tr>
        <tr>
            <td dir="rtl" class="style15">
                ورود اعضا</td>
        </tr>
        <tr>
            <td dir="rtl">
                <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" dir="ltr" width="300">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorYsername" runat="server" 
                    ControlToValidate="TxtUsername" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                <asp:TextBox ID="TxtUsername" runat="server" ValidationGroup="1"></asp:TextBox>
                &nbsp;
                <asp:Label ID="LblUserName" runat="server" Text="نام کاربری" ForeColor="White"></asp:Label>
            &nbsp;
            </td>
        </tr>
        <tr>
            <td dir="ltr" class="style9" align="right">
                <asp:RequiredFieldValidator 
                    ID="RequiredFieldValidatorPassword" runat="server" 
                    ControlToValidate="TxtPassword" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>&nbsp;<asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" 
                    ValidationGroup="1"></asp:TextBox>&nbsp;
                <asp:Label ID="LblPassword" runat="server" Text="رمز ورود" ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7" dir="rtl">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="مرا به خاطر بسپار" 
                    style="color: #FFFFFF" ValidationGroup="1" />
                <br />
                <asp:Button ID="BtnLogin" runat="server" Text="ورود" onclick="BtnLogin_Click" 
                    ValidationGroup="1" />
                <br />
                <asp:HyperLink ID="HyperLinkForgetPassword" runat="server" ForeColor="Blue" 
                    NavigateUrl="~/ForgetPassword.aspx">رمز ورود خود را فراموش کرده ام</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="right" class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" title="To">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" 
                    NavigateUrl="~/Register.aspx">قبلا ثبت نام نکرده اید؟</asp:HyperLink>
            </td>
        </tr>
    </table>


</asp:Content>


