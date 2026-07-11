<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim Index As Integer
        Dim USelect As String
        
        USelect = ""
        
        For Index = 0 To CheckBoxList1.Items.Count - 1
            If CheckBoxList1.Items(Index).Selected = True Then
                USelect = USelect & CheckBoxList1.Items(Index).Text & " [價格：" & CheckBoxList1.Items(Index).Value & "元]<br/>"
            End If
        Next
        
        If USelect <> "" Then
            Label1.Text = "你的選擇是：<br/>" & USelect
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
    請選擇你喜歡的飲料<br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatLayout="OrderedList">
            <asp:ListItem Value="10">紅茶</asp:ListItem>
            <asp:ListItem Value="12">綠茶</asp:ListItem>
            <asp:ListItem Value="15">奶茶</asp:ListItem>
        </asp:CheckBoxList>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確定" />
    
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
