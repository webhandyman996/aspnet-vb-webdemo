<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '陣列練習(初始化與輸出)
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim i, N, iSum As Integer
        Dim ArrA(50) As Integer '宣告一個寬度為Integer維度為50的陣列
        iSum = 0
        N = 100
        'Step1 給陣列初值
        For i = 1 To N
            iSum = iSum + i
            ArrA(i - 1) = iSum
        Next
        'Step2 輸出陣列值
        For i = 1 To N
            Response.Write("從 1 加到 " & i & " 的總和為 " & ArrA(i - 1) & "<br/>")
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
