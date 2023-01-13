<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewProduct.aspx.cs" Inherits="signupSignin.viewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ESHOP_ViewProduct</title>
        <style>
        body{

            padding:0;
            margin:0;

            background-color:aliceblue;
            display:flex;
            justify-content:left;
            padding-top:50px;
            padding-left:60px;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight:bold;
                    font-size:20px;

            }

        </style>

</head>
<body>
    <form id="form1" runat="server">
        
            <div class="loginbox" alt="Alternate Text">
            <asp:Label ID="Label3" runat="server" Text="ProductDetails"></asp:Label><br/><br/><br/>
            <asp:Label ID="Label1" runat="server" Text="ProductName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;            "></asp:Label>
                <br/>
            <asp:Label ID="Label4" runat="server" Text="ProductNameHere"></asp:Label>
       
        <asp:Label ID="Label2" runat="server" Text="ProductCompany:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             "></asp:Label>
       
                <br/>
        <asp:Label ID="Label5" runat="server" Text="ProductCompanyHere"></asp:Label><br/>
        <asp:Label ID="Label6" runat="server" Text="ProductPrice:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                "></asp:Label>
        <asp:Label ID="Label7" runat="server" Text="ProductPriceHere"></asp:Label><br/>

        <asp:Label ID="Label8" runat="server" Text="ProductDescription:                "></asp:Label>
        <asp:Label ID="Label9" runat="server" Text="ProductDescriptionHere"></asp:Label><br/>
        <asp:Label ID="Label10" runat="server" Text="ProductRank:                "></asp:Label>
        <asp:Label ID="Label11" runat="server" Text="ProductRankHere"></asp:Label><br/>
        <asp:Label ID="Label12" runat="server" Text="ProductQuantity:                "></asp:Label>
        <asp:Label ID="Label13" runat="server" Text="ProductQuantityHere"></asp:Label><br/>
        <asp:Label ID="Label14" runat="server" Text="ProductCategory:                "></asp:Label>
        <asp:Label ID="Label15" runat="server" Text="ProductCategoryHere"></asp:Label><br/>
            

        <asp:Button ID="addtOcART" runat="server" Text="Add To Cart" /><br/>
       
            </div>
    </form>
</body>
</html>
