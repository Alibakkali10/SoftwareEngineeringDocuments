<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="hotelerie.inscription" %>
<!DOCTYPE html>
<html lang="fr">
<head runat="server">
    <meta charset="UTF-8">
    <title>Inscription</title>
    <style>
        *{box-sizing:border-box;margin:0;padding:0;font-family:'Segoe UI',Tahoma,sans-serif;}
        body{height:100vh;overflow:hidden;}
        .background{position:fixed;inset:0;background:url("image.jpg") center/cover no-repeat;z-index:-2;}
        .overlay{position:fixed;inset:0;background:rgba(0,0,0,0.6);z-index:-1;}
        .container{height:100vh;display:flex;justify-content:center;align-items:center;}
        .card{background:#fff;width:420px;max-width:92vw;padding:28px;border-radius:12px;box-shadow:0 25px 40px rgba(0,0,0,0.4);}
        h2{text-align:center;margin-bottom:18px;color:orange;}
        label{display:block;margin-top:12px;color:#000;font-size:14px;}
        .champ{
            width:100%;
            padding:10px;
            margin-top:6px;
            border-radius:6px;
            border:1px solid #ccc;
        }

        .btn{
            width:100%;
            margin-top:18px;
            padding:12px;
            background:orange;
            color:#fff;
            border:none;
            border-radius:6px;
            font-size:1em;
            cursor:pointer;
        }
        .btn:hover{background:#000;}

        small{color:#888;font-size:0.8em;}
        .erreur{display:block;margin-top:12px;}
        .link{text-align:center;margin-top:16px;}
        .link a{color:#e67e22;text-decoration:none;font-weight:bold;}
    </style>
</head>

<body>
    <div class="background"></div>
    <div class="overlay"></div>

    <div class="container">
        <div class="card">

            <form id="form1" runat="server">
                <h2>Inscription</h2>

                <label>Nom</label>
                <asp:TextBox ID="txtNom" runat="server" CssClass="champ"></asp:TextBox>

                <label>Prénom</label>
                <asp:TextBox ID="txtPrenom" runat="server" CssClass="champ"></asp:TextBox>

                <label>Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="champ"></asp:TextBox>

                <label>Téléphone</label>
                <asp:TextBox ID="txtTelephone" runat="server" CssClass="champ" placeholder="ex: 514-123-4567"></asp:TextBox>
                <small>Format: 514-123-4567</small>

                <label>Mot de passe</label>
                <asp:TextBox ID="txtMotDePasse" runat="server" CssClass="champ" TextMode="Password"></asp:TextBox>
                <small>Minimum 8 caractères</small>

                <asp:Button ID="btnInscription" runat="server" Text="Créer un compte" CssClass="btn" OnClick="btnInscription_Click" />

                <asp:Label ID="lblErreur" runat="server" CssClass="erreur" ForeColor="Red"></asp:Label>

                <div class="link">
                    Déjà un compte ? <a href="login.aspx">Se connecter</a>
                </div>
            </form>

        </div>
    </div>
</body>
</html>