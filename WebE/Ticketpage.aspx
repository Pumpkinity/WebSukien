<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ticketpage.aspx.cs" Inherits="WebE.Ticketpage" %>

<%@ Register Src="~/User/Tickets.ascx" TagPrefix="uc1" TagName="Tickets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Tickets runat="server" id="Tickets" />
</asp:Content>
