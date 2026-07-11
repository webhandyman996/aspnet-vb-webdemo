<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        
        Label1.Text = ""
        
        If CheckBox1.Checked = True Then
            Label1.Text = Label1.Text & CheckBox1.Text & " "
        End If

        If CheckBox2.Checked = True Then
            Label1.Text = Label1.Text & CheckBox2.Text & " "
        End If

        If CheckBox3.Checked = True Then
            Label1.Text = Label1.Text & CheckBox3.Text & " "
        End If

        If Label1.Text <> "" Then
            Label1.Text = "你的選擇是：" & Label1.Text
        End If
        
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
    
        請選擇你喜歡的飲料<br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="紅茶" />
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="綠茶" />
        <br />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="奶茶" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確定" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
