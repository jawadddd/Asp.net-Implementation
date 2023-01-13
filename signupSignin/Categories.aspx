<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="signupSignin.Categories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
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
 #Label1{
                      font-weight:bold;
                    color:darkorange;
                    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                    font-size:35px;
                    padding-left:70px;
                  }

</style>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Categories"></asp:Label><br/><br/>
        </div>
         <div>


             <asp:Repeater ID="Repeater2" runat="server">
                 <ItemTemplate>
          <div class="rptr">
          <table>
          <tr><th colspan="2">Category Id <%#Eval("CategoryId") %></th></tr>
          <tr><td></td><td></td></tr>
         
              <tr><td>Category Name</td><td><%#Eval("categoryName") %></td></tr>
          <tr><td></td><td></td></tr>
          <tr><td></td><td></td></tr> 
        
          </table>           
          </div>

                 </ItemTemplate>
                  </asp:Repeater>
        </div>
    </form>
</body>
</html>
