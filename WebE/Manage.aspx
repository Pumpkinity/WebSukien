<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="WebE.Manage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataGrid ID="gridadd" runat="server" AllowPaging="true" PageSize="6" PagerStyle-Mode="NumericPages"
            AutoGenerateColumns="false" DataKeyField="IdTicket" OnItemCommand="gridadd_ItemCommand" OnPageIndexChanged="gridadd_PageIndexChanged" Style="text-align:center" Width="800px">
            <Columns>
                <asp:TemplateColumn HeaderText="Tên Sản Phẩm" HeaderStyle-Font-Bold="true" ItemStyle-Width="200px">
                    <ItemTemplate>
                        <asp:LinkButton Font-Underline="false" ID="lnkSanPham" runat="server" CommandName="GetIdSanPham" Text='<%# Eval("Header").ToString() %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <Columns>
                <asp:TemplateColumn HeaderText="Giá" HeaderStyle-Font-Bold="true" ItemStyle-Width="60px">
                    <ItemTemplate>
                        <div id="textPrice" runat="server" >'<%# Eval("Price").ToString() %>'</div>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <Columns>
                <asp:TemplateColumn HeaderText="Ảnh Sản Phẩm" HeaderStyle-Font-Bold="true" ItemStyle-Width="100px">
                    <ItemTemplate>
                        <img src='<%# "Ticket/"+Eval("Img").ToString() %>' alt='<%# Eval("Header").ToString() %>' style="margin: 10px 0" width="50" height="50"/>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            
            <Columns>
                <asp:TemplateColumn HeaderText="Xóa" HeaderStyle-Font-Bold="true" ItemStyle-Width="50px">
                    <ItemTemplate>
                        <asp:LinkButton Font-Underline="false" ID="lnkXoa" runat="server" OnClientClick="return confirm('Bạn có muốn xóa sản phẩm này?');"  CommandName="GetIddelete" Text="Xóa"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
        <a href="Add.aspx">Add ticket</a>
    </form>
</body>
</html>
