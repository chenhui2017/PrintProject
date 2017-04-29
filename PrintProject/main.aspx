<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PrintProject.Main" %>

<%@ Register Src="~/UserControl/Navigation.ascx" TagPrefix="uc1" TagName="Navigation" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>��ҵ��Ϣ����ϵͳ</title>
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
                        <th>���ȴ���</th>
                        <th>������</th>
                        <th>ӡ������</th>
                        <th>�ͻ�����</th>
                        <th>��Ʒ�ߴ�</th>
                        <th>ӡ������</th>
                        <th>�µ�ʱ��</th>
                        <th>����</th>
                    </tr>
                    <tr>
                        <th>
                            <ul class="ullist">
                                <li>�ȴ�</li>
                                <li>����</li>
                                <li>���</li>
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
                            <input type="button" title="��ѯ" id="selectData" value="��ѯ" /></th>
                        <th>&nbsp;</th>
                    </tr>

                </thead>
                <tbody>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>��ֽ</li>
                                <li>CPT</li>
                                <li>ӡˢ</li>
                                <li>װ��</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>������</td>
                        <td>�ַ�����</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10��06��15��23</td>
                        <td>10��34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>��ֽ</li>
                                <li>CPT</li>
                                <li>ӡˢ</li>
                                <li>װ��</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>������</td>
                        <td>�ַ�����</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10��06��15��23</td>
                        <td>10��34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>��ֽ</li>
                                <li>CPT</li>
                                <li>ӡˢ</li>
                                <li>װ��</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>������</td>
                        <td>�ַ�����</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10��06��15��23</td>
                        <td>10��34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>��ֽ</li>
                                <li>CPT</li>
                                <li>ӡˢ</li>
                                <li>װ��</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>������</td>
                        <td>�ַ�����</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10��06��15��23</td>
                        <td>10��34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>��ֽ</li>
                                <li>CPT</li>
                                <li>ӡˢ</li>
                                <li>װ��</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>������</td>
                        <td>�ַ�����</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10��06��15��23</td>
                        <td>10��34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>��ֽ</li>
                                <li>CPT</li>
                                <li>ӡˢ</li>
                                <li>װ��</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>������</td>
                        <td>�ַ�����</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10��06��15��23</td>
                        <td>10��34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>��ֽ</li>
                                <li>CPT</li>
                                <li>ӡˢ</li>
                                <li>װ��</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>������</td>
                        <td>�ַ�����</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10��06��15��23</td>
                        <td>10��34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>��ֽ</li>
                                <li>CPT</li>
                                <li>ӡˢ</li>
                                <li>װ��</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>������</td>
                        <td>�ַ�����</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10��06��15��23</td>
                        <td>10��34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>��ֽ</li>
                                <li>CPT</li>
                                <li>ӡˢ</li>
                                <li>װ��</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>������</td>
                        <td>�ַ�����</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10��06��15��23</td>
                        <td>10��34</td>

                    </tr>
                    <tr>
                        <td>
                            <ul class="ullist">
                                <li>��ֽ</li>
                                <li>CPT</li>
                                <li>ӡˢ</li>
                                <li>װ��</li>

                            </ul>

                        </td>
                        <td><a href="#">151006144407-77</a></td>
                        <td>������</td>
                        <td>�ַ�����</td>
                        <td>677*32</td>
                        <td>655</td>
                        <td>10��06��15��23</td>
                        <td>10��34</td>

                    </tr>
                </tbody>
                <tfoot>

                    <tr>
                        <td colspan="6" style="border: 1px solid red;">



                            <ul id="footullist">
                                <li>
                                    <input type="button" title="��һҳ" value="��һҳ" id="firstPage" /></li>
                                <li>
                                    <input type="button" title="��һҳ" value="��һҳ" id="previousPage" /></li>
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
                                    <input type="button" title="��һҳ" value="��һҳ" id="nextPage" /></li>
                                <li>
                                    <input type="button" title="���ҳ" value="���ҳ" id="lastPage" /></li>
                            </ul>

                        </td>
                        <td colspan="2" style="border: 1px solid red;">168��/��255ҳ

                        </td>
                    </tr>
                </tfoot>

            </table>

        </div>
       



    </form>
</body>
</html>
