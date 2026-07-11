<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    'Now.AddDays日期計算
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Label1.Text = Now.ToShortDateString
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Label2.Text = TextBox1.Text & " 天後的日期為 " & Now.AddDays(TextBox1.Text).ToShortDateString
        Label3.Text = TextBox1.Text & " 天前的日期為 " & Now.AddDays(-1 * Val(TextBox1.Text)).ToShortDateString
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        今天日期
        <asp:Label ID="Label1" runat="server"></asp:Label><br />
        <br />
        輸入間隔天數
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" /><br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label><br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
