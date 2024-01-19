<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TrackMobile.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mobile Tracking System</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            background: linear-gradient(to bottom, #3498db, #2980b9); /* Adjust gradient colors as needed */
            font-family: 'Arial', sans-serif;
            color: #333; /* Text color */
        }

        #formContainer {
            text-align: center;
            max-width: 400px;
            width: 100%;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8); /* Semi-transparent white background for the form */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Box shadow for a subtle lift effect */
        }

        .form-label {
            display: block;
            margin-top: 10px;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc; /* Border color */
            border-radius: 4px; /* Rounded corners for input fields */
        }

        .btn-primary {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            background-color: #2ecc71; /* Button background color */
            color: #fff; /* Button text color */
            border: none; /* No border */
            border-radius: 4px; /* Rounded corners for buttons */
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #27ae60; /* Button background color on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="formContainer">
            <h2>Mobile Tracking System</h2>
            <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="lblLocation" runat="server" Text="Location:" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtLocation" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Button ID="btnUpdateLocation" runat="server" Text="Update Location" OnClick="btnUpdateLocation_Click" CssClass="btn btn-primary" />
        </div>
    </form>
</body>
</html>

