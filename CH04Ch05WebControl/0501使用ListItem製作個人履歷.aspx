<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    '使用ListItem製作個人履歷
    Sub Button_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim a As String
        a += "姓名：" & TextBox1.Text & "<br>"
        a += "性別：" & RadioButtonList1.SelectedItem.Text & "<br>"
        a += "最高學歷：" & DropDownList1.SelectedItem.Text & "<br>"

        Dim I As Integer, Msg As String = "喜歡的活動："
        For I = 0 To llike.Items.Count - 1
            If llike.Items(I).Selected Then
                Msg = Msg & llike.Items(I).Value & "　"
            End If
        Next
        a += Msg & "<br>"
        HaHa.Text = a
    End Sub

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<Fieldset>
<Legend>個人資訊</Legend>
姓　　名：<ASP:TextBox Runat="Server" Id="TextBox1" /><br/>
性　　別：
<ASP:RadioButtonList Runat="Server" Id="RadioButtonList1" RepeatColumns="6" RepeatDirection="Horizontal">
<ASP:ListItem Value="男" Selected="True">男</ASP:ListItem>
<ASP:ListItem Value="女">女</ASP:ListItem>
</ASP:RadioButtonList>
最高學歷：<br />
<ASP:DropDownList Runat="Server" Id="DropDownList1">
<ASP:ListItem Value="高中以下">高中以下</ASP:ListItem>
<ASP:ListItem Value="大專院校" Selected="True">大專院校</ASP:ListItem>
<ASP:ListItem Value="碩士">碩士</ASP:ListItem>
<ASP:ListItem Value="博士">博士</ASP:ListItem>
<ASP:ListItem Value="其它">其它</ASP:ListItem>
</ASP:DropDownList><br />
最喜愛的活動：
      <asp:CheckBoxList ID="llike" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Text="唱歌" Value="唱歌" />
        <asp:ListItem Text="跳舞" Value="跳舞" />
        <asp:ListItem Text="看書" Value="看書" />
        <asp:ListItem Text="玩電玩" Value="玩電玩"/>
      </asp:CheckBoxList>
</Fieldset>
<asp:Button runat = "Server" Text = "確定" OnClick = "Button_Click"/><br />
<asp:label runat = "server" id = "HaHa" />

    </form>

</body>
</html>
