<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '自動產生清單(飲料訂購系統)
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        '杯數歸回預設值
        CupOfNumber.Text = "1"
        '載入客戶選擇的飲料資訊
        Dim Drink = New ListItem(
            DrinkList.SelectedItem.Text & "/" &
            DrinkSize.SelectedItem.Text & "/" &
            Addition.SelectedItem.Text & "/" &
            Sugar.SelectedItem.Text & "/" &
            Ice.SelectedItem.Text & " x" &
            CupOfNumber.Text & "杯",
            Val(DrinkList.SelectedItem.Value) +
            Val(DrinkSize.SelectedItem.Value) +
            Val(Addition.SelectedItem.Value)
            )
        RadioButtonList1.Items.Add(Drink)
        '載入小計
        Dim Price = New ListItem(
          (Drink.Value * CupOfNumber.Text) & "元",
          Drink.Value * CupOfNumber.Text
          )
        RadioButtonList2.Items.Add(Price)
        GridView1.Caption = "GridView1.TEST"
        GridView1.Columns(0).HeaderText = "Products Name"
        GridView1.Columns(1).HeaderText = "Products Size"
        'GridView1.Columns(2).HeaderText = "Addtional Item"
        'Dim aaa = New GridViewRowCollection()




    End Sub
    'Remove Order Item
    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Dim Index As Integer

        For Index = RadioButtonList1.Items.Count - 1 To 0 Step -1
            If RadioButtonList1.Items(Index).Selected = True Then
                RadioButtonList1.Items.RemoveAt(Index)
                RadioButtonList2.Items.RemoveAt(Index)
            End If
        Next
    End Sub
    'Clear All Order
    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        RadioButtonList1.Items.Clear()
        RadioButtonList2.Items.Clear()
    End Sub
    'Caculator the Price
    Protected Sub Button4_Click(sender As Object, e As EventArgs)
        Dim Index As Integer
        Dim totalPrice As Integer = 0
        Label1.Text = ""
        'Caculator the Price
        For Index = RadioButtonList1.Items.Count - 1 To 0 Step -1
            totalPrice = totalPrice + RadioButtonList1.Items(Index).Value
        Next

        Label1.Text = "總價：" & totalPrice & "元"


        'Get the Details
        Dim Details = ""
        For Index = 0 To RadioButtonList1.Items.Count - 1
            Details += RadioButtonList1.Items(Index).Text & " " & RadioButtonList2.Items(Index).Text & "<bR/>"
        Next
        Label2.Text = "明細" & Today.Date & " " & TimeString & "<BR/>" &
                    "------------------------------------------------------------<BR/>" &
                    Details &
                    "------------------------------------------------------------<BR/>"

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 94px;
        }
        .auto-style3 {
            width: 451px;
        }
        .auto-style4 {
            width: 46px;
        }
        .auto-style5 {
            width: 76px;
        }
        .auto-style6 {
            width: 119px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td align="center" bgcolor="#FFFF66">KSU網頁飲料訂購清單</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;
        飲料名稱</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DrinkList" runat="server" Width="80px">
                        <asp:ListItem Value="30">紅茶</asp:ListItem>
                        <asp:ListItem Value="30">綠茶</asp:ListItem>
                        <asp:ListItem Value="40">奶紅</asp:ListItem>
                        <asp:ListItem Value="40">奶綠</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DrinkSize" runat="server" Width="80px">
                        <asp:ListItem Value="0">大杯</asp:ListItem>
                        <asp:ListItem Value="-5">中杯</asp:ListItem>
                        <asp:ListItem Value="-10">小杯</asp:ListItem>
                        <asp:ListItem Value="10">胖胖杯</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="Addition" runat="server" Width="80px">
                        <asp:ListItem Value="0">不加料</asp:ListItem>
                        <asp:ListItem Value="5">加波霸</asp:ListItem>
                        <asp:ListItem Value="5">加椰果</asp:ListItem>
                        <asp:ListItem Value="10">加咖凍</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="Sugar" runat="server" Width="80px">
                        <asp:ListItem Selected="True" Value="0">全糖</asp:ListItem>
                        <asp:ListItem Value="0">少糖</asp:ListItem>
                        <asp:ListItem Value="-10">微糖</asp:ListItem>
                        <asp:ListItem Value="+10">無糖</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="Ice" runat="server" Width="80px">
                        <asp:ListItem Selected="True" Value="0">全冰</asp:ListItem>
                        <asp:ListItem Value="-5">少冰</asp:ListItem>
                        <asp:ListItem Value="-10">微冰</asp:ListItem>
                        <asp:ListItem Value="+10">去冰</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">杯數
                <td class="auto-style5"><asp:TextBox ID="CupOfNumber" runat="server" MaxLength="3" TextMode="Number" Width="48px">1</asp:TextBox>
                </td>
                <td>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="新增" />
        &nbsp; 
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table class="auto-style1">
            <tr>
                <td bgcolor="#FFFF66">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        </asp:RadioButtonList>
                </td>
                <td bgcolor="#FFFF66">
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" Enabled="False">
        </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button2" runat="server" Text="刪除勾選項目" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="清除所有項目" OnClick="Button3_Click" />
    
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td bgcolor="#FFFF66" class="auto-style6">
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="總金額" />
                </td>
                <td bgcolor="#FFFF66">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
                </td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td>
        <asp:Label ID="Label2" runat="server"></asp:Label>
    
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CheckBoxField Text="Test123" />
                <asp:ButtonField ButtonType="Button" HeaderText="BTN_TEST" Text="Button" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
