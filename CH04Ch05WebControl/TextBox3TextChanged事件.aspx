<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    'Enter時發生TextChanged事件
    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs)
        Literal1.Text = TextBox1.Text
        'sender

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
    
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True">在此輸入需要的文字</asp:TextBox>
        <br />
        <br />
        你輸入的文字是：<asp:Literal ID="Literal1" runat="server"></asp:Literal>
    
    </div>
    </form>
</body>
</html>
