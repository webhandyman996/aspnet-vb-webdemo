<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '數值運算式轉字串
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim antA As Integer = 60 ' 50
        Dim antB As Integer = 60 '43
        Dim dist As Integer = 60 '25300
        'D/(S1+S2)=T'
        Response.Write("兩隻小螞蟻將於 " & dist / (antA + antB) & " 分鐘後相遇")
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
