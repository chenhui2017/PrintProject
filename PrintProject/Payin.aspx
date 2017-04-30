<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payin.aspx.cs" Inherits="PrintProject.Payin" %>

<%@ Register Assembly="AspNetPager2.0" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/UserControl/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>订单查询</title>
    <script src="js/jquery.js"></script>

    <style>
        /*#tablist {
            border-right: 1px solid #F00;
            border-bottom: 1px solid #F00;
        }*/

          #tbodylist td {
                border-left: 1px solid black;
                border-top: 1px solid black;
                 
            }

           /*   #tablist tr th {
                border-left: 1px solid #F00;
                border-top: 1px solid #F00;
            }*/

        /*#footullist li {
            background: none;
            border: 1px solid red;
            float: left;
            width: 100px;
            margin: 3px;
            height: 20px;
            text-align: center;
            line-height: 20px;
        }*/

        input[type='text'] {
            width: 100px;
        }
    </style>

    <!--弹出框的样式-->
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        .lbOverlay {
            display: none;
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            zoom: 1;
            background: #2f2e2e;
            z-index: 999;
            width: 100%;
            height: 100%;
            filter: alpha(opacity=50); /*IE滤镜，透明度50%*/
            -moz-opacity: 0.5; /*Firefox私有，透明度50%*/
            opacity: 0.5; /*其他，透明度50%*/
        }

        .hidden_pro_au {
            display: none;
            background: #fff;
            padding: 6px;
            text-align: left;
            width: 900px;
            height: 350px;
            overflow: auto;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 9999999;
        }

        .backcolor {
             background-color:#F9F900;
        }
        .backcolor_font {
             color:green;
        }
        .sumcolor {
            color:red;
            font-weight:bold;

        }

    </style>
    <script>


        function settablethead() {
            var tablenum = document.getElementsByTagName('table');

            for (var j = 0; j <= 2; j++) {
                var rows = tablenum[j].getElementsByTagName('tr')[1].getElementsByTagName('th');
                rows[j].style.height = "25px";
                for (var i = 0; i < rows.length; i++) {
                    rows[i].style.background = "#6885BE";
                }
            }
        }
    </script>
    <!--弹出框的js-->
    <script>
        function show() {
            $(".lbOverlay").css({ "height": window.screen.availHeight });
            $(".lbOverlay").show();

            var st = $(document).scrollTop(); //页面滑动高度
            var objH = $(".hidden_pro_au").height();//浮动对象的高度
            var ch = $(window).height();//屏幕的高度
            var objT = Number(st) + (Number(ch) - Number(objH)) / 2;   //思路  浮动高度+（（屏幕高度-对象高度））/2
            $(".hidden_pro_au").css("top", objT);

            var sl = $(document).scrollLeft(); //页面滑动左移宽度
            var objW = $(".hidden_pro_au").width();//浮动对象的宽度
            var cw = $(window).width();//屏幕的宽度
            var objL = Number(sl) + (Number(cw) - Number(objW)) / 2; //思路  左移浮动宽度+（（屏幕宽度-对象宽度））/2
            $(".hidden_pro_au").css("left", objL);
            $(".hidden_pro_au").slideDown("20000");//这里显示方式多种效果
        }
        function closeDiv() {
            $(".lbOverlay").hide();
            $(".hidden_pro_au").hide();
        }


        //添加财务记录表
        function addFinanceRecord()
        {
            $("#tbodylist input:text").each(function (index) {

               alert($(this).val());
            })
        }
            
         

    </script>
</head>
<body onload="settablethead()" style="background-color:#54c3cf;" >
    <form id="form1" runat="server">


        <div class="lbOverlay" onclick="closeDiv()"></div>
        <div class="hidden_pro_au">
            <table>
                <tr>
                    <td colspan="8">
                        <h3 style="height: 30px; line-height: 30px; text-align: center;">请选择并完善收款对象信息</h3>
                    </td>
                </tr>
                <tr>
                    <th>收款对象</th>
                    <th>客户公司名称</th>
                    <th>联系人</th>
                    <th>电话</th>
                    <th>手机</th>
                    <th>送货方式</th>
                    <th>地址</th>
                    <th>供应产品</th>
                </tr>
                <tr>
                    <td>
                        <select>
                            <option value="optcustomer">客户
                            </option>
                            <option value="optperson">个人
                            </option>
                        </select></td>
                    <td>
                        <input type="text" id="txtCustomerName" /></td>
                    <td>
                        <input type="text" id="txtContacts" /></td>
                    <td>
                        <input type="text" id="txtCompanyTelphone" /></td>
                    <td>
                        <input type="text" id="txtCellPhone" /></td>
                    <td>
                        <input type="text" id="txtDeliveryWay" /></td>
                    <td>
                        <input type="text" id="txtCompanyAddress" /></td>
                    <td>
                        <input type="text" id="txtSupplyProducts" /></td>
                </tr>
            </table>

            <div style="margin-top: 20px; margin-left: 20%;">
                <table>
                    <tr>
                        <td>款项类型： </td>
                        <td>
                            <input type="text" id="txtFundType" /></td>
                        <td><span>收款金额：</span> </td>
                        <td>
                            <input type="text" id="txtAmountReceivable" /></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th>备注：</th>
                        <th colspan="3">
                            <input type="text" id="txtRemarkchun " style="width: 450px;" /></th>
                        <th>(索取发票请注明)</th>
                    </tr>
                    <tr>

                        <th colspan="6" style="text-align: center; padding-left: 30px; padding-top: 20px;">
                            <input type="button" value="添加收款记录" onclick="AddFinanceRecord()" style="background-color: green; color: white; line-height: 30px; letter-spacing: 5px;" />
                        </th>
                    </tr>
                </table>
            </div>

        </div>
        <uc1:Navigation runat="server" ID="Navigation" />

        <div align="center">
            <div style="background: white; margin-bottom: 20px; top: 6%; z-index: -1; left: 0%; position: absolute;" id="divcontent">

                <table  id="tablist" style="width: 100%;">
                   
                    <tr>

                        <td>
                            <input type="text" style="width: 80px;" /></td>
                        <td>
                            <input type="text" style="width: 80px;" /></td>
                        <td>
                            <input type="button" value="日期选择" /></td>

                        <td colspan="6">
                            <h3 style="height: 30px; line-height: 30px; text-align: center;">出纳收入流水记录</h3>
                        </td>
                        <td>
                            <input type="button" id="hardName" value="新增收入" onclick="show();" /></td>
                    </tr>
                    <tr>
                        <th>序</th>
                        <th>创建日期</th>
                        <th>工单号</th>
                        <th>客户/个人</th>
                        <th>摘要</th>
                        <th>应收金额</th>
                        <th>预付</th>
                        <th>实收款</th>
                        <th>余额</th>
                        <th>让利金额</th>
                        <th>结 销</th>
                        <th>款项类型</th>
                        <th>操作</th>
                        <th>状态</th>
                        <th>财务</th>
                        <th>备注</th>
                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="checkbox" style="width:30px;" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                        <td>
                            <input type="text" id="hardName" /></td>
                    </tr>
                    <asp:Repeater ID="rptFinanceRecord" runat="server"  >
                        <ItemTemplate>
                            <tbody id="tbodylist">
                          <tr id="tr<%# Convert.ToString(Container.ItemIndex+1)%>">
                                <td style="text-align:center;width:10px;">
                                    <span>
                                        <%# Convert.ToString(Container.ItemIndex+1)%>
                                    </span>
                                    </td>
                                <td>
                                    <input type="text" id="txtDateTime<%# Convert.ToString(Container.ItemIndex+1)%>" value='<%# Eval("DateTime")%>' /></td>
                                  <td>
                                    <input type="text" id="txtCraftOrderNumber" value='<%# Eval("CraftOrderNumber")%>' /></td>
                                <td>
                                    <input type="text" id="txtCompanyName" value='<%# Eval("CompanyName")%>' /></td>
                                <td>
                                    <input type="text" id="txtAbstract" value='<%# Eval("Abstract")%>' /></td>
                                <td>
                                    <input type="text" id="txtAmountReceivable" value='<%# Eval("AmountReceivable")%>' /></td>
                                <td>
                                    <input type="text" id="txtAmountAdvanced" value='<%# Eval("AmountAdvanced")%>' /></td>
                                <td>
                                    <input type="text" id="txtAmountReceivaed" value='<%# Eval("AmountReceivaed")%>' /></td>
                                <td>
                                    <input type="text" id="txtAmountUncalled" value='<%# Eval("AmountUncalled")%>' /></td>
                                <td>
                                    <input type="text" id="txtAmountSurrenderProfits" value='<%# Eval("AmountSurrenderProfits")%>' /></td>
                                <td>
                                  <input type="checkbox" id="txtSettleDestroy" style="width:30px;" value='<%# Eval("SettleDestroy").ToString()=="是"?"checked":""    %>' /></td>
                                <td>
                                     <input type="text" id="txtFundType" value='<%# Eval("FundType")%>' /></td>
                                <td>
                                     <input type="text" id="txtID" value='<%# Eval("ID")%>' /></td>
                                <td>
                                     <input type="text" id="txtStatus" value='<%# Eval("Status")%>' /></td>
                                <td>
                                     <input type="text" id="txtAudit" value='<%# Eval("Audit")%>' /></td>
                                <td>
                                     <input type="text" id="txtRemark" value='<%# Eval("Remark")%>' /></td>
                            </tr>
                                </tbody>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tfoot id="tfootlist">

                   
                    <tr>
                        <td>
                      </td>
                        <td>
                            </td>
                        <td>
                            </td>
                        <td>
                            </td>
                        <td>
                           合计：</td>
                        <td> 
                            ￥ <asp:Label ID="Label1" runat="server" CssClass="sumcolor" Text=''><%=AmountReceivableSUM %></asp:Label></td>
                        <td>
                           ￥<asp:Label ID="Label2" runat="server"  CssClass="sumcolor" Text=''><%=AmountAdvancedSUM %></asp:Label></td>
                        <td>
                            ￥<asp:Label ID="Label3" runat="server"  CssClass="sumcolor" Text=''><%=AmountReceivaedSUM %></asp:Label></td>
                        <td>
                           ￥<asp:Label ID="Label4" runat="server"  CssClass="sumcolor" Text=''><%=AmountUncalledSUM %></asp:Label></td>
                        <td>
                            ￥<asp:Label ID="Label5" runat="server"  CssClass="sumcolor" Text=''><%=AmountSurrenderProfitsSUM %></asp:Label></td>
                        <td>
                           </td>
                        <td>
                            </td>
                        <td>
                            </td>
                        <td>
                            </td>
                        <td>
                            </td>
                        <td>
                           </td>
                    </tr>

                    <tr>
                        <td colspan="14" style="border:1px solid black;">
                            <%-- <ul id="footullist">
                            <li><input type="button" title="第一页" value="第一页" id="firstPage" /></li>
                            <li><input type="button" title="上一页" value="上一页" id="previousPage" /></li>
                            <li>1</li>
                            <li>2</li>
                            <li>3...</li>

                            <li><input type="button" title="下一页" value="下一页" id="nextPage" /></li>
                            <li><input type="button" title="最后页" value="最后页" id="lastPage" /></li>
                        </ul>--%>

                            <webdiyer:AspNetPager ID="anpList" runat="server" AlwaysShow="True" FirstPageText="首页"   onpagechanging="AspNetPager1_PageChanging"
                                CustomInfoHTML="共%RecordCount%条记录，当前第%CurrentPageIndex%/%PageCount%页，
                            每页%PageSize%条记录"
                                LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"
                                ShowCustomInfoSection="Left" UrlPaging="true" PageSize="10" UrlPageIndexName="page">
                            </webdiyer:AspNetPager>
                          

                        </td>
                        <td colspan="2" >168条/共255页

                        </td>
                    </tr>
                    <tr>

                        <td colspan="2">
                            <input type="button" value="结金额（批量结销已选项）" />

                        </td>

                        <td colspan="2">
                            <input type="button" value="保存修改" onclick="addFinanceRecord()" />

                        </td>

                        <td colspan="2">
                            <input type="button" value="收据单（打印已选项）" />

                        </td>
                        <td colspan="2">
                            <input type="button" value="送货单（打印已选项）" />

                        </td>
                        <td colspan="2">
                            <input type="button" value="另存为Execl" />

                        </td>
                        <td colspan="6"></td>

                    </tr>
                     </tfoot>
                </table>



            </div>

        </div>
    </form>
    <script>

        $(function () {
           // $("#tablist tr,input,td").click(function () {
                // document.getElementById("oddNum").value = this.id; //每行设置不同的id值，该行是获取当前行的唯一值 
              //  $(this).addClass("backcolor").siblings("tr").removeClass("backcolor"); //这行是进行背景色的切换，backcolor 是提前定义好的外部css样式，这里进行添加与删除同类的，即实现了选中改行，其他行颜色去掉。 backcolor 中的属性  要加上 !important ，提高其优先级
                //  $(this).siblings("tr").find("td").removeClass("backcolor_font");   //下边两行是修改该tr中的字体颜色，该行的作用是删除样式
                // $(this).find("td").addClass("backcolor_font"); //该行是添加样式，因为想要实现的效果是点击某行，字体颜色切换，只有一行的字体颜色改变
            $("#tbodylist tr,td,input").click(function () {

                var tr = $(this).parents('tr');
                $("#tbodylist tr,td,input").removeClass("backcolor");
               // $(this).removeClass("backcolor");

                  
              //  $(tr).not('#tfootlist').addClass("backcolor");
                $(this).not('#tfootlist tr,td,input ').addClass("backcolor");
                  //  $('#tbodylist tr:nth-child(3n)').removeClass("backcolor");
                        //.siblings("tr").removeClass("backcolor");
                    //var $t = $(this).val();
                    //$(this).blur(function () {
                    //    var $s = $(this).val();
                    //    if ($t != $s) {
                    //        var k = parseInt($(this).parents('td').index()) + parseInt(1);
                    //        //alert(k);
                    //        alert("第:" + parseInt($(this).parents('tr').index() + 1) + "行第:" + k + "列");
                    //    }
                    //});
                });

           // });



        })

    </script>
</body>
</html>
