<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTask.aspx.cs" Inherits="HOMESYNC_3.ViewTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Task</title>
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

        #taskGridView {
            margin-top: 20px;
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            border: 1px solid #ddd;
        }

        #taskGridView th, #taskGridView td {
            padding: 15px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        #outputTask {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>View Task Details</h2>
            
            <!-- Input fields for user_id and creator -->
            <label>User ID:</label>
            <asp:TextBox runat="server" ID="user_id"></asp:TextBox><br />

            <label>Creator:</label>
            <asp:TextBox runat="server" ID="creator"></asp:TextBox><br />

            <!-- Button to trigger the ViewT method -->
            <asp:Button runat="server" Text="View Task" CssClass="button" OnClick="ViewT" />

            <!-- Display the task details in a table -->
            <asp:GridView ID="taskGridView" runat="server" AutoGenerateColumns="true"></asp:GridView>

            <!-- TextBox for displaying the output task details -->
            <asp:TextBox runat="server" ID="outputTask" TextMode="MultiLine" Rows="4" ReadOnly="true"></asp:TextBox>
        </div>
    </form>
</body>
</html>