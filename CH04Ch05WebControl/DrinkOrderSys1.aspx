<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DrinkOrderSys1.aspx.vb" Inherits="DrinkOrderSys1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     請選擇你喜歡的飲料 <br />
            <br />
        <table class="auto-style1">
            <tr>
                    <td class="auto-style2">
                        <asp:CheckBox ID="紅茶BlackTea" runat="server" Text="鐵觀音紅茶" ToolTip="台灣鐵觀音" SkinID="20" />
                    </td>
                    <td class="auto-style3">
                        <asp:ListBox ID="紅茶糖分BlackSugar" runat="server" Width="92px">
                            <asp:ListItem Value="0" Selected="True">無糖</asp:ListItem>
                            <asp:ListItem Value="3">少糖</asp:ListItem>
                            <asp:ListItem Value="5">半糖</asp:ListItem>
                            <asp:ListItem Value="10">全糖</asp:ListItem>
                            <asp:ListItem Value="11">黃金比例</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>
                        <asp:ListBox ID="BlackTeaIce" runat="server"  Style="margin-left: 0px" Width="92px">
                            <asp:ListItem Value="0" Selected="True">去冰</asp:ListItem>
                            <asp:ListItem Value="3">微冰</asp:ListItem>
                            <asp:ListItem Value="5">少冰</asp:ListItem>
                            <asp:ListItem Value="10">正常冰</asp:ListItem>
                        </asp:ListBox>
                        <asp:ListBox ID="BlackTeaSize" runat="server"  Style="margin-left: 0px" Width="92px">
                            <asp:ListItem Value="30" Selected="True">大杯</asp:ListItem>
                            <asp:ListItem Value="25">中杯</asp:ListItem>
                            <asp:ListItem Value="20">小杯</asp:ListItem>
                            <asp:ListItem Value="40">胖胖杯</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            <tr>
                    <td class="auto-style2">
                        <asp:CheckBox ID="綠茶GreenTea" runat="server" Text="高山綠茶" ToolTip="阿里山高山綠茶" SkinID="20" />
                    </td>
                    <td class="auto-style3">
                        <asp:ListBox ID="綠茶糖分GreenTeaSugar" runat="server" Width="92px">
                            <asp:ListItem Value="0" Selected="True">無糖</asp:ListItem>
                            <asp:ListItem Value="3">少糖</asp:ListItem>
                            <asp:ListItem Value="5">半糖</asp:ListItem>
                            <asp:ListItem Value="10">全糖</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>
                        <asp:ListBox ID="GreenTeaIce" runat="server"  Style="margin-left: 0px" Width="92px">
                            <asp:ListItem Value="0" Selected="True">去冰</asp:ListItem>
                            <asp:ListItem Value="3">微冰</asp:ListItem>
                            <asp:ListItem Value="5">少冰</asp:ListItem>
                            <asp:ListItem Value="10">正常冰</asp:ListItem>
                        </asp:ListBox>
                        <asp:ListBox ID="GreenTeaSize" runat="server"  Style="margin-left: 0px" Width="92px">
                            <asp:ListItem Value="30" Selected="True">大杯</asp:ListItem>
                            <asp:ListItem Value="25">中杯</asp:ListItem>
                            <asp:ListItem Value="20">小杯</asp:ListItem>
                            <asp:ListItem Value="40">胖胖杯</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                            <tr>
                    <td class="auto-style2">
                        <asp:CheckBox ID="奶紅BlackTeaMilk" runat="server" Text="鐵觀音拿鐵"  ToolTip="英式皇家奶茶" SkinID="30" />
                    </td>
                    <td class="auto-style3">
                        <asp:ListBox ID="奶紅糖分" runat="server" Width="92px">
                            <asp:ListItem Value="0" Selected="True">無糖</asp:ListItem>
                            <asp:ListItem Value="3">少糖</asp:ListItem>
                            <asp:ListItem Value="5">半糖</asp:ListItem>
                            <asp:ListItem Value="10">全糖</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>
                        <asp:ListBox ID="BlackTeaMilkIce" runat="server"  Style="margin-left: 0px" Width="92px">
                            <asp:ListItem Value="0" Selected="True">去冰</asp:ListItem>
                            <asp:ListItem Value="3">微冰</asp:ListItem>
                            <asp:ListItem Value="5">少冰</asp:ListItem>
                            <asp:ListItem Value="10">正常冰</asp:ListItem>
                        </asp:ListBox>
                        <asp:ListBox ID="BlackTeaMilkSize" runat="server"  Style="margin-left: 0px" Width="92px">
                            <asp:ListItem Value="30" Selected="True">大杯</asp:ListItem>
                            <asp:ListItem Value="25">中杯</asp:ListItem>
                            <asp:ListItem Value="20">小杯</asp:ListItem>
                            <asp:ListItem Value="40">胖胖杯</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style2">
                        <asp:CheckBox ID="奶綠GgreenTeaMilk" runat="server" Text="高山青奶茶" ToolTip="英式皇家奶茶" SkinID="30" />
                    </td>
                    <td class="auto-style3">
                        <asp:ListBox ID="奶綠糖分" runat="server" Width="92px">
                            <asp:ListItem Value="0" Selected="True">無糖</asp:ListItem>
                            <asp:ListItem Value="3">少糖</asp:ListItem>
                            <asp:ListItem Value="5">半糖</asp:ListItem>
                            <asp:ListItem Value="10">全糖</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:ListBox>
                    </td>
                <td>
                        <asp:ListBox ID="GreenTeaMilkIce" runat="server"  Style="margin-left: 0px" Width="92px">
                            <asp:ListItem Value="0" Selected="True">去冰</asp:ListItem>
                            <asp:ListItem Value="3">微冰</asp:ListItem>
                            <asp:ListItem Value="5">少冰</asp:ListItem>
                            <asp:ListItem Value="10">正常冰</asp:ListItem>
                        </asp:ListBox>
                        <asp:ListBox ID="GreenTeaMilkSize" runat="server"  Style="margin-left: 0px" Width="92px">
                            <asp:ListItem Value="30" Selected="True">大杯</asp:ListItem>
                            <asp:ListItem Value="25">中杯</asp:ListItem>
                            <asp:ListItem Value="20">小杯</asp:ListItem>
                            <asp:ListItem Value="40">胖胖杯</asp:ListItem>
                        </asp:ListBox>
                    </td> 
                </tr> 
            </table> 
    </div>
        <asp:Button ID="Button1" runat="server" Text="確認訂單" />
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
