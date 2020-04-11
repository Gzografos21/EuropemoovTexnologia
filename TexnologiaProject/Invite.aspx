<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invite.aspx.cs" Inherits="TexnologiaProject.Invite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: red
        }
    </style>
    <div class="container" style="width: 100%; height: 100%;">
        <div class="row" style="background-image: url(Images/back.JPG); background-repeat: no-repeat; background-size: auto;">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="text-align: center;">
                <br /><br /><br />
                <!--styling gia apostasi -->
                <h3 style="font-family: Times New Roman; color: White;">Invite a Friend!</h3>

                <h5 style="font-family: Times New Roman; color: #6b6a6a;">Write your friends email here</h5>
                <br />
                <div>
                    <input id="Text1" placeholder="Your friend's E-mail" type="text" />
                </div>
                <br />
                <div>
                    <input id="Text2" placeholder="Message..." type="text" />
                </div>
                <br />
                <button class="btn btn-success" id="msgBtnBack">Send invitation</button>
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
            <br /><br /><br /><br /><br />
        </div>
    </div>
</asp:Content>
