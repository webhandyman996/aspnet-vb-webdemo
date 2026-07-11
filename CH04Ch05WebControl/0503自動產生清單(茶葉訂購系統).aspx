<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '自動產生清單(茶葉訂購系統)
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        RadioButtonList1.Items.Add(New ListItem(TextBox1.Text & ", " & TextBox2.Text & "公斤", TextBox2.Text))
        TextBox1.Text = ""
        TextBox2.Text = ""
    End Sub
    'Remove Order Item
    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Dim Index As Integer

        For Index = RadioButtonList1.Items.Count - 1 To 0 Step -1
            If RadioButtonList1.Items(Index).Selected = True Then
                RadioButtonList1.Items.RemoveAt(Index)
            End If
        Next
    End Sub
    'Clear All Order
    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        RadioButtonList1.Items.Clear()
    End Sub
    'Caculator the Kg
    Protected Sub Button4_Click(sender As Object, e As EventArgs)
        Dim Index As Integer
        Dim totalW As Integer = 0
        Label1.Text = ""

        For Index = RadioButtonList1.Items.Count - 1 To 0 Step -1
            totalW = totalW + RadioButtonList1.Items(Index).Value
        Next

        Label1.Text="總重：" & totalW & "公斤"
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            width: 191px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td align="center" bgcolor="#FFCC00" class="auto-style2" colspan="2">茶葉訂購清單</td>
            </tr>
            <tr>
                <td bgcolor="#FFCC00" class="auto-style3" rowspan="5">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/0503自動產生清單(茶葉訂購系統).aspx" ToolTip="Tea Purchasing System">Purchasing System</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/0503自動產生清單(飲料訂購系統).aspx" ToolTip="Employee Tea Selling system">Selling system</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server" ToolTip="Customer Self-service Ordering System" NavigateUrl="~/0503使用者自助訂餐系統.aspx">Customer System</asp:HyperLink>
                </td>
                <td align="char" valign="middle">飲料名稱&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp; 訂購&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;
        公斤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="新增" />
                </td>
            </tr>
            <tr>
                <td>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="Button2" runat="server" Text="刪除勾選項目" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="清除所有項目" OnClick="Button3_Click" />
    
                </td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="總重" />
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            
    </div>
    </form>
</body>
</html>
