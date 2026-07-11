<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Dim VarA As Integer = 100 '全域變數

    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Response.Write("Page_Load中：" & VarA & "<br/>")
        My()
        VarA = VarA + 10
        Response.Write("Page_Load中2：" & VarA & "<br/>")
    End Sub

    Sub My()
        Dim VarA As Integer = 50
        Response.Write("My中：" & VarA & "<br/>")
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
    
    </div>
    </form>
</body>
</html>
