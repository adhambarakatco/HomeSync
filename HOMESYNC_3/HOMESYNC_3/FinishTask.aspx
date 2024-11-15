<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinishTask.aspx.cs" Inherits="HOMESYNC_3.FinishTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Finish Task</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #007bff;
        }

        div {
            text-align: center;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #007bff;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }

        .button {
            padding: 15px 30px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease, opacity 0.3s ease;
        }

        .button:hover {
            background-color: #0056b3;
            opacity: 0.8;
        }

        #outputBox {
            margin-top: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Finish Task</h2>
            
            <!-- Input fields for user_id and title -->
            <label>User ID:</label>
            <asp:TextBox runat="server" ID="user_id"></asp:TextBox><br />

            <label>Title:</label>
            <asp:TextBox runat="server" ID="title"></asp:TextBox><br />

            <!-- Button to trigger the FinishMyTask method -->
            <asp:Button runat="server" Text="Finish Task" CssClass="button" OnClick="FinishMyTask" />

            <!-- Output box to display the result -->
            <div id="outputBox" runat="server"></div>
        </div>
    </form>
</body>
</html>
