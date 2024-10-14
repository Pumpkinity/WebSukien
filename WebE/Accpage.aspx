<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Accpage.aspx.cs" Inherits="WebE.Accpage" %>

<%@ Register Src="~/User/Acc.ascx" TagPrefix="uc1" TagName="Acc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Acc runat="server" id="Acc" />
</asp:Content>
