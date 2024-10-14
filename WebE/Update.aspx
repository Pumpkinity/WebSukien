<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="WebE.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Update ticket</h3>
        <br /><br /> 
        <div>Header:</div> 
        <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
        <br /><br />
        <div>Img:</div>
        <asp:FileUpload ID="FileUploadanh" runat="server" Height="22px" Width="250px"></asp:FileUpload>
        <asp:Image ID="imgsp" runat="server" Height="100" Width="100" />
        <br /><br />
        <div>Price:</div>
        <asp:TextBox ID="txtPr" runat="server"></asp:TextBox>
        <br /><br />
        <div>Locate:</div> 
        <asp:TextBox ID="txtLc" runat="server"></asp:TextBox>
        <br /><br />
        <div>Date:</div> 
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <br /><br />
        <div>Quantity:</div> 
        <asp:TextBox ID="TxtQu" runat="server"></asp:TextBox>
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
    </div>
    </form>
</body>
</html>
