<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '印出99乘法表
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Response.Write("<center>")
        Response.Write("九九乘法表" & "<br>")
        Response.Write("<table border = 1>")
        Response.Write("<tr>")
        Response.Write("<td> " + "</td>")
        For x = 1 To 9
            Response.Write("<td>" & "<center>" & x & "</center>" & "</td>")

        Next x
        Response.Write("</tr>")
        For i = 1 To 9 '行
            Response.Write("<tr>")
            Response.Write("<td>" & i & "</td>")
            For j = 1 To 9 '列
                Response.Write("<td>" & j & "*" & i & "=" & j * i & "</td>")
            Next j
            Response.Write("</tr>")
        Next i
        Response.Write("</table>")
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
