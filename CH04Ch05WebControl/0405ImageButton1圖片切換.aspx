<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    'ImageButton1圖片切換
    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs)
        If ImageButton1.ImageUrl = "~/Images/Ad01.png" Then
            ImageButton1.ImageUrl = "~/Images/Ad02.png"
        Else
            ImageButton1.ImageUrl = "~/Images/Ad01.png"
        End If
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Ad01.png" OnClick="ImageButton1_Click" />

    </div>
    </form>
</body>
</html>
