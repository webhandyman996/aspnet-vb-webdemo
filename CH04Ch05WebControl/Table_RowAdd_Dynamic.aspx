<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim RowStrings() As String
        
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

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Dim IRow, ICell As Integer
        IRow = TextBox2.Text - 1
        ICell = TextBox3.Text - 1
        
        Label1.Text = ""
        
        If TextBox2.Text > Table1.Rows.Count Then
            Label1.Text = "列數超出範圍"
        Else
            If TextBox3.Text > Table1.Rows.Item(IRow).Cells.Count Then
                Label1.Text = "格數超出第" & IRow + 1 & "例範圍"
            Else
                Table1.Rows.Item(IRow).Cells.Item(ICell).Text = TextBox4.Text
            End If
        End If
        
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
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
    
        <br />
        第<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        列 第<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        格<br />
        修改為<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="確定" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
