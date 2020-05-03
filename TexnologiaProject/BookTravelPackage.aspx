<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookTravelPackage.aspx.cs" Inherits="TexnologiaProject.BookTravelPackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="container" style="width: 100%; height: 100%;">
     

        <div class="row"  style="background-image: url(Images/Back12.jpg); background-repeat: no-repeat; ; background-size: cover; height: 100%;">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="text-align: center;">
                <br />  <br />  <br /> <br />  

                <link href="Content/font-awesome.min.css" rel="stylesheet" />

               <h1 style="font-family: Times New Roman; color: White;">Book a Travel Package!</h1>
                    <br /><br />
                    <asp:Label ID="Label1234" runat="server" Style="color: white;" Text="Country of Departure"></asp:Label><br />
                    <asp:TextBox ID="txtDepart123" runat="server"></asp:TextBox><br />
                    <asp:Label ID="Label5111" runat="server" Style="color: white;" Text="Search Criteria"></asp:Label><br />
                    <asp:TextBox ID="txtArriv1123" runat="server"></asp:TextBox><br />
                    <br />
                <link href="Content/all.min.css" rel="stylesheet" />
              
                 <br />
                   <button class="btn btn-primary" id="msgBtnBack2"><span class="glyphicon glyphicon-globe"></span>&nbsp;Show Results!</button>
                  
                      <br /> <br /><br /><br />
                    <br />
                    <div class= col-md-4> <img src="/images/paris.jpg" alt="images22" style="width:198px; padding: 20px; height:198px"> 
                        <h5 style="color:white;"> PARIS </h5><br/>
                        <h5 style="color:white;"> 13/03/2021 -19/03/2021</h5>
                        <h5 style="color:white;"> Transfer Method: Airplane</h5>
                        <h5 style="color:white;"> Company: Aegean</h5>
                        <h5 style="color:white;"> Cost: 50 Euros </h5>

                        <br/><br/>
                        <button class="btn btn-primary" id="msgBtnBack2wqe">Book Now!</button>
                    </div> 
                    <div class= col-md-4> <img src="/images/berlin.jpg" alt="images221" style="width:198px; padding: 20px; height:198px"> 
                        <h5 style="color:white;"> Berlin </h5><br/>
                        <h5 style="color:white;"> 25/03/2021 -29/03/2021</h5>
                        <h5 style="color:white;"> Transfer Method: Airplane</h5>
                        <h5 style="color:white;"> Company: Aegean</h5>
                        <h5 style="color:white;"> Cost: 35 Euros </h5>
                        <br/><br/>
                        <button class="btn btn-primary" id="msgBtnBack2qwqe">Book Now!</button>
                    </div>
                    <div class= col-md-4> <img src="/images/barcelona.jpg" alt="images2412" style="width:198px; padding: 20px; height:198px">
                        <h5 style="color:white;"> Barcelona </h5><br/>
                        <h5 style="color:white;"> 25/04/2021 -29/04/2021</h5>
                        <h5 style="color:white;"> Transfer Method: Airplane</h5>
                        <h5 style="color:white;"> Company: Aegean</h5>
                        <h5 style="color:white;"> Cost: 75 Euros</h5>
                        <br/><br/>
                        <button class="btn btn-primary" id="msgBtnBack2qqre">Book Now!</button>
                    </div>
     </div>
            <div class="col-md-4"></div>
            <div class="row"></div>
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /> <br /> <br /> <br />
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
