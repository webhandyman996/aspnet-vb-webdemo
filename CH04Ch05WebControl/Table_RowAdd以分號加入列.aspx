<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim RowStrings() As String
        '使用分號加入新的ROW
        If TextBox1.Text <> "" Then
            RowStrings = Split(TextBox1.Text, ",")
            'RowStrings = TextBox1.Text.Split(",")
            TextBox1.Text = ""

            Dim CellsCount As Integer
            'CellsCount = RowStrings.Count
            CellsCount = RowStrings.Length

            Dim NewRow As New TableRow()

            Dim i As Integer
            For i = 0 To CellsCount - 1
                Dim NewCell As New TableCell()
                NewCell.Text = RowStrings(i)
                NewRow.Cells.Add(NewCell)
            Next

            Table1.Rows.Add(NewRow)
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
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="加入表格" />
        <br /><br />
        <asp:Table ID="Table1" runat="server" GridLines="Both">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">列1格1</asp:TableCell>
                <asp:TableCell runat="server">列1格2</asp:TableCell>
                <asp:TableCell runat="server">列1格3</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">列2格1</asp:TableCell>
                <asp:TableCell runat="server">列2格2</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">列3格1</asp:TableCell>
                <asp:TableCell runat="server">列3格2</asp:TableCell>
                <asp:TableCell runat="server">列3格3</asp:TableCell>
                <asp:TableCell runat="server">列3格4</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    
    </div>
    </form>
</body>
</html>
