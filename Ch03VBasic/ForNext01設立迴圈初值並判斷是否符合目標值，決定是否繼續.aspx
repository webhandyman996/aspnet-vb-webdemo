<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '設立迴圈初值並判斷是否符合目標值，決定是否繼續
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim i, N, iSum As Integer
        iSum = 0
        N = 100
        For i = 1 To N
            iSum = iSum + i
        Next
        Response.Write("從 1 加到 " & N & " 的總和為 " & iSum)
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
