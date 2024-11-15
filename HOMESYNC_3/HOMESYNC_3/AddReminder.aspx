<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddReminder.aspx.cs" Inherits="HOMESYNC_3.AddReminder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Reminder</title>
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
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Add Reminder</h2>
            
            <!-- Input fields for task_id and reminder -->
            <label>Task ID:</label>
            <asp:TextBox runat="server" ID="task_id"></asp:TextBox><br />

            <label>Reminder Date:</label>
            <asp:TextBox runat="server" ID="reminder_date"></asp:TextBox><br />

            <!-- Button to trigger the AddReminder method -->
            <asp:Button runat="server" Text="AddReminder" CssClass="button" OnClick="AddReminder_Click" />

            <!-- Output box to display the result -->
            <div id="outputBox" runat="server"></div>
        </div>
    </form>
</body>
</html>
