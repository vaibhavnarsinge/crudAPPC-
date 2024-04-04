<%@ Page Title="" Language="C#" MasterPageFile="~/CRUDMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CrudApplication.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .container {
            height: 84vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .reg-1 {
            background-color: aliceblue;
            border: 5px solid grey;
            border-radius: 5px;
            padding: 1vw 1vw 1vw 1vw;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width: 22vw;
            height: 45vh;
            gap: 1vw;
        }

        .txt1 {
            background-color: aliceblue;
            width: 15vw;
            padding: 0.5vw;
            font-size: 1vw;
            border: none;
            border-bottom: 2px solid black;
        }

        label {
            font-size: 1.2vw;
            text-align: left;
        }

        h1 {
            font-size: 2vw;
        }

        ::placeholder {
            font-size: 20px;
            color: black;
        }

        .txt2 {
            width: 6vw;
            padding: 0.5vw;
            border: solid grey 3px;
            border-radius: 20px;
            font-size: 1.1vw;
            cursor: pointer;
            color: black;
        }

            .txt2:hover {
                background-color: grey;
                color: white;
            }

        .loginLink1 {
            cursor: pointer;
            font-size: 0.8vw;
            text-decoration: none;
            color: black;
            font-weight: 800;
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        
        <div class="row reg-1">
            <h1>LOGIN ACCOUNT </h1>

            <div class="col-md-12">
                <asp:TextBox runat="server" CssClass="txt1" placeholder="Email" ID="TextMail"></asp:TextBox>
            </div>

            <div class="col-md-12">
                <asp:TextBox runat="server" CssClass="txt1" placeholder="Password" ID="TextPass"></asp:TextBox>
            </div>

            <div class="col-md-12">
                <asp:Button runat="server" CssClass="txt2" Text="Login" OnClientClick="return val()" ID="BtnSubmit" />
            </div>

            <div class="reg">
                <asp:HyperLink
                    ID="HyperLink1"
                    CssClass="loginLink1"
                    runat="server"
                    Text="Create New Account"
                    NavigateUrl="~/Registration.aspx">
                </asp:HyperLink>
            </div>

            <div class="reg">
                <asp:HyperLink
                    ID="HyperLink2"
                    CssClass="loginLink1"
                    runat="server"
                    Text="Forgot Password"
                    NavigateUrl="~/#">
                </asp:HyperLink>
            </div>
        </div>
    </div>


</asp:Content>
