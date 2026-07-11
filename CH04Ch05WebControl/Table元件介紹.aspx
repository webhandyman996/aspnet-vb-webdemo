<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
            </asp:TableRow>
        </asp:Table>
    
    </div>
    </form>
</body>
</html>
