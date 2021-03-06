﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="TexnologiaProject.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="width: 100px; height: 300px;">
        <div class="row">
            <div class="col-md-7" style="text-align: center">
                <div class="row" style="margin-top: 70px;">
                    <h1 style="font-family:Times New Roman; color:white; width:170px; height: 30px;" >Signup!</h1> <br/>
                    <asp:Label ID="Label3" style="color: White;" runat="server" Text="Name"></asp:Label><br />
                    <asp:TextBox ID="txtUsernameSU" runat="server"></asp:TextBox><br />
                    <asp:Label ID="Label6" style="color: White;" runat="server" Text="Email"></asp:Label><br />
                    <asp:TextBox ID="txtEmailSU" runat="server"></asp:TextBox><br />
                    <!-- trexei ston server, tis html den trexoun ston server-->
                    <asp:Label ID="Label5" style="color: White;" runat="server" Text="Password"></asp:Label><br />
                    <asp:TextBox ID="txtPasswordSU" TextMode="Password" runat="server"></asp:TextBox><br />
                    <asp:Label ID="LblRePassword" style="color: White;" runat="server" Text="Re-enter password"></asp:Label><br />
                    <asp:TextBox ID="CheckRePassword" TextMode="Password" runat="server"></asp:TextBox><br />
                    <asp:Label ID="Label1" style="color: White;" runat="server" Text="Date of Birth"></asp:Label><br />
                    <asp:TextBox ID="txtBirth" TextMode="Date" runat="server"></asp:TextBox><br />
                    <asp:Label ID="LblErrorSU" runat="server" Text="" Style="color: red"></asp:Label><br />
                    <asp:Button ID="BtnSignup1" runat="server" Text="Signup" class="btn btn-info" OnClick="BtnSignup1_Click" />
                  

                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="This expression does not validate." ControlToValidate="txtPasswordSU" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator><!--gia ta regural expression-->--%>
               <br/>  <br/>  <br/>
                    </div>

            </div>

        </div>
          
    </div>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="docs/images/favicon.ico" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.3/dist/leaflet.css" integrity="sha512-07I2e+7D8p6he1SIM+1twR5TIrhUQn9+I6yjqD53JQjFiMf8EtC93ty0/5vJTZGF8aAocvHYNEDJajGdNx1IsQ==" crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.0.3/dist/leaflet.js" integrity="sha512-A7vV8IFfih/D732iSSKi20u/ooOfj/AGehOKq0f4vLT1Zr2Y+RX7C+w8A1gaSasGtRUZpF/NZgzSAu4/Gc41Lg==" crossorigin=""></script>

    <div id="mapid" style="width: 100%; height: 300px;"></div>

    <script>

        var mymap = L.map('mapid').setView([38.2870449, 21.7845011], 13);

        L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
            maxZoom: 18,
            attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, ' +
                '<a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
                'Imagery © <a href="http://mapbox.com">Mapbox</a>',
            id: 'mapbox.streets'
        });
        var Stadia_AlidadeSmoothDark = L.tileLayer('https://tiles.stadiamaps.com/tiles/alidade_smooth_dark/{z}/{x}/{y}{r}.png', {
            maxZoom: 20,
            attribution: '&copy; <a href="https://stadiamaps.com/">Stadia Maps</a>, &copy; <a href="https://openmaptiles.org/">OpenMapTiles</a> &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors'
        }).addTo(mymap);
    </script>


</asp:Content>
