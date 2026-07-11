<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '階層運算範例(輸入值a必須在20以內，否則b會溢位 超出Long可運算範圍)
    'Long.maxvalue =9223372036854775807	

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim a As Long
        Dim b As Long
        a = Val(TextBox1.Text)
        b = 1
        For i = 1 To a
            b = b * i '(2432902008176640000 * 3之後就會爆台)
        Next i
        Label1.Text = a & "!=" & b
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
        請輸入20以內的數值<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br/>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
