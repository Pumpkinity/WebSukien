<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contactpage.aspx.cs" Inherits="WebE.contactpage" %>

<%@ Register Src="~/User/Contact.ascx" TagPrefix="uc1" TagName="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Contact runat="server" id="Contact" />
</asp:Content>
