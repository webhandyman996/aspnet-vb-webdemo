<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    '自動產生指定維度的表格
    Sub Button1_Click(sender As Object, e As System.EventArgs)
        Dim I, J As Byte

        For I = 1 To DropDownList1.SelectedItem.Value
            Dim Table1Row As New TableRow()

            For J = 1 To DropDownList2.SelectedItem.Value
                Dim Table1Cell As New TableCell()
                Table1Cell.Text = "第 " & I & " 列　第 " & J & " 欄"
                Table1Row.Cells.Add(Table1Cell)
            Next

            Table1.Rows.Add(Table1Row)
        Next
        Table1.Caption = "動態表格 (" & DropDownList1.Text & " * " & DropDownList2.Text & ")"
    End Sub

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      列數：<asp:DropDownList ID="DropDownList1" runat="server" Width="50">
        <asp:ListItem Text="1" Value="1" />
        <asp:ListItem Text="2" Value="2" />
        <asp:ListItem Text="3" Value="3" Selected="true" />
        <asp:ListItem Text="4" Value="4" />
        <asp:ListItem Text="5" Value="5" />      
      </asp:DropDownList>
      &nbsp;欄數：&nbsp;
      <asp:DropDownList ID="DropDownList2" runat="server" Width="50">
        <asp:ListItem Text="1" Value="1" />
        <asp:ListItem Text="2" Value="2" />
        <asp:ListItem Text="3" Value="3" Selected="true"/>
        <asp:ListItem Text="4" Value="4" />
        <asp:ListItem Text="5" Value="5" />
      </asp:DropDownList>&nbsp;
      <asp:Button ID="Button1" runat="server" Text="產生表格" OnClick="Button1_Click" />
      <br />
      <br />
      <asp:Table ID="Table1" runat="server" GridLines="Both">
      </asp:Table>
    </form>

</body>
</html>
