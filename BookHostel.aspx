<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookHostel.aspx.cs" Inherits="TexnologiaProject.BookHostel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container" style="width: 100%; height: 100%;">
        <div class="row"  style="background-image: url(Images/Back10.jpg); background-repeat: no-repeat; ; background-size: cover; height: 100%;">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="text-align: center;">
                <br />  <br />  <br /> <br /> <br /> <br /><br /> <br /> <br /> <br /> <br /> <br /> <br />

                <link href="Content/font-awesome.min.css" rel="stylesheet" />

               <h1 style="font-family: Times New Roman; color: White;">Book a Hostel!</h1>
                    <br />
                    <asp:Label ID="Label4" runat="server" Style="color: white;" Text="Destination"></asp:Label><br />
                    <asp:TextBox ID="txtDepart1" runat="server"></asp:TextBox><br />
                    <asp:Label ID="Label7" runat="server" Style="color: white;" Text="Number of People"></asp:Label><br />
                    <asp:TextBox ID="txtArriv1" runat="server"></asp:TextBox><br />
                    <br />
              
                    <asp:Label ID="Label14" runat="server" Style="color: white;" Text="Date of Departure"></asp:Label><br />
                    <asp:TextBox ID="txtBirth11" TextMode="Date" runat="server"></asp:TextBox><br />
                    <asp:Label ID="Label21" runat="server" Style="color: white;" Text="Date of Arrival"></asp:Label><br />
                    <asp:TextBox ID="TextBox121" TextMode="Date" runat="server"></asp:TextBox><br />
                    <asp:Label ID="LblErrorSU121s" runat="server" Text="" Style="color: red"></asp:Label><br />
                    <br />

                <link href="Content/all.min.css" rel="stylesheet" />
                 <span style="font-size: 3em; color: Tomato;">
                  <i class="fas fa-home"></i>
                </span>
                <br/><br/>
                   <button class="btn btn-primary" id="msgBtnBack2"><span class="glyphicon glyphicon-globe"></span>&nbsp;Show Results!</button>

               
     </div>

            <div class="col-md-4"></div>
            <div class="row"></div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
</asp:Content>
