<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '迴圈中判斷另一個條件iSum>5000，若iSum滿足條件則調出迴圈Exit For
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim i, N, iSum As Integer
        iSum = 0
        N = 50
        For i = 1 To N
            iSum = iSum + i
            If iSum > 5000 Then
                Exit For
            End If
        Next
        If i = N + 1 Then
            Response.Write("從 1 加到 " & N & " 的總和為 " & iSum)
        Else
            Response.Write("從 1 加到 " & i & " 的總和為 " & iSum & " 已超過預設的5000上限")
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
    
    </div>
    </form>
</body>
</html>
