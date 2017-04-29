<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RolesJurisdiction.aspx.cs" Inherits="PrintProject.RolesJurisdiction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>��ɫȨ�޹���</title>
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
                        <span class="text">����ϵͳ</span><span class="smile"></span>
                    </div>
                </div>
            </li>

            <li class="mainlevel" id="mainlevel_01">
                <a href="http://www.baidu.com" target="_blank">�µ�ϵͳ</a>
                <ul id="sub_01">
                    <li><a href="http://www.baidu.com" target="_blank">������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">��Ƭ��</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�鼮��</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�ŷ���</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�ֹ�����</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">��ӡ����</a></li>
                </ul>
            </li>

            <li class="mainlevel" id="mainlevel_02">
                <a href="http://www.baidu.com" target="_blank">����ϵͳ</a>
                <ul id="sub_02">
                    <li><a href="http://www.baidu.com" target="_blank">ҵ�����</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�����ŵ�</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�ɱ�����</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">ѯ�۱���</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">��̨ͳ��</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�������</a></li>
                </ul>
            </li>

            <li class="mainlevel" id="mainlevel_03">
                <a href="http://www.baidu.com" target="_blank">����ϵͳ</a>
                <ul id="sub_03">
                    <li><a href="http://www.baidu.com" target="_blank">�������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">֧������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">֧������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�½ᱨ��</a></li>
                </ul>
            </li>

            <li class="mainlevel" id="mainlevel_04">
                <a href="http://www.baidu.com" target="_blank">����ϵͳ</a>
                <ul id="sub_04">
                    <li><a href="http://www.baidu.com" target="_blank">�������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">֧������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">֧������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">��֧��ϸ</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">ÿ����ˮ</a></li>
                </ul>
            </li>

            <li class="mainlevel" id="mainlevel_05">
                <a href="http://www.baidu.com" target="_blank">���ϵͳ</a>
                <ul id="sub_05">
                    <li><a href="http://www.baidu.com" target="_blank">����ɹ�</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�ɹ����</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�����ϸ</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�������</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">������ϸ</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">��Ʒ���</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">��Ʒ����</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">���ͳ��</a></li>
                </ul>
            </li>

            <li class="mainlevel" id="mainlevel_06">
                <a href="http://www.baidu.com" target="_blank">�ɹ�ϵͳ</a>
                <ul id="sub_06">
                    <li><a href="http://www.baidu.com" target="_blank">�ɹ�����</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">�ɹ�ͳ��</a></li>
                    <li><a href="http://www.baidu.com" target="_blank">��Ӧ�̲�ѯ</a></li>
                </ul>
            </li>
            <li class="mainlevel" id="mainlevel_06">
                <a href="http://www.baidu.com" target="_blank">�ͻ�ϵͳ</a>
                <ul id="sub_06">
                    <li><a href="http://www.baidu.com" target="_blank">�ͻ���ѯ</a></li>
                </ul>
            </li>
            <li class="mainlevel" id="mainlevel_06">
                <a href="http://www.baidu.com" target="_blank">�˳�</a>
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