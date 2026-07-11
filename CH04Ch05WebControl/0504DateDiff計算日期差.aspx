<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    ' DateDiff計算日期差
    Sub Calendar1_SelectionChanged(sender As Object, e As System.EventArgs)
        Label1.Text = "您選擇的日期是：" & Calendar1.SelectedDate
        Label3.Text = "這兩個日期相差的天數是：" & DateDiff("d", Now.ToShortDateString, Calendar1.SelectedDate)
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Label2.Text = "今天的日期是：" & Now.ToShortDateString
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
      <asp:Calendar ID="Calendar1" runat="server" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" Width="330px">
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TodayDayStyle BackColor="#999999" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
          <DayStyle BackColor="#CCCCCC" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
      </asp:Calendar>
      <br />
      <asp:Label ID="Label2" runat="server" /><br />
      <asp:Label ID="Label1" runat="server" /><br />
      <asp:Label ID="Label3" runat="server" />
    </div>
    </form>
</body>
</html>
