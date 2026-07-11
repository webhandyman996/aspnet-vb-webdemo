<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim Score As Integer
        Score = 92
        If Score >= 90 Then
            Response.Write(Score & "分是優等！")
        ElseIf Score < 90 And Score >= 80 Then
            Response.Write(Score & "分是甲等！")
        ElseIf Score < 80 And Score >= 70 Then
            Response.Write(Score & "分是乙等！")
        ElseIf Score < 70 And Score >= 60 Then
            Response.Write(Score & "分是丙等！")
        Else
            Response.Write(Score & "分是不及格！")
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
