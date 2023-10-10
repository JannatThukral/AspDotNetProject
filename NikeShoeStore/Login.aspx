<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="NikeShoeStore.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link href="Content/signin.css" rel="stylesheet" />

    <link href="images/logo.png" rel="shortcut icon" type="image/x-icon" />
</head>
<body class="text-center">
    <form id="form1" runat="server" class="form-signin">
        <img class="mb-4" src="/images/logo.png" alt="" width="72" height="72" />
         <br />
        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger" />
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
        <label for="inputEmail" class="sr-only">Email address</label>
        <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email address" required autofocus />
        <label for="inputPassword" class="sr-only">Password</label>
        <asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control" placeholder="Email address" required />
        <asp:Button ID="submit" OnClick="submit_Click" runat="server"  class="btn btn-lg btn-primary btn-block" Text="Sign In" />
        <a href="Register.aspx">Register</a>
        
    </form>
</body>
</html>
