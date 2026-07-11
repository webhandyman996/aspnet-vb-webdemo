<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        CheckBoxList1.Items.Add(TextBox1.Text)
        TextBox1.Text = ""
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Dim Index As Integer
        
        For Index = CheckBoxList1.Items.Count - 1 To 0 Step -1
            If CheckBoxList1.Items(Index).Selected = True Then
                CheckBoxList1.Items.RemoveAt(Index)
            End If
        Next
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        CheckBoxList1.Items.Clear()
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
    
        飲料清單<br />
        飲料名稱<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="新增" />
        <br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="Button2" runat="server" Text="刪除勾選項目" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="清除所有項目" OnClick="Button3_Click" />
    
    </div>
    </form>
</body>
</html>
