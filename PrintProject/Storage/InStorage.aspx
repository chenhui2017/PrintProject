<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InStorage.aspx.cs" Inherits="PrintProject.Storage.InStorage" %>
<%@ Register Src="~/UserControl/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="~/css/huiyi8.css" rel="stylesheet" type="text/css" />
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
            width: 50px;
            margin: 3px;
            height: 20px;
            text-align: center;
            line-height: 20px;
        }

        .trlist td input {
            width: 85px;
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
    <uc1:Navigation runat="server" id="Navigation" />
     <form id="form1" runat="server">
     <div align="center">
        <div style="background:white; margin-bottom:20px;top:6%;z-index:-1;left:2%;position: absolute; " id="divcontent">

            <table style="width:100%;">
                <tr>
                    <td colspan="13"><h3 style="height:30px; line-height:30px; text-align:center; letter-spacing:30px;">入库操作平台</h3></td>
                </tr>
                <tr>

                    <th>耗材类型</th>
                    <th>类型</th>
                    <th>品牌</th>
                    <th>规格</th>
                    <th>克数</th>
                    <th>吨价￥</th>
                    <th>张价￥</th>
                    <th>入库数量</th>
                    <th>单位</th>
                    <th>金额合计￥</th>
                    <th>供应商</th>
                    <th>报警数</th>
                    <th>操作</th>
                </tr>
                <tr class="trlist">

                    <td>
                        <select name="TypeName1" id="ddl_TypeName1">   
                            <option value="1">18-21</option>   
                            <option value="2">22-25</option>   
                            <option value="3">26-29</option>   
                            <option value="4">30-35</option>   
                            <option value="5">Over35</option> 
                        </select>
                    </td>
                    <td><input type="text" id="hardName" /></td>
                    <td><input type="text" id="hardName" /></td>
                    <td><input type="text" id="hardName" /></td>
                    <td><input type="text" id="hardName" /></td>
                    <td><input type="text" id="hardName" /></td>
                    <td><input type="text" id="hardName" /></td>
                    <td><input type="text" id="hardName" /></td>
                    <td><input type="text" id="hardName" /></td>
                    <td><input type="text" id="hardName" /></td>
                    <td><input type="text" id="hardName" style="width:180px;" /></td>
                    <td><input type="text" id="hardName" /></td>
                    <td><input type="button" value="确定" /></td>


                </tr>
            </table>

            <table style="width:50%;">
                <tr>
                    <td colspan="6">
                        <h3 style="font-weight:bold; letter-spacing:10px; text-align:center;">入库单</h3>
                    </td>

                </tr>
                <tr>
                    <th><input type="button" id="orderID" value="操  作 " width="50" /></th>
                    <th colspan="3">名称及规格</th>
                    <th>单位</th>
                    <th>数量</th>
                </tr>
                <!----点击确定的时候动态生成--->

                <tbody>
                    <tr class="trlist">
                        <th><input type="button" id="orderID" value="  X  " width="50" /></th>
                        <th colspan="3"><input type="text" id="hardName" style="width:520px;" /></th>
                        <th><input type="text" id="hardName" /></th>
                        <th><input type="text" id="hardName" /></th>
                    </tr>
                </tbody>

                <tfoot>
                    <tr>
                        <th>采购人：</th>
                        <th><input type="text" id="hardName" /></th>
                        <th>仓管：</th>
                        <th><input type="text" id="hardName" /></th>
                        <th>操作员：</th>
                        <th><input type="text" id="hardName" /></th>

                    </tr>
                    <tr>
                        <td>备注：</td>
                        <th colspan="6">
                            <textarea style="width:870px;"></textarea>
                        </th>
                    </tr>

                    <tr>

                        <th colspan="6" style="text-align:center; padding-left:30px; padding-top:20px;">
                            <input type="button" value="入库" />
                            <input type="button" value="打印" />
                        </th>
                    </tr>

                </tfoot>
            </table>

        </div>

    </div>
         </form>
    <script type="text/javascript">
        $(function () {
            Init
        })
    </script>
</body>
</html>
