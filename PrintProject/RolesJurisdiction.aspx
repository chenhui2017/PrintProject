<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RolesJurisdiction.aspx.cs" Inherits="PrintProject.RolesJurisdiction" %>

<%@ Register Assembly="AspNetPager2.0" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="~/UserControl/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>��ɫȨ�޹���</title>
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
            filter: alpha(opacity=50); /*IE�˾���͸����50%*/
            -moz-opacity: 0.5; /*Firefox˽�У�͸����50%*/
            opacity: 0.5; /*������͸����50%*/
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
                        <td>�û����ͣ�</td>
                        <td>
                            <asp:DropDownList ID="ddlUserType" runat="server" Width="94px" >
                                <asp:ListItem Value="">��ѡ��</asp:ListItem>
                                <asp:ListItem Value="��������Ա">��������Ա</asp:ListItem>
                                <asp:ListItem Value="��ͨ����Ա">��ͨ����Ա</asp:ListItem>
                                <asp:ListItem Value="�����û�">�����û�</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td><asp:Button ID="btnSearch" runat="server" Text="��  ѯ" OnClick="btnSearch_Click"/></td>
                        <td>
                            <input type="button" onclick="GetAuthorityListByUserType()" value="��  ��" />
                            <%--<asp:Button ID="btnUpdate" Text="��  ��" OnClick="GetAuthorityListByUserType"/></td>--%>
                    </tr>
                </table>
            </div>

            <div>
                <%--<asp:GridView ID="dvList" runat="server"></asp:GridView>--%>
                <table style="padding-left:50px;">
                    <asp:Repeater ID="rptRolesJurisdiction" runat="server"  >
                        <HeaderTemplate>
                            <tr>
                                <th>��</th>
                                <th>ID</th>
                                <th>��ɫ</th>
                                <th>ҳ��</th>
                                <th>Ȩ���б�</th>
                                <th>�Ƿ񼤻�</th>
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
                                <webdiyer:AspNetPager ID="anpList" runat="server" AlwaysShow="True" FirstPageText="��ҳ"   onpagechanging="AspNetPager1_PageChanging"
                                    CustomInfoHTML="��%RecordCount%����¼����ǰ��%CurrentPageIndex%/%PageCount%ҳ��
                                ÿҳ%PageSize%����¼"
                                    LastPageText="βҳ" NextPageText="��һҳ" PrevPageText="��һҳ"
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
                        <td style="width:320px;"><input id="ckAll" type="checkbox" onclick="checkAll();" />ȫѡ</td>
                        <td><asp:Button ID="btnSaveRoleJuridiction" Text="��  ��" runat="server" style="margin:10px 0px 10px 10px;" OnClick="btnSaveRoleJuridiction_Click"/></td>
                        <td><input type="button" value="ȡ  ��" onclick="closeDiv()" style="margin:10px 0px 10px 10px;" /></td>
                    </tr>
                </table>                
                <asp:GridView ID="dvEditList" runat="server" AutoGenerateColumns="False" >
                    <Columns>
                        <asp:TemplateField HeaderText="���" ControlStyle-Width="10px" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="��ɫ" ControlStyle-Width="80px" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblRole" runat="server" Text='<%# Eval("Role") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ҳ��" ControlStyle-Width="100px" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:Label ID="lblExplain" runat="server" Text='<%# Eval("Explain") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="����" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbAdd" runat="server" Checked='<%# Eval("Add").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ɾ��" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbDelete" runat="server" Checked='<%# Eval("Delete").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="�޸�" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbEdit" runat="server" Checked='<%# Eval("Edit").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="��ѯ" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbSelect" runat="server" Checked='<%# Eval("Select").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="����" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbExport" runat="server" Checked='<%# Eval("Export").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="��ӡ" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:CheckBox ID="cbPrint" runat="server" Checked='<%# Eval("Print").Equals("0") ? false:true %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="�Ƿ񼤻�" ItemStyle-HorizontalAlign="Center">
                            <%--<HeaderTemplate> 
                                <input id="ckActivateAll" type="checkbox" onclick="checkAll();" />�Ƿ񼤻�
                            </HeaderTemplate>--%> 
                            <ItemTemplate>
                                <asp:CheckBox ID="cbActivate" runat="server" Checked='<%# Eval("Activate").Equals("��") ? false:true %>' />
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
        //document.getElementById("divEditRolesJurisdiction").style.display = "none";//����
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
            alert("��ѡ���û�����");
            return false;
        }
        //var RolesHide = document.getElementById("lblRolesHide").value;
        //document.getElementById("lblRolesHide").value("UserType");
    }

    function GetAuthorityListByUserType() {
        var UserType = document.getElementById("ddlUserType").value;
        if (UserType == "") {
            alert("��ѡ���û�����");
            return false;
        }

        //document.getElementById("divEditRolesJurisdiction").style.display = "";//��ʾ
        show();
    }


    function show() {
        $(".lbOverlay").css({ "height": window.screen.availHeight });
        $(".lbOverlay").show();

        var st = $(document).scrollTop(); //ҳ�滬���߶�
        var objH = $(".hidden_pro_au").height();//��������ĸ߶�
        var ch = $(window).height();//��Ļ�ĸ߶�
        var objT = Number(st) + (Number(ch) - Number(objH)) / 2;   //˼·  �����߶�+������Ļ�߶�-����߶ȣ���/2
        $(".hidden_pro_au").css("top", objT);

        var sl = $(document).scrollLeft(); //ҳ�滬�����ƿ��
        var objW = $(".hidden_pro_au").width();//��������Ŀ��
        var cw = $(window).width();//��Ļ�Ŀ��
        var objL = Number(sl) + (Number(cw) - Number(objW)) / 2; //˼·  ���Ƹ������+������Ļ���-�����ȣ���/2
        $(".hidden_pro_au").css("left", objL);
        $(".hidden_pro_au").slideDown("20000");//������ʾ��ʽ����Ч��
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