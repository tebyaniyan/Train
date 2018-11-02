<%@ Page Language="C#" MasterPageFile="~/BaseMasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" Title="ثبت نام" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            height: 26px;
        }
        .style5
        {
            color: #FFFFFF;
        }
        .style6
        {
            color: #FFFFFF;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" dir="rtl">
        <tr>
            <td align="left" colspan="2">
                <asp:HyperLink ID="HyperLinkLogin" runat="server" ForeColor="Red" 
                    NavigateUrl="~/Login.aspx">قبلا ثبت نام کرده ام</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <h1 class="style6">
                    ثبت نام</h1>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    HeaderText="خطا ها" />
                <asp:Label ID="LblError" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Username" runat="server" Text="نام کاربری" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtUsername" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" 
                    ControlToValidate="TxtUsername" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblPassword" runat="server" Text="رمز ورود" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" 
                    ControlToValidate="TxtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblConfirmPassword" runat="server" Text="تایید رمز ورود" 
                    ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password" 
                    Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" 
                    runat="server" ControlToValidate="TxtConfirmPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidatorConfirmPassword" runat="server" 
                    ControlToCompare="TxtPassword" ControlToValidate="TxtConfirmPassword" 
                    ErrorMessage="رمز ورود تایپ شده برابر نمی باشد"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblName" runat="server" Text="نام" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtFirstName" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" 
                    ControlToValidate="TxtFirstName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblFamily" runat="server" Text="نام خانوادگی" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtLastName" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" 
                    ControlToValidate="TxtLastName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td dir="rtl">
                <asp:Label ID="LblBrithdayYear" runat="server" Text="سال تولد" 
                    ForeColor="White"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="TxtBrithdayYear" runat="server" ForeColor="White" 
                    Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrithdayYear" 
                    runat="server" ControlToValidate="TxtBrithdayYear" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td dir="rtl">
                <asp:Label ID="LblBrithdayMonth" runat="server" Text="ماه تولد" 
                    ForeColor="White"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="TxtBrithdayMonth" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrithdayMonth" 
                    runat="server" ControlToValidate="TxtBrithdayMonth" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td dir="rtl">
                <asp:Label ID="LblBrithdayDay" runat="server" Text="روز تولد" ForeColor="White"></asp:Label>
            </td>
            <td dir="rtl">
                <asp:TextBox ID="TxtBrithdayDay" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrithdayDay" 
                    runat="server" ControlToValidate="TxtBrithdayDay" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblSex" runat="server" Text="جنسیت" ForeColor="White"></asp:Label>
            </td>
            <td align="right" dir="rtl">
                <asp:RadioButton ID="RadioButtonMale" runat="server" ForeColor="Aqua" 
                    GroupName="1" Text="Male" />
                <asp:RadioButton ID="RadioButtonFemale" runat="server" ForeColor="Aqua" 
                    GroupName="1" Text="Female" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblEmail" runat="server" Text="ایمیل" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtEmail" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" 
                    runat="server" ControlToValidate="TxtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblCountry" runat="server" Text="کشور" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListCountry" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID" 
                    Width="150px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\DataBase.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Countries]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblCity" runat="server" Text="شهر" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtCity" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="City" runat="server" 
                    ErrorMessage="*" ControlToValidate="TxtCity"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblPostalCode" runat="server" Text="کد پستی" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtPostalCode" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPostalCode" runat="server" 
                    ErrorMessage="*" ControlToValidate="TxtPostalCode"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblAddress" runat="server" Text="آدرس" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtAddress" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblMobileNumber" runat="server" Text="تلفن همراه" 
                    ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtMobileNumber" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblOfficeNumber" runat="server" Text="تلفن دفتر کار" 
                    ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtOfficeNumber" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblSecurityQuestion1" runat="server" Text="سوال امنیتی" 
                    ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtSecurityQuestion1" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSecurityQuestion" 
                    runat="server" ControlToValidate="TxtSecurityQuestion1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblAnswer1" runat="server" Text="جواب" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtAnswer1" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAnswer" runat="server" 
                    ControlToValidate="TxtAnswer1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="LblAlternateEmail" runat="server" Text="ایمیل دوم" 
                    ForeColor="White"></asp:Label>
            </td>
            <td class="style4">
                <span class="style5">
                <asp:TextBox ID="TxtAlternateEmail" runat="server" style="width: 128px" 
                    Width="150px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                در صورت فراموش کردن رمز ورود از این ایمیل استفاده می شود</span></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="2" dir="rtl">
                <asp:TextBox ID="TxtGhavanin" runat="server" ReadOnly="True" 
                    TextMode="MultiLine" Height="130px" Width="352px">قوانین سایت:</asp:TextBox>
                <br />
                <asp:CheckBox ID="CheckBoxIAgree" runat="server" Text="موافقم" 
                    ForeColor="White" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" 
                    onclick="BtnSubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

