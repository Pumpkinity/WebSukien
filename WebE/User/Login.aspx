<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebE.User.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
        <div>
            <div style="position: absolute;top: 50%; left: 50%; width: 400px; padding: 40px; transform: translate(-50%, -50%); background: rgba(0,0,0,.5); box-sizing: border-box; box-shadow: 0 15px 25px rgba(0,0,0,.6); border-radius: 10px">
            <h2 style=" margin: 0 0 30px;padding: 0;color: #fff;text-align: center">Login</h2>
                <div style=" position: relative;">
                    <asp:TextBox ID="txtUsername" runat="server" style="width:100%;padding: 10px 0;font-size: 16px;color: #fff;margin-bottom: 30px;border: none;border-bottom: 1px solid #fff; outline: none;background: transparent"></asp:TextBox>
                </div>
                <div style=" position: relative;">
                    <asp:TextBox ID="txtPassword" runat="server" style="width:100%;padding: 10px 0;font-size: 16px;color: #fff;margin-bottom: 30px;border: none;border-bottom: 1px solid #fff; outline: none;background: transparent" TextMode="Password"></asp:TextBox>
                </div>
                <asp:Button ID="btLogin" runat="server" Text="Log in" OnClick="btLogin_Click" />
            </div>
        </div>
    </form>
</body>
</html>
