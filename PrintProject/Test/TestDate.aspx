<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestDate.aspx.cs" Inherits="PrintProject.Test.TestDate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <script src="assets/js/jquery-1.8.2.min.js"></script>
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>测试日期控件</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="text" class="date" placeholder="日历组件"    />
        <input type="text" class="date_short" placeholder="日历组件"    />
    </div>
    </form>
    <script src="../js/Common/datetime.js"></script>
</body>
</html>
