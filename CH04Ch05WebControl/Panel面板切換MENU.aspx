<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button6_Click(sender As Object, e As EventArgs)
        If Button6.Text = "切換成飲料訂購清單" Then
            Panel1.Visible = False
            Panel2.Visible = True
            Button6.Text = "切換成選擇你喜歡的飲料"
        Else
            Panel1.Visible = True
            Panel2.Visible = False
            Button6.Text = "切換成飲料訂購清單"
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
        <asp:Button ID="Button6" runat="server" Text="切換成飲料訂購清單" OnClick="Button6_Click" />

        <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF66" Width="550px">
        請選擇你喜歡的飲料<br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Value="10">紅茶</asp:ListItem>
            <asp:ListItem Value="12">綠茶</asp:ListItem>
            <asp:ListItem Value="15">奶茶</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="Button1" runat="server"  Text="確定" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" BackColor="#6699FF" Visible="False" Width="550px">
        飲料訂購清單<br />
        飲料名稱<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp; 訂購<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        公斤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="新增" />
        <br />
        <asp:CheckBoxList ID="CheckBoxList2" runat="server">
        </asp:CheckBoxList>
        <br />
        <asp:Button ID="Button3" runat="server" Text="刪除勾選項目"  />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="清除所有項目"  />
    
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Text="總重" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>

        </asp:Panel>    
    </div>
    </form>
</body>
</html>
