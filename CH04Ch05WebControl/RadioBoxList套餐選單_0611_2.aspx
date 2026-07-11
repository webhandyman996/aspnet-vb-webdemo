<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Dim SideDishStatus As Integer = 0
    Protected Sub CacuPrice_Click(sender As Object, e As EventArgs)
        Dim drink As String = ""
        Dim main As String = ""
        Dim Price As Integer = 0

        '清空訊息欄
        Label1.Text = ""
        Try
            If SideDish.SelectedIndex >= 0 Then
                drink = SideDish.SelectedItem.Text
                If drink.Contains("+") Then
                    Dim Index = drink.IndexOf("+")
                    drink = drink.Substring(0, Index)
                End If
            End If

            If MainDish.SelectedIndex >= 0 Then
                main = MainDish.SelectedItem.Text
            End If
            Label1.Text = "你選擇了"
            If drink = "" And main = "" Then
                Label1.Text = "未選擇任何餐點！"
                Return
            End If
            If Not main = "" Then
                Label1.Text += "主餐：[ " & main & " ] "
            End If

            If Not drink = "" Then
                Label1.Text += "飲料：[ " & drink & " ] " + SugarList1.SelectedItem.Text + " " + ICE_List2.SelectedItem.Text
            End If
            '計算金額
            If SideDishStatus = -1 Then
                Price = Integer.Parse(MainDish.SelectedItem.Value)
            Else
                Price = Integer.Parse(SideDish.SelectedItem.Value) + Integer.Parse(MainDish.SelectedItem.Value)
            End If
            Label1.Text += "<BR>" + "總金額為:[" & Price & " 元]"
            '       SideDishStatus = 0
        Catch ex As Exception
            Response.Write("<BR/> CacuPrice_Click: Fail!")
        End Try
    End Sub
    '清除飲料

    Protected Sub CleanSideDish(sender As Object, e As EventArgs)
        Try
            '      SideDishStatus = -1
            ' SideDish.ClearSelection()
            'SideDishStatus = SideDish.SelectedIndex
            Response.Write("<BR/> CleanSideDish SideDish.SelectedIndex:" + SideDish.SelectedIndex.ToString())
        Catch ex As Exception
            Response.Write("<BR/> CleanSideDish SideDish.SelectedIndex: Fail!")
        End Try

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Try
            If Not IsPostBack Then
                'First time load do nothinge
            Else

                'SideDish.SelectedIndex = SideDishStatus
                'Response.Write("<BR/>Page_Load SideDish.SelectedIndex:" + SideDish.SelectedIndex.ToString())
            End If
        Catch ex As Exception
            Response.Write("<BR/>Page_Load SideDish.SelectedIndex: Fail")
        End Try
    End Sub

    'Protected Sub SelectedChange(sender As Object, e As EventArgs)
    '    'SideDish.SelectedIndex = SideDishStatus
    '    SideDishStatus = 0
    '    'MsgBox(" SideDish.SelectedIndex")
    '    Try
    '        Response.Write("<BR/>SelectedChange SideDish.SelectedIndex" + SideDish.SelectedIndex.ToString())
    '    Catch ex As Exception
    '        Response.Write("<BR/>SelectedChange SideDish.SelectedIndex Fail")
    '    End Try

    'End Sub

    'Protected Sub SideDish_Load(sender As Object, e As EventArgs)
    '    Try
    '        Response.Write("<BR/>SideDish_Load SideDish.SelectedIndex" + SideDish.SelectedIndex.ToString())
    '    Catch ex As Exception
    '        Response.Write("<BR/>SideDish_Load SideDish.SelectedIndex Fail!!")
    '    End Try

    'End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            請選擇套餐組合<br />
            -----------------------------------------------------<br />
            <br />
            主餐項目<br />
            <br />
            <asp:RadioButtonList ID="MainDish" runat="server">
                <asp:ListItem Selected="True" Value="50">法式三明治 50元</asp:ListItem>
                <asp:ListItem Selected="False" Value="50">蔬食漢堡 50元</asp:ListItem>
                <asp:ListItem Selected="False" Value="60">牛肉麵 60元</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            附餐飲料<asp:Button ID="Button2" runat="server" OnClick="CleanSideDish" Text="清除飲料" ToolTip="清除以選取的飲料項目" />
            <br />
            <table class="auto-style1">
                <tr>
                    <td aria-atomic="True">
                        <asp:RadioButtonList ID="SideDish" runat="server" ToolTip="多加5元即可享受奶類附餐"   >
                            <asp:ListItem Selected="True" Value="0">紅茶</asp:ListItem>
                            <asp:ListItem Selected="False" Value="0">綠茶</asp:ListItem>
                            <asp:ListItem Selected="False" Value="5">奶紅 +5元</asp:ListItem>
                            <asp:ListItem Selected="False" Value="5">奶綠 +5元</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="SugarList1" runat="server" ToolTip="全糖是最美味的選項">
                            <asp:ListItem Selected="True" Value="0">無糖</asp:ListItem>
                            <asp:ListItem Selected="False" Value="0">微糖</asp:ListItem>
                            <asp:ListItem Selected="False" Value="5">半糖</asp:ListItem>
                            <asp:ListItem Selected="False" Value="5">全糖</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="ICE_List2" runat="server" ToolTip="少吃冰身體好">
                            <asp:ListItem  Selected="True" Value="0">去冰</asp:ListItem>
                            <asp:ListItem Selected="False" Value="0">微冰</asp:ListItem>
                            <asp:ListItem Selected="False" Value="5">正常</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
            <br />
            <div>
            <asp:Button ID="CacuPrice" runat="server" OnClick="CacuPrice_Click" Text="結帳" ToolTip="計算總金額" />
            </div>
            <br />            
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
