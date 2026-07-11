<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    '產品圖按下
    ''' <summary>
    ''' 培根莫札瑞拉起司漢堡
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs)
        Item1Count.Text = Val(Item1Count.Text) + 1
        CacuTotalPrice()
    End Sub
    '加項按鈕按下
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Item1Count.Text = Val(Item1Count.Text) + 1
        CacuTotalPrice()
    End Sub
    '減項按鈕按下
    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        If Val(Item1Count.Text) >= 0 Then
            Item1Count.Text = Val(Item1Count.Text) - 1
            CacuTotalPrice()
        End If
    End Sub
    Protected Sub CacuTotalPrice()
        ToTalPrice.Text = 0
        ItemList.Text = ""
        Dim Num1 As Integer = 0
        Dim Num2 As Integer = 0
        '判斷是否被選取
        If Not Item1Count.Text = 0 Then
            Num1 = Val(Item1Count.Text)
            Num2 = Val(ToTalPrice.Text)
            ToTalPrice.Text = Num2 + (Num1 * 200)
            ItemList.Text = ItemList.Text & "培根莫札瑞拉起司漢堡 *" & Item1Count.Text & "<BR/>"
        End If
        If Not Item1Count0.Text = 0 Then
            Num1 = Val(Item1Count0.Text)
            Num2 = Val(ToTalPrice.Text)
            ToTalPrice.Text = Num2 + (Num1 * 300)
            ItemList.Text = ItemList.Text & "焦糖布蕾鬆餅 *" & Item1Count0.Text & "<BR/>"
        End If
        If Not Item1Count3.Text = 0 Then
            Num1 = Val(Item1Count3.Text)
            Num2 = Val(ToTalPrice.Text)
            ToTalPrice.Text = Num2 + (Num1 * 180)
            ItemList.Text = ItemList.Text & "澳洲-和牛堡 *" & Item1Count3.Text & "<BR/>"
        End If
        If Not Item1Count1.Text = 0 Then
            Num1 = Val(Item1Count1.Text)
            Num2 = Val(ToTalPrice.Text)
            ToTalPrice.Text = Num2 + (Num1 * 220)
            ItemList.Text = ItemList.Text & "極品魚子醬鮭魚堡 *" & Item1Count1.Text & "<BR/>"
        End If
        If Not Item1Count2.Text = 0 Then
            Num1 = Val(Item1Count2.Text)
            Num2 = Val(ToTalPrice.Text)
            ToTalPrice.Text = Num2 + (Num1 * 260)
            ItemList.Text = ItemList.Text & "鳳梨照燒雞肉漢堡 *" & Item1Count2.Text & "<BR/>"
        End If
        If Not Item1Count4.Text = 0 Then
            Num1 = Val(Item1Count4.Text)
            Num2 = Val(ToTalPrice.Text)
            ToTalPrice.Text = Num2 + (Num1 * 280)
            ItemList.Text = ItemList.Text & "夏威夷漢堡 *" & Item1Count4.Text & "<BR/>"
        End If
        ToTalPrice.Text = ToTalPrice.Text & " 元"
    End Sub


    ''' <summary>
    ''' 焦糖布蕾鬆餅
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub ImageButton7_Click(sender As Object, e As ImageClickEventArgs)
        Item1Count0.Text = Val(Item1Count0.Text) + 1
        CacuTotalPrice()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        Item1Count0.Text = Val(Item1Count0.Text) + 1
        CacuTotalPrice()
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs)
        If Val(Item1Count0.Text) >= 0 Then
            Item1Count0.Text = Val(Item1Count0.Text) - 1
            CacuTotalPrice()
        End If
    End Sub
    ''' <summary>
    ''' 澳洲-和牛堡
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub ImageButton10_Click(sender As Object, e As ImageClickEventArgs)
        Item1Count3.Text = Val(Item1Count3.Text) + 1
        CacuTotalPrice()
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs)
        Item1Count3.Text = Val(Item1Count3.Text) + 1
        CacuTotalPrice()
    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs)
        If Val(Item1Count3.Text) >= 0 Then
            Item1Count3.Text = Val(Item1Count3.Text) - 1
            CacuTotalPrice()
        End If
    End Sub
    ''' <summary>
    ''' 極品魚子醬鮭魚堡
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub ImageButton8_Click(sender As Object, e As ImageClickEventArgs)
        Item1Count1.Text = Val(Item1Count1.Text) + 1
        CacuTotalPrice()
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs)
        Item1Count1.Text = Val(Item1Count1.Text) + 1
        CacuTotalPrice()
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs)
        If Val(Item1Count1.Text) >= 0 Then
            Item1Count1.Text = Val(Item1Count1.Text) - 1
            CacuTotalPrice()
        End If
    End Sub
    ''' <summary>
    ''' 鳳梨照燒雞肉漢堡
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub ImageButton9_Click(sender As Object, e As ImageClickEventArgs)
        Item1Count2.Text = Val(Item1Count2.Text) + 1
        CacuTotalPrice()
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs)
        Item1Count2.Text = Val(Item1Count2.Text) + 1
        CacuTotalPrice()
    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs)
        If Val(Item1Count2.Text) >= 0 Then
            Item1Count2.Text = Val(Item1Count2.Text) - 1
            CacuTotalPrice()
        End If
    End Sub
    ''' <summary>
    ''' 夏威夷漢堡
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub ImageButton11_Click(sender As Object, e As ImageClickEventArgs)
        Item1Count4.Text = Val(Item1Count4.Text) + 1
        CacuTotalPrice()
    End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs)
        Item1Count4.Text = Val(Item1Count4.Text) + 1
        CacuTotalPrice()
    End Sub

    Protected Sub Button12_Click(sender As Object, e As EventArgs)
        If Val(Item1Count4.Text) >= 0 Then
            Item1Count4.Text = Val(Item1Count4.Text) - 1
            CacuTotalPrice()
        End If
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
            width: 309px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 109px;
        }
        .auto-style5 {
            width: 309px;
            height: 258px;
        }
        .auto-style6 {
            height: 258px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td align="center" colspan="2" class="auto-style3">自助點餐系自助點餐系統</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/0503自動產生清單(茶葉訂購系統).aspx" ToolTip="Tea Purchasing System">Purchasing System</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/0503自動產生清單(飲料訂購系統).aspx" ToolTip="Employee Tea Selling system">Selling system</asp:HyperLink>
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server" ToolTip="Customer Self-service Ordering System" NavigateUrl="~/0503使用者自助訂餐系統.aspx">Customer System</asp:HyperLink>
                </td>
                <td>
    
        <table ID="MenuTable1" class="auto-style1" border="3" title="Menu" align="center" >
            <tr>
                <td id="MealMenuitem1" class="auto-style2" onclick="ItemListColorSwitch" align="center">
                    <asp:Label ID="Item1Label" runat="server" Text="培根莫札瑞拉起司漢堡"></asp:Label>
                    <br />
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="178px" ImageUrl="~/Images/培根莫札瑞拉起司漢堡-1514962518.jpg" OnClick="ImageButton1_Click" Width="243px" />
                    <br />
                    <br />
    
        <asp:TextBox ID="Item1Count" runat="server">0</asp:TextBox>
    
                    <asp:Button ID="Button1" runat="server" Text=" + " OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text=" - " OnClick="Button2_Click" />
                </td>
                <td id="2" align="center">
                    <asp:Label ID="Item1Label0" runat="server" Text="焦糖布蕾鬆餅"></asp:Label>
                    <br />
                    <br />
                    <asp:ImageButton ID="ImageButton7" runat="server" Height="178px" ImageUrl="~/Images/焦糖布蕾鬆餅-1514962599.jpg" Width="243px" OnClick="ImageButton7_Click" />
                    <br />
                    <br />
    
        <asp:TextBox ID="Item1Count0" runat="server">0</asp:TextBox>
    
                    <asp:Button ID="Button3" runat="server" Text=" + " OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" Text=" - " OnClick="Button4_Click" />
                </td>
                <td id="20" align="center">
                    <asp:Label ID="Item1Label3" runat="server" Text="澳洲-和牛堡"></asp:Label>
                    <br />
                    <br />
                    <asp:ImageButton ID="ImageButton10" runat="server" Height="178px" ImageUrl="~/Images/澳洲m9-和牛堡-1514962695.jpg" Width="243px" OnClick="ImageButton10_Click" />
                    <br />
                    <br />
    
        <asp:TextBox ID="Item1Count3" runat="server">0</asp:TextBox>
    
                    <asp:Button ID="Button9" runat="server" Text=" + " OnClick="Button9_Click" />
                    <asp:Button ID="Button10" runat="server" Text=" - " OnClick="Button10_Click" />
                </td>
            </tr>
            <tr>
                <td id="3" class="auto-style5" align="center">
                    <asp:Label ID="Item1Label1" runat="server" Text="極品魚子醬鮭魚堡"></asp:Label>
                    <br />
                    <br />
                    <asp:ImageButton ID="ImageButton8" runat="server" Height="178px" ImageUrl="~/Images/極品魚子醬鮭魚堡-1514962759.jpg" Width="243px" OnClick="ImageButton8_Click" />
                    <br />
                    <br />
    
        <asp:TextBox ID="Item1Count1" runat="server">0</asp:TextBox>
    
                    <asp:Button ID="Button5" runat="server" Text=" + " OnClick="Button5_Click" />
                    <asp:Button ID="Button6" runat="server" Text=" - " OnClick="Button6_Click" />
                </td>
                <td id="4" align="center" class="auto-style6">
                    <asp:Label ID="Item1Label2" runat="server" Text="鳳梨照燒雞肉漢堡"></asp:Label>
                    <br />
                    <br />
                    <asp:ImageButton ID="ImageButton9" runat="server" Height="178px" ImageUrl="~/Images/鳳梨照燒雞肉漢堡-1514962561.jpg" Width="243px" OnClick="ImageButton9_Click" />
                    <br />
                    <br />
    
        <asp:TextBox ID="Item1Count2" runat="server">0</asp:TextBox>
    
                    <asp:Button ID="Button7" runat="server" Text=" + " OnClick="Button7_Click" />
                    <asp:Button ID="Button8" runat="server" Text=" - " OnClick="Button8_Click" />
                </td>
                <td id="40" align="center" class="auto-style6">
                    <asp:Label ID="Item1Label4" runat="server" Text="夏威夷漢堡"></asp:Label>
                    <br />
                    <br />
                    <asp:ImageButton ID="ImageButton11" runat="server" Height="178px" ImageUrl="~/Images/14066479-241025536297367-1855981471017768253-o-1514962990.jpg" Width="243px" OnClick="ImageButton11_Click" />
                    <br />
                    <br />
    
        <asp:TextBox ID="Item1Count4" runat="server">0</asp:TextBox>
    
                    <asp:Button ID="Button11" runat="server" Text=" + " OnClick="Button11_Click" />
                    <asp:Button ID="Button12" runat="server" Text=" - " OnClick="Button12_Click" />
                </td>
            </tr>
            <tr>
                <td id="5" class="auto-style2">
                    &nbsp;</td>
                <td id="6">
                    &nbsp;</td>
                <td id="60">
                    &nbsp;</td>
            </tr>
        </table>
    
                </td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td>總價:&nbsp; <asp:Label ID="ToTalPrice" runat="server" Text="0元"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>選購項目: 
                    <br />
                    <asp:Label ID="ItemList" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
