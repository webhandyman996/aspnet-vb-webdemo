<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    'Select Case 執行翻譯範例(Number to String by Select Case )
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim Trans As Integer
        Trans = 130
        Select Case Trans
            Case 120 To 219
                Response.Write(Trans & "的英文為ONE")
            Case 2
                Response.Write(Trans & "的英文為TWO")
            Case 3
                Response.Write(Trans & "的英文為THREE")
            Case 4
                Response.Write(Trans & "的英文為FOUR")
            Case 5
                Response.Write(Trans & "的英文為FIVE")
            Case Else  '
                Response.Write(Trans & "此數字超過範圍！")
        End Select
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
