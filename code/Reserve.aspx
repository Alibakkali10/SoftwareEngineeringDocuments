<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reserve.aspx.cs" Inherits="Hotel.Reserve" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Reserve a Hotel</title>
    <style>
        body {
            font-family: Arial;
            text-align: center;
            background-color: #f4f4f4;
        }

        h1 {
            margin-top: 30px;
        }

        .hotel-buttons {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 50px;
        }

        .hotel-button {
            width: 250px;
            height: 200px;
            margin: 20px;
            font-size: 20px;
            font-weight: bold;
            border-radius: 10px;
            border: none;
            cursor: pointer;
            color: white;
            position: relative;
            overflow: hidden;
        }

        .hotel-button img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 10px;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 1;
        }

        .hotel-button span {
            position: relative;
            z-index: 2;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">

        <h1>Select a Hotel</h1>

        <div class="hotel-buttons">
            <asp:Button ID="btnDubai" runat="server" CssClass="hotel-button" OnClick="btnDubai_Click">
                <img src="~/images/Hotel Dubai.jpg" />
                <span>Dubai</span>
            </asp:Button>

            <asp:Button ID="btnMontreal" runat="server" CssClass="hotel-button" OnClick="btnMontreal_Click">
                <img src="~/images/montreal.jpg" />
                <span>Montreal</span>
            </asp:Button>

            <asp:Button ID="btnTanger" runat="server" CssClass="hotel-button" OnClick="btnTanger_Click">
                <img src="~/images/tanger.jpg" />
                <span>Tanger</span>
            </asp:Button>

            <asp:Button ID="btnNewYork" runat="server" CssClass="hotel-button" OnClick="btnNewYork_Click">
                <img src="~/images/newyork.jpg" />
                <span>New York</span>
            </asp:Button>
        </div>

    </form>
</body>
</html>