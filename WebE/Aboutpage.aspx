<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Aboutpage.aspx.cs" Inherits="WebE.Aboutpage" %>

<%@ Register Src="~/User/About.ascx" TagPrefix="uc1" TagName="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:About runat="server" id="About" />
</asp:Content>
