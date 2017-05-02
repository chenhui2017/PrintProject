<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RolesJurisdiction.aspx.cs" Inherits="PrintProject.RolesJurisdiction" %>

<%@ Register Assembly="AspNetPager2.0" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/UserControl/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>角色权限管理</title>
    <script src="js/jquery.js"></script>
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
            width: 500px;
            height: 90%;
            overflow: auto;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 9999999;
        }
    </style>
</head>
<body onload="settablethead()" style="background-color:#54c3cf;">
    
    <form id="form1" runat="server">
        <uc1:Navigation runat="server" id="Navigation" />
        <div id="divcontent">
            
            <div id="divHeadSelected">
                <table style="padding-left:50px;">
                    <tr>
                        <td>用户类型：</td>
                        <td>
                            <asp:DropDownList ID="ddlUserType" runat="server" Width="94px" >
                                <asp:ListItem Value="">请选择</asp:ListItem>
                                <asp:ListItem Value="超级管理员">超级管理员</asp:ListItem>
                                <asp:ListItem Value="普通管理员">普通管理员</asp:ListItem>
                                <asp:ListItem Value="超级用户">超级用户</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td><asp:Button ID="btnSearch" runat="server" Text="查  询" OnClick="btnSearch_Click"/></td>
                        <td>
                            <input type="button" onclick="GetAuthorityListByUserType()" value="更  改" />
                            <%--<asp:Button ID="btnUpdate" Text="更  改" OnClick="GetAuthorityListByUserType"/></td>--%>
                    </tr>
                </table>
            </div>

            <div>
                <%--<asp:GridView ID="dvList" runat="server"></asp:GridView>--%>
                <table style="padding-left:50px;">
                    <asp:Repeater ID="rptRolesJurisdiction" runat="server"  >
                        <HeaderTemplate>
                            <tr>
                                <th>序</th>
                                <th>ID</th>
                                <th>角色</th>
                                <th>页面</th>
                                <th>权限列表</th>
                                <th>是否激活</th>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tbody id="tbodylist">
                                <tr id="tr<%# Convert.ToString(Container.ItemIndex+1)%>">
                                    <td style="text-align:center;width:10px;">
                                        <span>
                                            <%# Convert.ToString(Container.ItemIndex+1)%>
                                        </span>
                                    </td>
                                    <td style="text-align:center;width:50px;"><label id="txtID<%# Convert.ToString(Container.ItemIndex+1)%>"><%# Eval("ID")%></label></td>
                                    <td style="text-align:center;width:150px;"><label id="txtRole<%# Convert.ToString(Container.ItemIndex+1)%>"><%# Eval("Role")%></label></td>
                                    <td style="text-align:center;width:200px;"><label id="txtExplain<%# Convert.ToString(Container.ItemIndex+1)%>"><%# Eval("Explain")%></label></td>
                                    <td style="text-align:center;width:150px;"><label id="txtPowerString%# Convert.ToString(Container.ItemIndex+1)%>"><%# Eval("PowerString")%></label></td>
                                    <td style="text-align:center;width:80px;"><label id="txtActivate<%# Convert.ToString(Container.ItemIndex+1)%>"><%# Eval("Activate")%></label></td>
                                </tr>
                            </tbody>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tfoot id="tfootlist">
                        <tr>
                            <td colspan="6" style="border:1px solid black;">
                                <webdiyer:AspNetPager ID="anpList" runat="server" AlwaysShow="True" FirstPageText="首页"   onpagechanging="AspNetPager1_PageChanging"
                                    CustomInfoHTML="共%RecordCount%条记录，当前第%CurrentPageIndex%/%PageCount%页，
                                每页%PageSize%条记录"
                                    LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"
                                    ShowCustomInfoSection="Left" UrlPaging="true" PageSize="20" UrlPageIndexName="page">
                                </webdiyer:AspNetPager>

                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            
            <div class="lbOverlay" onclick="closeDiv()"></div>
            <div class="hidden_pro_au">
                <table>
                    <tr>
                        <td style="width:320px;"><input id="ckAll" type="checkbox" onclick="checkAll();" />全选</td>
                        <td><asp:Button ID="btnSaveRoleJuridiction" Text="保  存" runat="server" style="margin:10px 0px 10px 10px;" OnClick="btnSaveRoleJuridiction_Click"/></td>
                        <td><input type="button" value="取  消" onclick="closeDiv()" style="margin:10px 0px 10px 10px;" /></td>
                    </tr>
                </table>                
                <asp:GridView ID="dvEditList" runat="server" AutoGenerateColumns="False" >
                    <Columns>
                        <asp:TemplateField HeaderText="编号" ControlStyle-Width="10px" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="角色" ControlStyle-Width="80px" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblRole" runat="server" Text='<%# Eval("Role") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="页面" ControlStyle-Width="100px" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblExplain" runat="server" Text='<%# Eval("Explain") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="增加" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbAdd" runat="server" Checked='<%# Eval("Add").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="删除" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbDelete" runat="server" Checked='<%# Eval("Delete").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="修改" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbEdit" runat="server" Checked='<%# Eval("Edit").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="查询" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbSelect" runat="server" Checked='<%# Eval("Select").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="导出" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbExport" runat="server" Checked='<%# Eval("Export").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="打印" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbPrint" runat="server" Checked='<%# Eval("Print").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="是否激活" ItemStyle-HorizontalAlign="Center">
                            <%--<HeaderTemplate> 
                                <input id="ckActivateAll" type="checkbox" onclick="checkAll();" />是否激活
                            </HeaderTemplate>--%> 
                            <ItemTemplate>
                                <asp:CheckBox ID="cbActivate" runat="server" Checked='<%# Eval("Activate").Equals("否") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>

<script type="text/javascript">
    function settablethead() {
        //document.getElementById("divEditRolesJurisdiction").style.display = "none";//隐藏
        var tablenum = document.getElementsByTagName('table');

        //for (var j = 0; j <= 2; j++) {
        //    var rows = tablenum[j].getElementsByTagName('tr')[1].getElementsByTagName('th');
        //    rows[0].style.height = "25px";
        //    for (var i = 0; i < rows.length; i++) {
        //        rows[i].style.background = "#6885BE";
        //    }
        //}
    }

    function GetAuthorityList() {
        var UserType = document.getElementById("ddlUserType").value;
        if (UserType == "") {
            alert("请选择用户类型");
            return false;
        }
        //var RolesHide = document.getElementById("lblRolesHide").value;
        //document.getElementById("lblRolesHide").value("UserType");
    }

    function GetAuthorityListByUserType() {
        var UserType = document.getElementById("ddlUserType").value;
        if (UserType == "") {
            alert("请选择用户类型");
            return false;
        }

        //document.getElementById("divEditRolesJurisdiction").style.display = "";//显示
        show();
    }


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

    function checkAll() {
        var ActivateAll = document.getElementsByTagName("ckAll");
        ActivateAll.checked = !ActivateAll.checked;
        var inputs = document.getElementById("dvEditList").getElementsByTagName("input");
        if (ActivateAll.checked) {
            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].type = "checkbox") {
                    inputs[i].checked = true;
                }
            }
        } else {
            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].type = "checkbox") {
                    inputs[i].checked = false;
                }
            }
        }
    }
</script>