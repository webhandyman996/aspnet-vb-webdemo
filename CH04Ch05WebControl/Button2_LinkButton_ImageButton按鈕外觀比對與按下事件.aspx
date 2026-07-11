<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Literal1.Text = "按鈕A被按了！"
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Literal1.Text = "按鈕B被按了！"
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs)
        Literal1.Text = "LinkButton被按了！"
    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs)
        Literal1.Text = "ImageButton被按了！"
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
    
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="A按鈕" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="B按鈕" OnClick="Button2_Click" />
    
    &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
    
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="71px" ImageUrl="Images/Imagebutton.png" OnClick="ImageButton1_Click" Width="200px" />
    
    </div>
    </form>
</body>
</html>
