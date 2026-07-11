
Partial Class DrinkOrderSys1
    Inherits System.Web.UI.Page
    Public price As Integer = 0
    '確認鍵按下事件處理
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label1.Text = ""
        '判斷CheckBox1是否被點選
        If 紅茶BlackTea.Checked = True Then
            '計算金額
            price += BlackTeaSize.SelectedItem.Value
            '顯示點餐內容
            Label1.Text = Label1.Text & 紅茶BlackTea.Text & "/" &
                                        紅茶糖分BlackSugar.SelectedItem.Text & "/" &
                                        BlackTeaIce.SelectedItem.Text & "/" &
                                        BlackTeaSize.SelectedItem.Value & "元" & "<BR/>"
        End If

        If 綠茶GreenTea.Checked = True Then
            '計算金額
            price += GreenTeaSize.SelectedItem.Value
            '顯示點餐內容
            Label1.Text = Label1.Text & 綠茶GreenTea.Text & "/" &
                                        綠茶糖分GreenTeaSugar.SelectedItem.Text & "/" &
                                        GreenTeaIce.SelectedItem.Text & "/" &
                                        GreenTeaSize.SelectedItem.Value & "元" & "<BR/>"
        End If

        If 奶紅BlackTeaMilk.Checked = True Then
            '計算金額
            price += BlackTeaMilkSize.SelectedItem.Value
            '顯示點餐內容
            Label1.Text = Label1.Text & 奶紅BlackTeaMilk.Text & "/" &
                                        奶紅糖分.SelectedItem.Text & "/" &
                                        BlackTeaMilkIce.SelectedItem.Text & "/" &
                                        BlackTeaMilkSize.SelectedItem.Value & "元" & "<BR/>"
        End If
        If 奶綠GgreenTeaMilk.Checked = True Then
            '計算金額
            price += GreenTeaMilkSize.SelectedItem.Value
            '顯示點餐內容
            Label1.Text = Label1.Text & 奶綠GgreenTeaMilk.Text & "/" &
                                        奶綠糖分.SelectedItem.Text & "/" &
                                        GreenTeaMilkIce.SelectedItem.Text & "/" &
                                        GreenTeaMilkSize.SelectedItem.Value & "元" & "<BR/>"
        End If

        If Label1.Text <> "" Then
            Label1.Text = Today.Date & " " & TimeString & "<BR/>" &
                        "*****************客戶點餐項目如下*****************" & "<BR/>" &
                        Label1.Text &
                        "合計:" & price & "元"
        End If
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = ""


    End Sub
End Class
