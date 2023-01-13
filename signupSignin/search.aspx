<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="signupSignin.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title></head>
<style>

.rptr table
{
 background: #eee;
 font: 14px segoe ui;
 border-collapse: collapse;
 width: 25%;
 margin: 5px;
 float: left;
}
 #Button1{
                    width:100px;
                    margin-bottom:20px;
                    border:none;
                    outline:none;
                    height:25px;
                    font-size:16px;
                    color:aliceblue;
                    background-color:brown;
                    border-radius:13px;
                }

 #Button2{
                    width:200px;
                    margin-bottom:20px;
                    border:none;
                    outline:none;
                    height:25px;
                    font-size:16px;
                    color:aliceblue;
                    background-color:brown;
                    border-radius:13px;
                }


.rptr table th
{
 background: #f90;
 color: #fff;
 padding: 8px 10px;
 text-align: left;
}
.rptr table td
{
 padding: 5px 10px;
}

</style>
<body>
    <form id="form1" runat="server">
        <div >

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Search" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Go to Categories" OnClick="Button2_Click" />
            </div>
        <div>
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
      <ItemTemplate>
          <div class="rptr">
          <table>
          <tr><th colspan="2">productId <%#Eval("productId") %></th></tr>
          <tr><td>productName</td><td><%#Eval("productName") %></td></tr>
          <tr><td>productCompany</td><td><%#Eval("productCompany") %></td></tr>
          <tr><td>ProductPrice</td><td><%#Eval("ProductPrice") %></td></tr>
          <tr><td>AvailableQuantity </td><td><%#Eval("AvailableQuantity ") %></td></tr>


        
          </table>           
          </div>
      </ItemTemplate>
    </asp:Repeater>
        </div>
    </form>
</body>
</html>
