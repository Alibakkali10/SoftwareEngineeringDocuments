<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="hotelerie.login" %>

<!DOCTYPE html>
<html lang="fr">
<head runat="server">
    <meta charset="UTF-8">
    <title>Connexion</title>

    <style>
        *{
            box-sizing:border-box;
            margin:0;
            padding:0;
            font-family:'Segoe UI',Tahoma,sans-serif;
        }

        body{
            height:100vh;
        }

        .background{
            position:fixed;
            inset:0;
            background:url("image.jpg") center/cover no-repeat;
            z-index:-2;
        }

        .overlay{
            position:fixed;
            inset:0;
            background:rgba(0,0,0,0.6);
            z-index:-1;
        }

        .container{
            height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
        }

        .card{
            background:white;
            width:380px;
            padding:30px;
            border-radius:12px;
            box-shadow:0 25px 40px rgba(0,0,0,0.4);
        }

        h2{
            text-align:center;
            margin-bottom:20px;
            color:orange;
        }

        label{
            display:block;
            margin-top:15px;
            font-size:14px;
        }

        .champ{
            width:100%;
            padding:10px;
            margin-top:6px;
            border-radius:6px;
            border:1px solid #ccc;
        }

        .btn{
            width:100%;
            margin-top:20px;
            padding:12px;
            background:orange;
            color:white;
            border:none;
            border-radius:6px;
            cursor:pointer;
        }

        .btn:hover{
            background:black;
        }

        .link{
            text-align:center;
            margin-top:20px;
        }

        .link a{
            color:#e67e22;
            text-decoration:none;
            font-weight:bold;
        }
    </style>
</head>

<body>

<div class="background"></div>
<div class="overlay"></div>

<div class="container">
    <div class="card">
        <form id="form1" runat="server">
            <h2>Connexion</h2>
            <label>Courriel</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="champ"></asp:TextBox>
            <label>Mot de passe</label>
            <asp:TextBox ID="txtMotDePasse" runat="server" CssClass="champ" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnconnecte"
                runat="server"
                CssClass="btn"
                Onclick="btnconnecte_Click"
                Text="Se connecter" />
            <asp:Label ID="lblErreur" runat="server" ForeColor="Red"></asp:Label>
        </form>

        <div class="link">
            Pas de compte ? <a href="inscription.aspx">Créer un compte</a>
        </div>

    </div>
</div>

</body>
</html>