<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PrintProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>用户登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <script src="assets/js/jquery-1.8.2.min.js"></script>
    <!-- CSS -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' />
    <link rel="stylesheet" href="assets/css/reset.css" />
    <link rel="stylesheet" href="assets/css/supersized.css" />
    <link rel="stylesheet" href="assets/css/style.css" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    <script>

        //加载
        $(function () {

            $("#loginform").submit(function () {
                return checkform();

            })
        })

        function checkform() {
            if ($.trim($("#username").val()).length == 0) {

                alert("用户名不能为空。");
                $("#username").focus();
                //$("#splogin").show();
                return false;
            }

            if ($.trim($("#password").val()).length == 0) {
                alert("密码不能为空。");
                $("#password").focus();
                //$("#sppwd").show();
                return false;
            }
        }

    </script>
    <style>
        #btnlogin {
            background-color: #ef4300;
        }
    </style>
</head>
<body>
    <form id="loginform" runat="server" method="post" action="">

        <div class="page-container">

            <table>
                <tr>
                    <td colspan="2">
                        <h1 style="letter-spacing: 5px;">印刷ERP管理系统</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="username" runat="server" name="username"  class="username" placeholder="用户名"></asp:TextBox>
                    </td>
                    <td>
                        <span id="splogin" style="color:red; display:none;">*</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox type="password" ID="password" runat="server" name="username" class="username" placeholder="密码"></asp:TextBox>
                    </td>
                    <td>
                        <span id="sppwd" style="color:red;display:none;">*</span>
                    </td>
                </tr>
                <tr>


                    <td colspan="2">
                        <asp:Button ID="btnlogin" runat="server" Text="登录" OnClick="btnlogin_Click1" />
                    </td>
                </tr>
            </table>



            <div class="error"></div>


        </div>
        <!-- Javascript -->

        <script src="assets/js/supersized.3.2.7.min.js"></script>
        <script src="assets/js/supersized-init.js"></script>
        <script src="assets/js/scripts.js"></script>
    </form>
</body>
</html>
