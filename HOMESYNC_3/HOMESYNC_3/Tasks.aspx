<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="HOMESYNC_3.Tasks" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Style for buttons */
        .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f0f0f0;
            margin: 0;
        }
        .button-row {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px; /* Adjusted margin for the row of buttons */
        }
        .button {
            padding: 30px 60px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 15px;
            font-weight: bold;
            margin: 0 20px; /* Adjusted margin between buttons */
            cursor: pointer;
            transition: background-color 0.3s ease, opacity 0.3s ease;
            font-size: 24px;
            height: 100px;
        }
        .button:hover {
            background-color: #0056b3;
            opacity: 0.8;
        }
        /* Style for the heading and hyperlink */
        .link {
            text-align: center;
        }
        .link h2 {
            font-size: 24px;
            margin-bottom: 10px; /* Adjusted margin for the heading */
        }
        .link a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            transition: color 0.3s ease;
        }
        .link a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="button-container">
            <!-- Row of four buttons -->
            <div class="button-row">
                <!-- Button 1 to redirect to View Task page -->
                <asp:Button runat="server" ID="btnViewTask" Text="View Task" CssClass="button"
                    OnClick="RedirectButton_Click" />
                
                <!-- Button 2 to redirect to Finish Task page -->
                <asp:Button runat="server" ID="btnFinishTask" Text="Finish Task" CssClass="button" 
                    OnClick="RedirectButton_Click" />

                <!-- Button 3 to redirect to View Status page -->
                <asp:Button runat="server" ID="btnViewStatus" Text="View Status" CssClass="button" 
                    OnClick="RedirectButton_Click" />

                <!-- Button 4 to redirect to Add Reminder page -->
                <asp:Button runat="server" ID="btnAddReminder" Text="Add Reminder" CssClass="button" 
                    OnClick="RedirectButton_Click" />
            </div>

            <!-- Button 5 positioned below the row of buttons -->
            <asp:Button runat="server" ID="btnUpdateDeadline" Text="Update Deadline" CssClass="button" 
                OnClick="RedirectButton_Click" />

            <!-- Heading and hyperlink under the buttons -->
            <div class="link">
                <h2>Explore Your Tasks</h2>
            </div>
        </div>
    </form>
</body>
</html>
