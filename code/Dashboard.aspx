<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Hotel.Dashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Hotel Dashboard</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f4f4f4;
            text-align: center;
        }

        .container {
            margin-top: 50px;
        }

        img {
            width: 500px;
            height: 300px;
            border-radius: 10px;
        }

        .btn {
            margin: 20px;
            padding: 15px 30px;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }

        .reserve {
            background-color: green;
            color: white;
        }

        .myres {
            background-color: blue;
            color: white;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <h1>🏨 Welcome to Luxury Hotel</h1>

            <!-- Hotel Image -->
            <asp:Image ID="imgHotel" runat="server" 
                ImageUrl="~/images/hotel.jpg" />

            <br />

            <!-- Buttons -->
            <asp:Button ID="btnReserve" runat="server" 
                Text="Reserve" CssClass="btn reserve" 
                OnClick="btnReserve_Click" />

            <asp:Button ID="btnReservations" runat="server" 
                Text="My Reservations" CssClass="btn myres" 
                OnClick="btnReservations_Click" />

        </div>
    </form>
</body>
</html>