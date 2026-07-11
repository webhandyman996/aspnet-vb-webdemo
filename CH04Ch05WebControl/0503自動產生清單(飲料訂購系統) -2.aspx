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
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        飲料訂購清單<br />
        飲料名稱<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp; 訂購<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        公斤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="新增" />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="Button2" runat="server" Text="刪除勾選項目" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="清除所有項目" OnClick="Button3_Click" />
    
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="總重" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
