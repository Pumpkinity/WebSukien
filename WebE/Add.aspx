<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="WebE.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Add ticket</h3>
        <br /><br /> 
        <div>Header:</div> 
        <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
        <br /><br />
        <div>Img:</div>
        <asp:FileUpload ID="FileUploadanh" runat="server" Height="22px" Width="250px"></asp:FileUpload>
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
        <asp:Button ID="btnThemmoi" runat="server" Text="Thêm mới" OnClick="btnThemmoi_Click" />
    </div>
    </form>
</body>
</html>
