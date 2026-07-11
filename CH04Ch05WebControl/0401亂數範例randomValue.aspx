<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '亂數範例randomValue
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim generator As New Random
        Dim randomValue1, randomValue2 As Integer
        randomValue1 = generator.Next(1, 101)
        Label1.Text = randomValue1
        randomValue2 = generator.Next(1, 101)
        Label2.Text = randomValue2
        If randomValue1 = randomValue2 Then
            Label3.Text = "等於"
        Else
            If randomValue1 > randomValue2 Then
                Label3.Text = "大於"
            Else
                Label3.Text = "小於"
            End If
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
    隨機亂數1:<asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
    隨機亂數2:<asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
    隨機亂數1 <asp:Label ID="Label3" runat="server" Text="" Font-Underline="True"></asp:Label> 隨機亂數2
    </div>
    </form>
</body>
</html>
