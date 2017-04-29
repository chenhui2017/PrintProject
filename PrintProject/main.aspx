<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PrintProject.Main" %>

<%@ Register Src="~/UserControl/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>企业信息管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

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

        .ullist li {
            float: left;
            width: 55px;
            background-color: green;
            margin: 5px;
            height: 30px;
            line-height: 30px;
            text-align: center;
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
    </style>
</head>
<body style="background-color: #54c3cf;">
    <form id="form1" runat="server">
        <%-- <iframe id="ifrTjB3026" name="ifrTjB3026" frameborder="0" scrolling="no" style="z-index:auto; width:100%; height:100%; "  src="Navigation.aspx"></iframe>
       --%>
        <uc1:Navigation runat="server" id="Navigation" />
           <div id="divcontent">
            <table id="tablist" style="width: 100%;">

                <thead>
                    <tr>
                        <th>进度创作</th>
                        <th>工单号</th>
                        <th>印件名称</th>
                        <th>客户名称</th>
                        <th>成品尺寸</th>
                        <th>印件数量</th>
                        <th>下单时间</th>
                        <th>交货</th>
                    </tr>
                    <tr>
                        <th>
                            <ul class="ullist">
                                <li>等待</li>
                                <li>生产</li>
                                <li>完成</li>
                            </ul>
                        </th>
                        <th>
                            <input type="text" id="orderID" /></th>
                        <th>
                            <input type="text" id="hardName" /></th>
                        <th>
                            <input type="text" id="customerName" /></th>
                        <th>
                            <input type="text" id="productSize" /></th>
                        <th>
                            <input type="text" id="hardNum" /></th>
                        <th>
                            <input type="button" title="查询" id="selectData" value="查询" /></th>
                        <th>&nbsp;</th>
                    </tr>

                </thead>
                <tbody>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>切纸</li>
                                <li>CPT</li>
                                <li>印刷</li>
                                <li>装订</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>联单类</td>
                        <td>浦发银行</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10月06日15：23</td>
                        <td>10月34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>切纸</li>
                                <li>CPT</li>
                                <li>印刷</li>
                                <li>装订</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>联单类</td>
                        <td>浦发银行</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10月06日15：23</td>
                        <td>10月34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>切纸</li>
                                <li>CPT</li>
                                <li>印刷</li>
                                <li>装订</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>联单类</td>
                        <td>浦发银行</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10月06日15：23</td>
                        <td>10月34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>切纸</li>
                                <li>CPT</li>
                                <li>印刷</li>
                                <li>装订</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>联单类</td>
                        <td>浦发银行</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10月06日15：23</td>
                        <td>10月34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>切纸</li>
                                <li>CPT</li>
                                <li>印刷</li>
                                <li>装订</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>联单类</td>
                        <td>浦发银行</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10月06日15：23</td>
                        <td>10月34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>切纸</li>
                                <li>CPT</li>
                                <li>印刷</li>
                                <li>装订</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>联单类</td>
                        <td>浦发银行</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10月06日15：23</td>
                        <td>10月34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>切纸</li>
                                <li>CPT</li>
                                <li>印刷</li>
                                <li>装订</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>联单类</td>
                        <td>浦发银行</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10月06日15：23</td>
                        <td>10月34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>切纸</li>
                                <li>CPT</li>
                                <li>印刷</li>
                                <li>装订</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>联单类</td>
                        <td>浦发银行</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10月06日15：23</td>
                        <td>10月34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>切纸</li>
                                <li>CPT</li>
                                <li>印刷</li>
                                <li>装订</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>联单类</td>
                        <td>浦发银行</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10月06日15：23</td>
                        <td>10月34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>切纸</li>
                                <li>CPT</li>
                                <li>印刷</li>
                                <li>装订</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>联单类</td>
                        <td>浦发银行</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10月06日15：23</td>
                        <td>10月34</td>

                    </tr>
                </tbody>
                <tfoot>

                    <tr>
                        <td colspan="6" style="border: 1px solid red;">



                            <ul id="footullist">
                                <li>
                                    <input type="button" title="第一页" value="第一页" id="firstPage" /></li>
                                <li>
                                    <input type="button" title="上一页" value="上一页" id="previousPage" /></li>
                                <li>1</li>
                                <li>2</li>
                                <li>3</li>
                                <li>4</li>
                                <li>5</li>
                                <li>6</li>
                                <li>7</li>
                                <li>8</li>
                                <li>9</li>
                                <li>10...</li>
                                <li>
                                    <input type="button" title="下一页" value="下一页" id="nextPage" /></li>
                                <li>
                                    <input type="button" title="最后页" value="最后页" id="lastPage" /></li>
                            </ul>

                        </td>
                        <td colspan="2" style="border: 1px solid red;">168条/共255页

                        </td>
                    </tr>
                </tfoot>

            </table>

        </div>
       



    </form>
</body>
</html>
