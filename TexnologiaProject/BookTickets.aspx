<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookTickets.aspx.cs" Inherits="TexnologiaProject.BookTickets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="width: 100%; height: 100%;">
        <div class="row"  style="background-image: url(Images/Back9.jpg); background-repeat: no-repeat; ; background-size: cover; height: 100%;">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="text-align: center;">
                <br />  <br />  <br /> <br /> <br /> <br /><br /> <br /> <br /> <br /> <br /> <br /> <br />

                <link href="Content/font-awesome.min.css" rel="stylesheet" />

               <h1 style="font-family: Times New Roman; color: White;">Book Tickets!</h1>
                    <br />
                    <asp:Label ID="Label3" runat="server" Style="color: white;" Text="Place of Departure"></asp:Label><br />
                    <asp:TextBox ID="txtDepart" runat="server"></asp:TextBox><br />
                    <asp:Label ID="Label6" runat="server" Style="color: white;" Text="Place of Arrival"></asp:Label><br />
                    <asp:TextBox ID="txtArriv" runat="server"></asp:TextBox><br />
                    <br />
                    <!-- trexei ston server, tis html den trexoun ston server-->
                    <asp:Label ID="Label12" runat="server" Style="color: white;" Text="Date of Departure"></asp:Label><br />
                    <asp:TextBox ID="txtBirth12" TextMode="Date" runat="server"></asp:TextBox><br />
                    <asp:Label ID="Label2" runat="server" Style="color: white;" Text="Date of Arrival"></asp:Label><br />
                    <asp:TextBox ID="TextBox12" TextMode="Date" runat="server"></asp:TextBox><br />
                    <asp:Label ID="LblErrorSU12" runat="server" Text="" Style="color: red"></asp:Label><br />
                    <br />
                   <h1 style="font-family: Times New Roman; color: White;">Choose Travel Method!</h1>
                 <h6 style="font-family: Times New Roman; color: White;">Airplane      Bus         Train</h6>

                   
                <link href="Content/all.min.css" rel="stylesheet" />
                 <span style="font-size: 3em; color: Tomato;">
                  <i class="fas fa-plane"></i>
                </span>
               
                <span style="font-size: 48px; color: Dodgerblue;">
                  <i class="fas fa-bus"></i>
                </span>
                    

                <span style="font-size: 48px; color: Mediumslateblue;">
                  <i class="fas fa-train"></i>
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
