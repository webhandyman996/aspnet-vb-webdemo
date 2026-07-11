
Public Class DrinkBase

    Public DrinkName As CheckBox
    Public SugarCondition As ListBox
    Public IceConditio As ListBox
    Public CupSize As ListBox
    '初始化飲料        
    Public Overridable Sub init(ByVal Name As String)
        DrinkName = New CheckBox
        DrinkName.Text = Name
        DrinkName.Checked = True
        SugarCondition = New ListBox
        SugarCondition.Items.Add("Sugar0")
        SugarCondition.Items(0).Text = "無糖"
        SugarCondition.Items.Add("Sugar30")
        SugarCondition.Items(1).Text = "微糖"
        SugarCondition.Items.Add("Sugar50")
        SugarCondition.Items(2).Text = "半糖"
        SugarCondition.Items.Add("Sugar100")
        SugarCondition.Items(3).Text = "全糖"
        SugarCondition.SelectedIndex = 0
        IceConditio = New ListBox
        IceConditio.Items.Add("Ice0")
        IceConditio.Items(0).Text = "去冰"
        IceConditio.Items.Add("Ice30")
        IceConditio.Items(1).Text = "微冰"
        IceConditio.Items.Add("Ice50")
        IceConditio.Items(2).Text = "半冰"
        IceConditio.Items.Add("Ice100")
        IceConditio.Items(3).Text = "正常冰"
        IceConditio.SelectedIndex = 0
        CupSize = New ListBox
        CupSize.Items.Add("Cup100")
        CupSize.Items(0).Text = "大杯"
        CupSize.Items.Add("Cup80")
        CupSize.Items(1).Text = "中杯"
        CupSize.Items.Add("Cup50")
        CupSize.Items(2).Text = "小杯"
        CupSize.Items.Add("Cup120")
        CupSize.Items(3).Text = "超大杯"
        CupSize.SelectedIndex = 0
    End Sub
End Class
Public Class DrinkItem
    Public Tea As DrinkBase
    Public Sub init(ByVal Name As String, ByVal Price100 As Decimal, ByVal Price80 As Decimal, ByVal Price50 As Decimal, ByVal Price120 As Decimal)
        Tea = New DrinkBase
        Tea.init(Name)
        Tea.CupSize.Items(0).Value = Price100
        Tea.CupSize.Items(1).Value = Price100
        Tea.CupSize.Items(2).Value = Price100
        Tea.CupSize.Items(3).Value = Price100
    End Sub
End Class
Partial Class DrinkOrderSys2
    Inherits System.Web.UI.Page
    ''' <summary>
    ''' 飲料類別  Drink Class
    ''' </summary>

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub BlackTea_Click(sender As Object, e As EventArgs) Handles BlackTea.Click
        Dim BlockTea = New DrinkItem
        BlockTea.init(BlackTea.Text, 30, 25, 20, 40)
    End Sub
End Class
