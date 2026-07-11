<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '功能區切換作業(Visible應用)
    Sub Button1_Click(sender As Object, e As System.EventArgs)
        If Panel1.Visible = True Then
            Panel1.Visible = False
            Panel2.Visible = True
            Button1.Text = "顯示 功能區一"
        Else
            Panel1.Visible = True
            Panel2.Visible = False
            Button1.Text = "顯示 功能區二"
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
      <asp:Panel ID="Panel1" runat="server" Height="223px" Width="225px" >
          功能區一
          <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
              <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
              <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
              <OtherMonthDayStyle ForeColor="#CC9966" />
              <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
              <SelectorStyle BackColor="#FFCC66" />
              <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
              <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
          </asp:Calendar>
      </asp:Panel>
      <asp:Panel ID="Panel2" runat="server" Height="223px" Width="225px" Visible="False" >
          功能區二
          <br />
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
          <asp:Button ID="Button2" runat="server" Text="Button" />
          <br />
          <asp:RadioButtonList ID="RadioButtonList1" runat="server">
              <asp:ListItem Selected="True">AAAAA</asp:ListItem>
              <asp:ListItem>BBBBB</asp:ListItem>
              <asp:ListItem>CCCCC</asp:ListItem>
              <asp:ListItem>DDDDD</asp:ListItem>
          </asp:RadioButtonList>
      </asp:Panel>
      <br />
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="顯示 功能區二" />
    </div>
    </form>
</body>
</html>
