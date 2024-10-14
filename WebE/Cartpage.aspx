<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cartpage.aspx.cs" Inherits="WebE.Cartpage" %>

<%@ Register Src="~/User/Cart.ascx" TagPrefix="uc1" TagName="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Cart runat="server" id="Cart" />
</asp:Content>
