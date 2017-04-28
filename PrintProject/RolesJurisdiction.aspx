<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RolesJurisdiction.aspx.cs" Inherits="PrintProject.RolesJurisdiction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>角色权限管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

    <link href="css/huiyi8.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/slide.js"></script>
    <style>
        #tablist {
            border-right: 1px solid #F00;
            border-bottom: 1px solid #F00;
        }

            #tablist td {
                border-left: 1px solid #F00;
                border-top: 1px solid #F00;
            }

            #tablist tr th {
                border-left: 1px solid #F00;
                border-top: 1px solid #F00;
            }

        #footullist li {
            background: none;
            border: 1px solid red;
            float: left;
            width: 100px;
            margin: 3px;
            height: 20px;
            text-align: center;
            line-height: 20px;
        }

        input[type='text'] {
            width: 100px;
        }
    </style>
    <script>
        function settablethead() {
            var tablenum = document.getElementsByTagName('table');

            for (var j = 0; j <= 2; j++) {
                var rows = tablenum[j].getElementsByTagName('tr')[1].getElementsByTagName('th');
                rows[0].style.height = "25px";
                for (var i = 0; i < rows.length; i++) {
                    rows[i].style.background = "#6885BE";
                }
            }
        }
    </script>
</head>
<body onload="settablethead()" style="background-color:#54c3cf;">

    <div id="menu">
        <ul id="nav">

            <li class="jquery_out">
                <div class="jquery_inner">
                    <div class="jquery">
                        <span class="text">管理系统</span><span class="smile"></span>
                    </div>
                </div>
            </li>

            <li class="mainlevel" id="mainlevel_01">
                <a href="http://www.baidu.com" target="_blank">下单系统</a>
                <ul id="sub_01">
                    <li><a href="http://www.baidu.com" target="_blank">单张类</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">名片类</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">画册类</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">书籍类</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">信封类</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">联单类</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">封套类</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">手挽类</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">手工开单</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">非印开单</a></li>
                </ul>
            </li>

            <li class="mainlevel" id="mainlevel_02">
                <a href="http://www.baidu.com" target="_blank">生产系统</a>
                <ul id="sub_02">
                    <li><a href="http://www.baidu.com" target="_blank">业务管理</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">生产排单</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">成本管理</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">询价保存</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">机台统计</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">发外管理</a></li>
                </ul>
            </li>

            <li class="mainlevel" id="mainlevel_03">
                <a href="http://www.baidu.com" target="_blank">财务系统</a>
                <ul id="sub_03">
                    <li><a href="http://www.baidu.com" target="_blank">收入管理</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">收入汇总</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">支出管理</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">支出汇总</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">月结报表</a></li>
                </ul>
            </li>

            <li class="mainlevel" id="mainlevel_04">
                <a href="http://www.baidu.com" target="_blank">出纳系统</a>
                <ul id="sub_04">
                    <li><a href="http://www.baidu.com" target="_blank">收入管理</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">收入汇总</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">支出管理</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">支出汇总</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">收支明细</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">每日流水</a></li>
                </ul>
            </li>

            <li class="mainlevel" id="mainlevel_05">
                <a href="http://www.baidu.com" target="_blank">库存系统</a>
                <ul id="sub_05">
                    <li><a href="http://www.baidu.com" target="_blank">申请采购</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">采购入库</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">入库管理</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">入库明细</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">出库管理</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">出库明细</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">成品入库</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">成品出库</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">库存统计</a></li>
                </ul>
            </li>

            <li class="mainlevel" id="mainlevel_06">
                <a href="http://www.baidu.com" target="_blank">采购系统</a>
                <ul id="sub_06">
                    <li><a href="http://www.baidu.com" target="_blank">采购订单</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">采购统计</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">供应商查询</a></li>
                </ul>
            </li>
            <li class="mainlevel" id="mainlevel_06">
                <a href="http://www.baidu.com" target="_blank">客户系统</a>
                <ul id="sub_06">
                    <li><a href="http://www.baidu.com" target="_blank">客户查询</a></li>
                </ul>
            </li>
            <li class="mainlevel" id="mainlevel_06">
                <a href="http://www.baidu.com" target="_blank">退出</a>
                <ul id="sub_06">
                    <li><a href="http://www.baidu.com" target="_blank"></a></li>
                </ul>
            </li>
            <div class="clear"></div>
        </ul>
    </div>

    
    <div align="center">
        <div style="background:white; margin-bottom:20px;top:6%;z-index:-1;left:0%;position: absolute; " id="divcontent">

        </div>
    </div>
</body>
</html>