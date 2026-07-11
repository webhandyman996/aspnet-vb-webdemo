
Partial Class Home
    Inherits System.Web.UI.Page
    ''' <summary>
    ''' 帳號類別  Account Class
    ''' </summary>
    Public Class AccountRecord

        Public Name As String = ""
        Public PassWord As String = ""
        Public Sub init(ByVal name As String, ByVal pss As String)
            Me.Name = name
            Me.PassWord = pss
        End Sub

    End Class
    ''' <summary>
    ''' 宣告帳號列表 Account List
    ''' </summary>
    Public AccList As List(Of AccountRecord)
    ''' <summary>
    ''' 運算紐按下事件處理
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        '分辨姓與名(Split Firmaily Name Middle Name and Last Name)
        'Todo

        '建立正則表示式條件 https://techearl.com/regular-expressions/regex-password-strength-validation https://colud77.pixnet.net/blog/post/5810634
        Dim RegexDig2 As Regex = New Regex("^[0-9,2]{1,2}$") '設定輸入限制為0-9，最少輸入1位數，最多輸入2位數
        Dim RegexDig4 As Regex = New Regex("^[0-9,4]{4}$")   '設定輸入限制為0-9，必須輸入4位數

        '計算年齡        
        Dim Year = TextBox1.Text
        '判斷輸入格式正確後進入年齡計算，若不正確則告知USER 
        If RegexDig4.IsMatch(Year) Then
            CaculAge()
        Else
            Response.Write("<font color=#FF0000>Incorrect Year fromat!! </font></BR>")
        End If

        '計算星座
        Dim Month = TextBox2.Text
        Dim Day = TextBox3.Text
        '判斷輸入格式正確後進入星座計算，若不正確則告知USER 
        If RegexDig2.IsMatch(Month) And RegexDig2.IsMatch(Day) Then
            CaculStar()
        Else
            Response.Write("<font color=#FF0000>Incorrect Math or Day fromat!!</font></BR> ")
        End If

    End Sub
    Protected Sub SplitName()

    End Sub
    ''' <summary>
    ''' 根據出生年份計算目前年齡(Caculate the Age by Birthday )
    ''' </summary>
    Protected Sub CaculAge2()
        ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        '技巧說明
        '1.用Today取的目前日期，並使用ToShortDateString轉成短的字串格式(YYYY/MM/DD)
        '2.用String.Indexof與日期分隔符號("/")取得年的紀錄位置
        '3.用String.Substring與年的紀錄位置取出年的紀錄
        '4.字串相減時VB自動把字串轉為數值做運算
        '5.使用Number.ToString將數值轉回自串供Label顯示
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        '取得目前時間(Get the Date information)
        Dim CurrDate = Today.ToShortDateString
        '取得目前時間中 年的位置(Get the string position of year)
        Dim Index = CurrDate.IndexOf("/")
        '用SubString與位置取出年的紀錄(Get the years reacord by the SubString mathod and index)  
        Dim Presantyear = CurrDate.Substring(0, Index)
        '計算出生年到今年的差值(Caculate the Age by Birth year and Presant year)
        Dim AgeNumber = Presantyear - TextBox1.Text
        '顯示年齡於畫面(Show the Age)
        Label2.Text = AgeNumber.ToString
    End Sub
    Protected Sub CaculAge()
        ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        '技巧說明
        '1.用Today.Year取出今年
        '2.字串相減時VB自動把字串轉為數值做運算
        '3.使用Number.ToString將數值轉回自串供Label顯示
        '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
        '取得目前時間(Get the Date information)
        Dim CurrDate = Today.Year.ToString
        '計算出生年到今年的差值(Caculate the Age by Birth year and Presant year)
        Dim AgeNumber = CurrDate - TextBox1.Text
        '顯示年齡於畫面(Show the Age)
        Label2.Text = AgeNumber.ToString
    End Sub
    ''' <summary>
    ''' 根據出生月分與日期計算星座
    ''' </summary>
    Protected Sub CaculStar()
        '宣告月跟日
        Dim Mon = TextBox2.Text
        Dim Day = TextBox3.Text

        '簡單判斷月跟日的錯誤
        If Mon = "" Or Mon > 12 Then
            MsgBox("Wrong Moth")
        End If

        If Day > 31 Or Day = "" Then
            MsgBox("Wrong Date")
        End If

        '宣告一個用來判斷的數值
        If Day.Length = 1 Then
            Day = "0" + Day
        End If
        '組合輸入的月-日字串(Combin the input string of moth and day)
        'MonthDayString.GetType()驗證得到{Name = "String" FullName = "System.String"}
        Dim MonthDayString = Mon & Day
        '強制將字串轉為數值供後續Select Case使用(Transfer the String to Number for Select Case oprating)
        '使用MothDayValue.GetType()驗證得到{Name = "Double" FullName = "System.Double"}
        Dim MothDayValue = Val(MonthDayString)
        '比對數值找出星座(Check the Number druration to find the star)
        Select Case MonthDayString

            Case 120 To 219
                Label3.Text = "水瓶座"
            Case 220 To 320
                Label3.Text = "雙魚座"
            Case 321 To 420
                Label3.Text = "牡羊座 Aries"
            Case 421 To 520
                Label3.Text = "金牛座 Taurus"
            Case 521 To 621
                Label3.Text = "雙子座 Gemini"
            Case 622 To 722
                Label3.Text = "巨蟹座"
            Case 723 To 822
                Label3.Text = "獅子座"
            Case 823 To 922
                Label3.Text = "處女座"
            Case 923 To 1022
                Label3.Text = "天秤座"
            Case 1023 To 1121
                Label3.Text = "天蠍座"
            Case 1122 To 1221
                Label3.Text = "射手座"
            Case 1222 To 1231
                Label3.Text = "魔羯座"
            Case 101 To 119
                Label3.Text = "魔羯座"
            Case Else '數值不符合條件時的處理(Out of number range process)
                Label3.Text = "Unknow Date"
        End Select
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
