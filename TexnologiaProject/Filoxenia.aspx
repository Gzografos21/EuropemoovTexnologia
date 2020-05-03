<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Filoxenia.aspx.cs" Inherits="TexnologiaProject.Filoxenia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="container" style="width: 100%; height: 100%;">
        <div class="row"  style="background-image: url(Images/back10.jpg); background-repeat: no-repeat; ; background-size: cover; height: 100%;">
            <div class="col-md-4"></div>
            <div class="col-md-4" style="text-align: center;">
                <br/> 
                    <h1 style="font-family:Times New Roman; color:white;" >Upload your Room to FILOXENIA</h1> <br/>
                    <asp:Label ID="Label1425" style="color: White;" runat="server" Text="Where is your home?"></asp:Label><br /><br />
                    <asp:TextBox ID="txtUsernameSU124524" runat="server"></asp:TextBox><br /><br />
                    <asp:Label ID="Label612451245" style="color: White;" runat="server" Text="How many people can you accommodate to your room?"></asp:Label><br /><br />
                    <asp:TextBox ID="txtEmailSU51245124" runat="server"></asp:TextBox><br /><br />
                    <!-- trexei ston server, tis html den trexoun ston server-->
                    <asp:Label ID="Label512451245" style="color: White;" runat="server" Text="How many square meters is your room?"></asp:Label><br /><br />
                    <asp:TextBox ID="txtPasswordSU12451245" TextMode="Password" runat="server"></asp:TextBox><br /><br />
              
                    <h3 style="color: White;">When you can offer your room?</h3>
                    <h5 style="color: White;">From</h5>
                    <asp:TextBox ID="TextBox1131" TextMode="Date" runat="server"></asp:TextBox><br />
                    <h5 style="color: White;">To</h5>
                    <asp:TextBox ID="txtBirth12451245" TextMode="Date" runat="server"></asp:TextBox><br /><br />
                  <h5 style="color: White;">More info about your room</h5>  
                   <textarea name="myTextBox" cols="50" rows="5">Enter some text...</textarea>
                   <br />
                <h5 style="color: White;">Upload a picture of your roomd</h5>
                 <asp:Button ID="BtnSignup112451245" runat="server"  Text="Upload" class="btn btn-success"  /><br /><br />
                   <asp:Button ID="Button113441" runat="server" Text="Upload my Room to Filoxenia" class="btn btn-info"  /><br />
                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="This expression does not validate." ControlToValidate="txtPasswordSU" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator><!--gia ta regural expression-->--%>
                          <br/>  <br/>  <br/> <br/>  <br/>  <br/> <br/>  <br/>  <br/> <br/>  <br/>  <br/> <br/>  <br/>  <br/> <br/>  <br/>  <br/>
            </div>
     </div>
 </div>
</asp:Content>
