<%@ Page Language="C#" MasterPageFile="~/BaseMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" Title="تغییر رمز ورود" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 100%;
        }
        .style5
        {
            width: 783px;
        }
        .style6
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td align="right" class="style5" dir="rtl">
                <asp:TextBox ID="Txtoldpass" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Txtoldpass" ErrorMessage="*" ValidationGroup="s"></asp:RequiredFieldValidator>
            </td>
            <td align="right" dir="rtl" class="style6">
                رمز ورود قبلی</td>
        </tr>
        <tr>
            <td align="right" class="style5" dir="rtl">
                <asp:TextBox ID="Txtnewpass" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Txtnewpass" ErrorMessage="*" ValidationGroup="s"></asp:RequiredFieldValidator>
            </td>
            <td align="right" dir="rtl" class="style6">
                رمز ورود جدید</td>
        </tr>
        <tr>
            <td align="right" class="style5" dir="rtl">
                <asp:TextBox ID="Txtrenewpass" runat="server" TextMode="Password" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="Txtrenewpass" ErrorMessage="*" ValidationGroup="s"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="Txtnewpass" ControlToValidate="Txtrenewpass" 
                    ErrorMessage="رمز ورود برابر نیست" ValidationGroup="s"></asp:CompareValidator>
            </td>
            <td align="right" dir="rtl" class="style6">
                تکرار رمز ورود جدید</td>
        </tr>
        <tr>
            <td align="right" class="style5" dir="rtl">
                <asp:Button ID="BtnChange" runat="server" onclick="BtnChange_Click" 
                    Text="تغییر" ValidationGroup="s" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Btnexit" runat="server" onclick="Btnexit_Click" Text="بازگشت" />
            </td>
            <td align="right" dir="rtl">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style5" dir="rtl">
                <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td align="right" dir="rtl">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

