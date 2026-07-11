<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs)
        If DropDownList1.SelectedIndex > 0 Then
            Label1.Text = "您選擇的飲料是：" & DropDownList1.SelectedItem.Text & "，價錢是：" & DropDownList1.SelectedValue & "元"
        Else
            Label1.Text = ""
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
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>請選擇您要的飲料</asp:ListItem>
            <asp:ListItem Value="10">紅茶</asp:ListItem>
            <asp:ListItem Value="12">綠茶</asp:ListItem>
            <asp:ListItem Value="15">奶茶</asp:ListItem>
        </asp:DropDownList>
    
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
