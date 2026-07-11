<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    ' Do While 連加 條件未達成則進入回圈
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim i, iSum As Integer
        i = 0
        iSum = 0
        Do While iSum <= 5000 '條件未達成則作
            i = i + 1
            iSum = iSum + i
        Loop
        Response.Write("從 1 加到 " & i & " 的總和為 " & iSum & " 已超過預設的5000上限")
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
