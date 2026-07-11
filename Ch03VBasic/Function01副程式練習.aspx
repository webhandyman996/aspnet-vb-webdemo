<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '副程式練習
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim N, SumF As Integer
        N = 60
        SumF = CsumF(N)
        Response.Write("從 1 加到 " & N & " 的總和為 " & SumF & "<br/>")

        N = 110
        SumF = CsumF(N)
        Response.Write("從 1 加到 " & N & " 的總和為 " & SumF & "<br/>")
    End Sub

    Function CsumF(Num As Integer) As Integer
        Dim i, iSum As Integer
        iSum = 0
        For i = 1 To Num
            iSum = iSum + i
        Next
        CsumF = iSum
    End Function
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
