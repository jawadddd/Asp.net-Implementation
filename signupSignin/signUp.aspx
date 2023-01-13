<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="signupSignin.loginSignupForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ESHOP_SignUp</title>
</head>
    <style>
        body{

            padding:0;
            margin:0;

            background-image:url('images/1.png');
            background-size:cover;
            background-repeat:no-repeat;
            display:flex;
            justify-content:left;
            
          align-items:left;  

          padding-left:200px;
          padding-top:100px;

        }
        .loginbox
        {
            position:absolute;
            top:50%;
            left:32%;
            transform:translate(-50%,-50%);
            width:350px;
            height:455px;
            padding:30px 40px;
            box-sizing:border-box;
            background:rgba(0,0,0,0.5);
            border-radius:10px;
        }

        
/*                .content h2{
                    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        padding-left:0vw;
                }
                .content input[type=text]{
                    height:30px;
                    border:0;
                    margin-top:2.5vh;
                    margin-left:4vw;
                    border-radius:20px;
                }
                .content input[placeholder]{
                    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                    padding-left:1vw;
                    font-size:13px;
                }

*/                
                  #Label1{
                    font-weight:bold;
                    color:#fff;
                  }

                  #Label2{
                      font-weight:bold;
                    color:#fff;

                  }
                  #Label5{
                    color:red;

                  }
                  #Label4{
                      font-weight:bold;
                    color:#fff;
                  }

                  #Label3{
                      font-weight:bold;
                    color:darkorange;
                    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
                    font-size:35px;
                    padding-left:70px;
                  }

                  #TextBox1{
                    width:100%;
                    margin-bottom:20px;
                    border:none;
                    border-bottom:2px solid #fff;
                    outline:none;
                    height:40px;
                    color:#fff;
                    font-size:16px;
                    background-color:transparent;
                }

                #TextBox3{
                    width:100%;
                    border:none;
                    border-bottom:2px solid #fff;
                    outline:none;
                    height:40px;
                    color:#fff;
                    font-size:16px;
                    background-color:transparent;

                    margin-bottom:20px;
                }

                #TextBox2{
                    width:100%;
                    border:none;
                    border-bottom:2px solid #fff;
                    outline:none;
                    height:40px;
                    color:#fff;
                    font-size:16px;
                    background-color:transparent;

                    margin-bottom:20px;
                }

                #Submit{
                    width:102%;
                    margin-bottom:20px;
                    border:none;
                    outline:none;
                    height:40px;
                    font-size:16px;
                    color:#fff;
                    background-color:rgba(255,205,9,0.6);
                    border-radius:13px;
                }

                ::placeholder{
                    color:rgba(255,255,255,.5);
                }

        </style>
<body>
    <form id="form1" runat="server">

        <div class="loginbox" alt="Alternate Text">
            <asp:Label ID="Label3" runat="server" Text="Sign-up"></asp:Label><br/>
            <asp:Label ID="Label4" runat="server" Text="Username:"></asp:Label><br/>
            <asp:TextBox ID="TextBox3" placeholder="Enter username here" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label><br/>
              <asp:TextBox ID="TextBox1" placeholder="Enter email here" runat="server"></asp:TextBox><br/><br/>
        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label><br/>
            <asp:TextBox ID="TextBox2" placeholder="******************" runat="server"></asp:TextBox>  <br/><br/>
            
        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" /><br/>
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </div>
        
    </form>
</body>
</html>
