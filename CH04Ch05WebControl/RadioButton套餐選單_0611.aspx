<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim drink As String
        Dim main As String
        drink = ""
        main = ""

        Label1.Text = ""

        If RadioButton1.Checked = True Then
            drink = RadioButton1.Text
        End If

        If RadioButton2.Checked = True Then
            drink = RadioButton2.Text
        End If

        If RadioButton3.Checked = True Then
            drink = RadioButton3.Text
        End If

        If RadioButton4.Checked = True Then
            main = RadioButton4.Text
        End If

        If RadioButton5.Checked = True Then
            main = RadioButton5.Text
        End If

        If RadioButton6.Checked = True Then
            main = RadioButton6.Text
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
    
        請選擇你所要的餐點<br />
        <br />
        飲料<br />
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="drink" Text="紅茶" />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="drink" Text="綠茶"  />
    
        <br />
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="drink" Text="奶茶" />
        <br />
        <br />
        主食<br />
        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="main" Text="三明治" />
        <br />
        <asp:RadioButton ID="RadioButton5" runat="server" GroupName="main" Text="漢堡" />
        <br />
        <asp:RadioButton ID="RadioButton6" runat="server" GroupName="main" Text="牛肉麵" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確定" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
