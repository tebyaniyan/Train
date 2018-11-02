<%@ Page Language="C#" MasterPageFile="~/BaseMasterPage.master" AutoEventWireup="true" CodeFile="BANK.aspx.cs" Inherits="BANK" %>

<asp:Content runat=server ContentPlaceHolderID=ContentPlaceHolder1>
    <p>
        <asp:Label ID="Label1" runat="server" Font-Names="Tahoma" Font-Size="24pt" 
            ForeColor="White" Text="شما میتوانید برای پرداخت بدهی برید بانک"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
                <asp:Button ID="BtnBack" runat="server" onclick="BtnBack_Click" Text="بازگشت" />
            </p>
</asp:Content>

<asp:Content ContentPlaceHolderID=head runat=server>

</asp:Content>