<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim drink As String = ""
        Dim main As String = ""
        Dim Price As Integer = 0

        '清空訊息欄
        Label1.Text = ""

        If RadioButtonList1.SelectedIndex >= 0 Then
            drink = RadioButtonList1.SelectedItem.Text
            If drink.Contains("+") Then
                Dim Index = drink.IndexOf("+")
                drink = drink.Substring(0, Index)
            End If
        End If

        If RadioButtonList2.SelectedIndex >= 0 Then
            main = RadioButtonList2.SelectedItem.Text
        End If

        If drink = "" And main = "" Then
            Label1.Text = "未選擇任何餐點！"
            Return
        End If
        Label1.Text = "你選擇了"
        If Not drink = "" Then
            Label1.Text += "飲料：[ " & drink & " ] "
        End If
        If Not main = "" Then
            Label1.Text += "主餐：[ " & main & " ]"
        End If
        Price = Integer.Parse(RadioButtonList1.SelectedItem.Value) + Integer.Parse(RadioButtonList2.SelectedItem.Value)
        Label1.Text += "總金額為:[" & Price & " ]"
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
        請選擇套餐組合<br />
        -----------------------------------------------------<br />
        <br />
        主餐項目<br />
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem Selected="True" Value="50" >法式三明治 50元</asp:ListItem>
            <asp:ListItem Value="50" >蔬食漢堡 50元</asp:ListItem>
            <asp:ListItem Value="60" >牛肉麵 60元</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        附餐飲料<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" ToolTip="多加5元即可享受奶類附餐">
            <asp:ListItem Selected="True" Value="0" >紅茶</asp:ListItem>
            <asp:ListItem Value="0" >綠茶</asp:ListItem>
            <asp:ListItem Value="5" >奶紅 +5元</asp:ListItem>
            <asp:ListItem Value="5">奶綠 +5元</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="清除飲料" ToolTip="清除以選取的飲料項目" />
        <br />
        ------------------------------------------------------<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確定" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>    
    
    </div>
    </form>
</body>
</html>
