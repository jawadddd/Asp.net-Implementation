<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADDpRODUCTwITHiMAGE.aspx.cs" Inherits="signupSignin.ADDpRODUCTwITHiMAGE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            Enter name:<asp:TextBox ID="TextBox1" runat="server" Width="333px"></asp:TextBox>
        </p>
        <p>
            Enter Pic:<asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 134px" Width="132px" />
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
