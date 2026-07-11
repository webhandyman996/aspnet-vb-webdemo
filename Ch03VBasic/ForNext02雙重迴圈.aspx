<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '雙重迴圈
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim i, j As Integer
        Response.Write("九九乘法表<br/>")
        For i = 1 To 9
            For j = 1 To 9
                Response.Write(i & "X" & j & "=" & i * j & Chr(9))
            Next
            Response.Write("<br/>")
        Next
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
