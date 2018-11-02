<%@ Page Language="C#" MasterPageFile="~/BaseMasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" Title="ازسال پیام به مدیر" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            height: 477px;
        }
        .style5
        {
            width: 1028px;
        }
        .style10
        {
            width: 1028px;
            height: 34px;
        }
        .style11
        {
            height: 34px;
        }
        .style12
        {
            width: 1028px;
            height: 33px;
        }
        .style13
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style4">
        <tr>
            <td class="style10" align="right" dir="rtl">
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            </td>
            <td class="style11" align="left" dir="rtl">
                <asp:Label ID="LblName" runat="server" ForeColor="White" Text="نام"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style12" align="right" dir="rtl">
                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
            </td>
            <td class="style13" align="left" dir="rtl">
                <asp:Label ID="LblEmail" runat="server" ForeColor="White" Text="ایمیل"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5" align="right" dir="rtl">
                <asp:TextBox ID="TxtTitle" runat="server"></asp:TextBox>
            </td>
            <td align="left" dir="rtl">
                <asp:Label ID="LblTitle" runat="server" ForeColor="White" Text="موضوع"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5" align="right" dir="rtl">
                <asp:TextBox ID="TxtText" runat="server" Height="193px" TextMode="MultiLine" 
                    Width="596px"></asp:TextBox>
            </td>
            <td align="left" dir="rtl">
                <asp:Label ID="LblText" runat="server" ForeColor="White" Text="متن"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5" align="right" dir="rtl">
                <asp:Button ID="BtnSend" runat="server" Text="ارسال" onclick="BtnSend_Click" 
                    Width="80px" />
            </td>
            <td align="right" dir="rtl">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" align="right" dir="rtl">
                <asp:Label ID="LblMessage" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td align="right" dir="rtl">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

