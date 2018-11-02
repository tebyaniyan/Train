<%@ Page Language="C#" MasterPageFile="~/BaseMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="ورود" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 398px;
        }
        .style10
        {
            height: 28px;
        }
        .style12
        {
            height: 26px;
        }
        .style20
        {
            height: 28px;
            text-align: right;
        }
        .style21
        {
            height: 26px;
            width: 877px;
        }
        .style22
        {
            height: 24px;
        }
        .style23
        {
            height: 398px;
            width: 877px;
        }
        .style24
        {
            height: 28px;
            width: 877px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" align="center">
        
        <tr>
            <td class="style20" colspan="2">
                <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style24" align="right" dir="rtl">
                <asp:TextBox ID="TxtUsername" runat="server" ValidationGroup="1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" 
                    ControlToValidate="TxtUsername" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="style10" align="right" dir="rtl">
                <asp:Label ID="LblUsername" runat="server" Text="نام کاربری" 
                    style="color: #FFFFFF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style21" align="right" dir="rtl">
                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" 
                    ControlToValidate="TxtPassword" ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
            <td class="style12" align="right" dir="rtl">
                <asp:Label ID="LblPassword" runat="server" Text="رمز ورود" 
                    style="color: #FFFFFF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style22" colspan="2" dir="ltr">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="مرا به خاطر بسپار" 
                    style="color: #FFFFFF" />
            </td>
        </tr>
        <tr>
            <td align="right" class="style22" colspan="2" dir="rtl">
                <asp:Button ID="BtnLogin" runat="server" Text="ورود" onclick="BtnLogin_Click" 
                    style="font-weight: 700" Width="93px" ValidationGroup="1" />
                &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="style22" colspan="2" dir="rtl">
                <asp:HyperLink ID="HyperLinkForgetPassword" runat="server" ForeColor="Blue" 
                    NavigateUrl="~/ForgetPassword.aspx">رمز ورود خود را فراموش کرده ام</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="right" class="style22" colspan="2">
                <asp:HyperLink ID="HyperLinkRegister" runat="server" ForeColor="Red" 
                    NavigateUrl="~/Register.aspx">قبلا ثبت نام نکرده اید؟</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style23">
                <br />
                <asp:ImageButton ID="ImageButtonAd" runat="server" ValidationGroup="2" />
            </td>
            <td class="style4">
            </td>
        </tr>
    </table>
</asp:Content>

