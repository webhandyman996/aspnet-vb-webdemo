<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    'Do While反覆兩數值相加，再將結果置入數值，繼續相加
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim a As Long = 1, b As Long = 1, c As Long = 0
        Response.Write(a & ", " & b & ", ")

        c = a + b
        a = b
        b = c

        Do While c <= 1836311903
            Response.Write(c & ", " + "<BR>")
            c = a + b
            a = b
            b = c
        Loop
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
