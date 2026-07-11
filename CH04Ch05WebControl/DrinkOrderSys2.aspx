<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DrinkOrderSys2.aspx.vb" Inherits="DrinkOrderSys2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        請選擇訂單項目<br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button ID="BlackTea" runat="server" Text="阿里山紅茶" />
                </td>
                <td>
                    <asp:Button ID="GreenTea" runat="server" Text="高山綠茶" />
                </td>
                <td>
                    <asp:Button ID="BlackTeaMilk" runat="server" Text="英式奶紅" />
                </td>
                <td>
                    <asp:Button ID="GreenTeaMilk" runat="server" Text="高山奶綠" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
