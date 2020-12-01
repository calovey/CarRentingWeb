<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkin.aspx.cs" Inherits="damlafinal1._0.checkin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>CAR PARKING</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
	body {
		color: #fff;
		background: #401343;
	}
	.form-control {
		min-height: 41px;
		background: #f2f2f2;
		box-shadow: none !important;
		border: transparent;
	}
	.form-control:focus {
		background: #e2e2e2;
	}
	.form-control, .btn {        
        border-radius: 2px;
    }
	.login-form {
		width: 350px;
		margin: 30px auto;
		text-align: center;
	}
	.login-form h2 {
        margin: 10px 0 25px;
    }
    .login-form form {
		color: #7a7a7a;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form .btn {        
        font-size: 16px;
        font-weight: bold;
		background: #b5adad;
		border: none;
        outline: none !important;
    }
	.login-form .btn:hover, .login-form .btn:focus {
		background: rgba(150, 149, 150, 0.77);
	}
	.login-form a {
		color: #fff;
		text-decoration: underline;
	}
	.login-form a:hover {
		text-decoration: none;
	}
	.login-form form a {
		color: #7a7a7a;
		text-decoration: none;
	}
	.login-form form a:hover {
		text-decoration: underline;
	}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login-form">
       
        <div class="form-group">
            <h3 class="text-center">Please Check - In </h3>
            <p class="text-center">&nbsp;</p>   
            <asp:Button ID="Button1" runat="server" Text="Check In" class="btn btn-primary btn-lg btn-block" OnClick="Button1_Click" />
                    <br />
                    Date and Time check-in : <br/><asp:Label ID="Label1" runat="server" Text=""> </asp:Label>
       <br/>  <asp:Label ID="Label4" runat="server" Text=""> </asp:Label>
                    <br />
                    <h3 class="text-center">Please Check - Out</h3>
            <p class="text-center">
                &nbsp;</p>
            <asp:Button ID="Button2" runat="server" Text="Check Out" class="btn btn-primary btn-lg btn-block" OnClick="Button2_Click" />
        Date and Time check-out : 
            <br />
            <asp:Label ID="Label2" runat="server" Text=""> </asp:Label>
            <br />
            <br />
                    </div>
                  <asp:Label ID="Label3" runat="server" Text="Total Amount To Pay : "></asp:Label>    <br />
         <br />
        <asp:Label ID="Label5" runat="server" Text="" ForeColor="red" Font-Bold></asp:Label><br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="RETURN" class="btn btn-primary btn-lg btn-block" OnClick="Button3_Click" />

</div>
    </form>
    </body>
</html>
