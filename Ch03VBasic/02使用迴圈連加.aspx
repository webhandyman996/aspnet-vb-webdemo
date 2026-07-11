<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '使用迴圈連加
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim num, numM, i As Integer
        Dim str As String
        num = 10
        numM = 0
        str = ""
        For i = 1 To num
            numM = numM + i
            If i = num Then
                str = str & i & " = " & numM
            Else
                str = str & i & " + "
            End If
        Next
        Response.Write(str)
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
