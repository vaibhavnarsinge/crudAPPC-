<%@ Page Title="" Language="C#" MasterPageFile="~/CRUDMaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CrudApplication.Registration" %>

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
            border: 3px solid grey;
            border-radius: 5px;
            padding: 1vw 1vw 2vw 1vw;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width: 22vw;
            height: 49vh;
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

    <script>
        function val() {
            debugger;
            var Ename = document.getElementById('<%=TextName.ClientID%>').value;
            var mail = document.getElementById('<%=TextMail.ClientID%>').value;
            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            var phone = document.getElementById('<%=TextNumber.ClientID%>').value;
            

            if (Ename == null || Ename == "") {
                alert("Please Enter the Name!")
            }
            else if (mail != null && mail != "") {
                if (reg.test(mail) == false) {
                    alert('Invalid Email Address Format');
                    return false;
                }
            }
            else if (mail == null && mail == "") {
                alert('invalid Email 2');

            }
            else if (phone == null && phone == "") {
                alert('please enter your phone number');
            }
            else if (phone.count() != 10) {
                alert('Enter correct phone number')
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row reg-1">
            <h1>CREATE ACCOUNT </h1>


            <div class="col-md-12">
                <asp:TextBox runat="server" placeholder="Name" CssClass="txt1" ID="TextName"></asp:TextBox>
            </div>


            <div class="col-md-12">
                <asp:TextBox runat="server" CssClass="txt1" placeholder="Email" ID="TextMail"></asp:TextBox>
            </div>


            <div class="col-md-12">
                <asp:TextBox runat="server" MaxLength="10" CssClass="txt1" placeholder="Phone No" ID="TextNumber"></asp:TextBox>
            </div>


            <div class="col-md-12">
                <asp:TextBox runat="server" CssClass="txt1" placeholder="Password" ID="TextPass"></asp:TextBox>
            </div>

            <div class="col-md-12">
                <asp:Button runat="server" CssClass="txt2" Text="Submit" OnClick="btn_submitClick" OnClientClick="return val()" ID="BtnSubmit" />
            </div>

            <div class="login">
                <asp:HyperLink
                    ID="HyperLink3"
                    CssClass="loginLink1"
                    runat="server"
                    Text="Already have an Account? Login Now"
                    NavigateUrl="~/Login.aspx">
                </asp:HyperLink>
            </div>



        </div>
    </div>
</asp:Content>
