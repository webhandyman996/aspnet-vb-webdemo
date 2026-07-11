<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim i As Integer
        Dim tempText As String
        tempText = ""
        
        For i = 0 To ListBox1.Items.Count - 1
            If ListBox1.Items(i).Selected = True Then
                tempText = tempText & ListBox1.Items(i).Text & "  "
            End If
        Next
        
        Label1.Text = "選擇的飲料是：" & tempText
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
    
        請選擇飲料<br />
        <asp:DropDownList ID="ListBox1" runat="server" SelectionMode="Multiple">
            <asp:ListItem>紅茶</asp:ListItem>
            <asp:ListItem>綠茶</asp:ListItem>
            <asp:ListItem>奶茶</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確定" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
