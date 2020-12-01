<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="damlafinal1._0.admin" %>

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
		background: #be82cb;
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
		background: #54004D;
		border: none;
        outline: none !important;
    }
	.login-form .btn:hover, .login-form .btn:focus {
		background: #E1D5E0;
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
        <div>
            </br>  </br>  </br>  </br>  </br>
            <center>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="253px" Width="1001px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="c_model" HeaderText="c_model" SortExpression="c_model" />
                    <asp:BoundField DataField="c_maker" HeaderText="c_maker" SortExpression="c_maker" />
                    <asp:BoundField DataField="p_number" HeaderText="p_number" SortExpression="p_number" />
                    <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="c_type" HeaderText="c_type" SortExpression="c_type" />
                    <asp:BoundField DataField="checkin" HeaderText="checkin" SortExpression="checkin" />
                    <asp:BoundField DataField="checkout" HeaderText="checkout" SortExpression="checkout" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [parking] WHERE [Id] = @Id" InsertCommand="INSERT INTO [parking] ([fname], [email], [c_model], [c_maker], [p_number], [color], [phone], [c_type], [checkin], [checkout], [password]) VALUES (@fname, @email, @c_model, @c_maker, @p_number, @color, @phone, @c_type, @checkin, @checkout, @password)" SelectCommand="SELECT * FROM [parking]" UpdateCommand="UPDATE [parking] SET [fname] = @fname, [email] = @email, [c_model] = @c_model, [c_maker] = @c_maker, [p_number] = @p_number, [color] = @color, [phone] = @phone, [c_type] = @c_type, [checkin] = @checkin, [checkout] = @checkout, [password] = @password WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="c_model" Type="String" />
                <asp:Parameter Name="c_maker" Type="String" />
                <asp:Parameter Name="p_number" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="c_type" Type="String" />
                <asp:Parameter Name="checkin" Type="DateTime" />
                <asp:Parameter Name="checkout" Type="DateTime" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="c_model" Type="String" />
                <asp:Parameter Name="c_maker" Type="String" />
                <asp:Parameter Name="p_number" Type="String" />
                <asp:Parameter Name="color" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="c_type" Type="String" />
                <asp:Parameter Name="checkin" Type="DateTime" />
                <asp:Parameter Name="checkout" Type="DateTime" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</body>
</html>
