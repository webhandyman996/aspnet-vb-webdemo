<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
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
    ''' 將帳戶資料塞入宣告帳號列表
    ''' </summary>
    Protected Sub InitUserAccount()
        AccList = New List(Of AccountRecord)

        Dim BaseAccInfo(,) As String = {{"AAA", "aA1234"}, {"BBB", "bB1234"}, {"CCCC", "bB1234"}, {"DDDD", "bB1234"}}
        'https://docs.microsoft.com/zh-tw/dotnet/api/system.array.length?view=net-5.0
        For index = 0 To BaseAccInfo.GetUpperBound(0)   'GetUpperBound(0) 傳回陣列第一個維度中的最後一個索引，並傳回 GetUpperBound(Rank - 1) 陣列最後一個維度的最後一個索引。
            Dim a123 = New AccountRecord()
            a123.init(BaseAccInfo(index, 0), BaseAccInfo(index, 1))
            AccList.Add(a123)
            Console.WriteLine("   index:{0}", index)
        Next
        ' Dim aaaa = From aa In b123 Where aa = TextBox1.Text
    End Sub
    'Log On介面
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        '宣告帳號密碼(改為List<Class> )
        InitUserAccount()
        'http://www.java2s.com/Code/VB/LINQ/ConvertLinqresulttoList.VB
        Dim CurrentUser As AccountRecord = (From UserID In AccList Where UserID.Name = TextBox1.Text).FirstOrDefault()

        If IsNothing(CurrentUser) Then
            Label1.Text = TextBox1.Text & "：Can't find input Account！"
            Return
        End If

        Dim Account = CurrentUser.Name
        Dim Password = CurrentUser.PassWord
        '設定輸入格式為0-9 Aa-Zz，最少輸入6位數，最多輸入12位數
        Dim RegexDig6 As Regex = New Regex("^[0-9a-zA-Z_*@\/.+]{6,12}$") '不可使用-符號
        If Not RegexDig6.IsMatch(TextBox2.Text) Then
            Label1.Text = TextBox1.Text & "：Worng input format！"
            Return
        End If
        '用KEY值檢查最少1個組大小寫字碼與數字
        ' todo
        '判斷使用者輸入的帳號密碼
        If TextBox1.Text = Account And TextBox2.Text = Password Then
            Label1.Text = TextBox1.Text & "：登入成功！"
            '跳轉參考資料 https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/199321/
            ' Response.Redirect("Home我的太太.aspx", False)
            'Server.Transfer("Home我的太太.aspx")
            'Server.Execute("Home我的太太.aspx")

        Else
            Label1.Text = TextBox1.Text & "：登入失敗！"
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
        帳號：<asp:TextBox ID="TextBox1" runat="server" Textmode="SingleLine"></asp:TextBox>
        <br />
        密碼：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="登入" OnClick="Button1_Click" /><br/>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
