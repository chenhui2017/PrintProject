<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navigation.ascx.cs" Inherits="PrintProject.UserControl.Navigation" %>

<link href="../css/huiyi8.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../js/slide.js"></script>

<div id="menu">
    <ul id="nav">

     <%--   <li class="jquery_out">
            <div class="jquery_inner">
                <div class="jquery">
                    <span class="text">管理系统</span><span class="smile"></span>
                </div>
            </div>
        </li>--%>


        <li class="mainlevel" id="mainlevel_01">
            <a href="http://www.baidu.com" target="_blank">下单系统</a>
            <ul id="sub_01">
                <li><a href="http://www.baidu.com" target="_blank">单张类</a></li>
                <%--   <li><a href="http://www.baidu.com" target="_blank">名片类</a></li>--%>
                <li><a href="http://www.baidu.com" target="_blank">画册类</a></li>
                <li><a href="http://www.baidu.com" target="_blank">书籍类</a></li>
                <%--         <li><a href="http://www.baidu.com" target="_blank">信封类</a></li>--%>
                <li><a href="http://www.baidu.com" target="_blank">联单类</a></li>
                <li><a href="http://www.baidu.com" target="_blank">封套类</a></li>
                <li><a href="http://www.baidu.com" target="_blank">手挽袋</a></li>
                <li><a href="http://www.baidu.com" target="_blank">手工开</a></li>
                <%--  <li><a href="http://www.baidu.com" target="_blank">非印开单</a></li>--%>
            </ul>
        </li>


        <li class="mainlevel" id="mainlevel_001">
            <a href="http://www.baidu.com" target="_blank">订单系统</a>
            <ul id="sub_001">
                <li><a href="http://www.baidu.com" target="_blank">网络订单</a></li>
                <li><a href="http://www.baidu.com" target="_blank">本地订单</a></li>
                <li><a href="http://www.baidu.com" target="_blank">询价订单</a></li>
                <li><a href="http://www.baidu.com" target="_blank">发外订单</a></li>
                <li><a href="http://www.baidu.com" target="_blank">客户管理</a></li>

            </ul>
        </li>
        <li class="mainlevel" id="mainlevel_0001">
            <a href="http://www.baidu.com" target="_blank">印前系统</a>
            <ul id="sub_0001">
                <li><a href="http://www.baidu.com" target="_blank">CTP排单</a></li>
                <li><a href="http://www.baidu.com" target="_blank">出版记录</a></li>
                <li><a href="http://www.baidu.com" target="_blank">机台统计</a></li>


            </ul>
        </li>

        <li class="mainlevel" id="mainlevel_02">
            <a href="http://www.baidu.com" target="_blank">生产系统</a>
            <ul id="sub_02">
                <li><a href="http://www.baidu.com" target="_blank">印刷排单</a></li>
                <li><a href="http://www.baidu.com" target="_blank">机台统计</a></li>
                <li><a href="http://www.baidu.com" target="_blank">历史记录</a></li>
                <li><a href="http://www.baidu.com" target="_blank">申请领料</a></li>
                <li><a href="http://www.baidu.com" target="_blank">领料记录</a></li>

            </ul>
        </li>

        <li class="mainlevel" id="mainlevel_03">
            <a href="http://www.baidu.com" target="_blank">财务系统</a>
            <ul id="sub_03">
                <li><a href="http://www.baidu.com" target="_blank">订单查询</a></li>
                <li><a href="http://www.baidu.com" target="_blank">应收款项</a></li>
                <li><a href="http://www.baidu.com" target="_blank">应收明细</a></li>
                <li><a href="http://www.baidu.com" target="_blank">应付款项</a></li>
                <li><a href="http://www.baidu.com" target="_blank">应付明细</a></li>
            </ul>
        </li>

        <li class="mainlevel" id="mainlevel_04">
            <a href="#" target="_blank">出纳系统</a>
            <ul id="sub_04">
                <li><a href="../Payin.aspx" target="_blank">订单查询</a></li>
                <li><a href="http://www.baidu.com" target="_blank">应收款项</a></li>
                <li><a href="http://www.baidu.com" target="_blank">应收明细</a></li>
                <li><a href="http://www.baidu.com" target="_blank">应收总账</a></li>
                <li><a href="http://www.baidu.com" target="_blank">发外查询</a></li>
                <li><a href="http://www.baidu.com" target="_blank">应付款项</a></li>
                <li><a href="http://www.baidu.com" target="_blank">应付明细</a></li>
                <li><a href="http://www.baidu.com" target="_blank">应付总账</a></li>
            </ul>
        </li>

        <li class="mainlevel" id="mainlevel_05">
            <a href="http://www.baidu.com" target="_blank">仓库系统</a>
            <ul id="sub_05">
                <li><a href="http://www.baidu.com" target="_blank">申请采购</a></li>
                <li><a href="http://www.baidu.com" target="_blank">入库管理</a></li>
                <li><a href="http://www.baidu.com" target="_blank">入库明细</a></li>
                <li><a href="http://www.baidu.com" target="_blank">申请领料</a></li>
                <li><a href="http://www.baidu.com" target="_blank">出库管理</a></li>
                <li><a href="http://www.baidu.com" target="_blank">出库明细</a></li>
                <li><a href="http://www.baidu.com" target="_blank">库存统计</a></li>
                <li><a href="http://www.baidu.com" target="_blank">成品入库</a></li>
                <li><a href="http://www.baidu.com" target="_blank">入库明细</a></li>
                <li><a href="http://www.baidu.com" target="_blank">成品出库</a></li>
                <li><a href="http://www.baidu.com" target="_blank">出库明细</a></li>

            </ul>
        </li>

        <li class="mainlevel" id="mainlevel_06">
            <a href="http://www.baidu.com" target="_blank">采购系统</a>
            <ul id="sub_06">
                <li><a href="http://www.baidu.com" target="_blank">申请采购</a></li>
                <li><a href="http://www.baidu.com" target="_blank">采购管理</a></li>
                <li><a href="http://www.baidu.com" target="_blank">申请入库</a></li>
                <li><a href="http://www.baidu.com" target="_blank">采购明细</a></li>
                <li><a href="http://www.baidu.com" target="_blank">采购统计</a></li>
                <li><a href="http://www.baidu.com" target="_blank">供应商管理</a></li>
            </ul>
        </li>
        <li class="mainlevel" id="mainlevel_07">
            <a href="http://www.baidu.com" target="_blank">人事系统</a>
            <ul id="sub_07">
                <li><a href="http://www.baidu.com" target="_blank">信息录入</a></li>
                <li><a href="http://www.baidu.com" target="_blank">员工管理</a></li>
            </ul>
        </li>
         <li class="mainlevel" id="mainlevel_08">
            <a href="http://www.baidu.com" target="_blank">送货系统</a>
            <ul id="sub_08">
                <li><a href="http://www.baidu.com" target="_blank">待完善</a></li>
                 
            </ul>
        </li>
          <li class="mainlevel" id="mainlevel_09">
            <a href="http://www.baidu.com" target="_blank">基础设置</a>
            <ul id="sub_09">
                <li><a href="../RolesJurisdiction.aspx" target="_blank">权限分配</a></li>
                 
            </ul>
        </li>
        <li class="mainlevel" id="mainlevel_10">
            <a href="http://www.baidu.com" target="_blank">退出</a>
            <ul id="sub_10">
                <li><a href="http://www.baidu.com" target="_blank"></a></li>
            </ul>
        </li>
        <div class="clear"></div>

    </ul>
</div>
