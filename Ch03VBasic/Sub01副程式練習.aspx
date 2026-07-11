<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '副程式範例
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim N As Integer
        N = 100
        Call CSum(N)

        N = 50
        CSum(N)
    End Sub

    Sub CSum(Num As Integer)
        Dim i, iSum As Integer
        iSum = 0
        For i = 1 To Num
            iSum = iSum + i
        Next
        Response.Write("從 1 加到 " & Num & " 的總和為 " & iSum & "<br/>")
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
