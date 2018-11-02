<%@ Page Language="C#" MasterPageFile="~/BaseMasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" Title="بازیابی رمز ورود" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
            height: 477px;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            width: 898px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td class="style4" colspan="2" dir="rtl">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Label ID="LblMessage" runat="server" 
                            Text="نام کاربری خود را اینجا وارد کنید:" ForeColor="White"></asp:Label>
                        <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
                        <asp:Button ID="BtnSend" runat="server" onclick="BtnSend_Click" Text="ارسال" />
                        <br />
                        <br />
                        <asp:Label ID="LblQuestion" runat="server" ForeColor="White" Visible="False"></asp:Label>
                        <asp:TextBox ID="TxtAnswer" runat="server" Visible="False"></asp:TextBox>
                        <asp:Button ID="BtnSubmit" runat="server" onclick="BtnSubmit_Click" 
                            Text="ارسال" Visible="False" />
                        <br />
                        <br />
                        <asp:Label ID="LblError" runat="server" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Label ID="LblDescription" runat="server" 
                            Text="اگر ایمیل دوم داشتید بر روی ارسال کلیک کنید" ForeColor="#006666" 
                            Visible="False"></asp:Label>
                        <asp:Button ID="BtnEmailSend" runat="server" onclick="BtnEmailSend_Click" 
                            Text="ارسال" Visible="False" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnBack" runat="server" onclick="BtnBack_Click" Text="بازگشت" 
                            Width="80px" />
                        <br />
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="BtnEmailSend" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="BtnSend" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="BtnSubmit" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
                </td>
        </tr>
        <tr>
            <td class="style5" dir="rtl">
                &nbsp;</td>
            <td dir="rtl">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

