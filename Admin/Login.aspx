<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        form {
            border: 3px solid #f1f1f1;

        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

            .button:hover {
                opacity: 0.8;
            }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 10%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="imgcontainer">
            <img src="images/img_avatar2.png" alt="Avatar" class="avatar">
        </div>
        <div class="container">
            <label for="uname"><b>Username</b></label>
            <asp:TextBox runat="server" ID="uname" required="" Placeholder="UserName" AutoCompleteType="Email" ToolTip="Enter Registerd Email id"></asp:TextBox>
            <div style="clear:both"></div>
            <label for="psw"><b>Password</b></label>
            <asp:TextBox runat="server" ID="psw" required="" MaxLength="15" Placeholder="Password" ToolTip="Enter Password"></asp:TextBox>
            <asp:Button runat="server" ID="btnlog" CssClass="button" Text="Login" OnClick="btnlog_Click" />
        </div>
    </form>
</body>
</html>
