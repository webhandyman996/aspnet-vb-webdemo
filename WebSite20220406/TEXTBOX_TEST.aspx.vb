
Partial Class TEXTBOX_TEST
    Inherits System.Web.UI.Page
    Dim LyricArray() As String = {"青花瓷素胚勾勒出青花筆鋒濃轉淡  瓶身描繪的牡丹一如你初妝" + Environment.NewLine +
                                  "冉冉檀香透過窗心事我了然  宣紙上走筆至此擱一半" + Environment.NewLine +
                                  "釉色渲染仕女圖韻味被私藏  而你嫣然的一笑如含苞待放" + Environment.NewLine +
                                  "你的美一縷飄散            去到我去不了的地方" + Environment.NewLine +
                                  "天青色等煙雨              而我在等你" + Environment.NewLine +
                                  "炊煙嫋嫋升起              隔江千萬裏" + Environment.NewLine +
                                  "在瓶底書漢隸仿前朝的飄逸  就當我為遇見你伏筆" + Environment.NewLine +
                                  "天青色等煙雨              而我在等你" + Environment.NewLine +
                                  "月色被打撈起              暈開了結局" + Environment.NewLine +
                                  "如傳世的青花瓷自顧自美麗  你眼帶笑意" + Environment.NewLine +
                                  "色白花青的錦鯉躍然於碗底  臨摹宋體落款時卻惦記着你" + Environment.NewLine +
                                  "你隱藏在窯燒裏千年的秘密  極細膩猶如繡花針落地" + Environment.NewLine +
                                  "簾外芭蕉惹驟雨門環惹銅綠  而我路過那江南小鎮惹了你" + Environment.NewLine +
                                  "在潑墨山水畫裏            你從墨色深處被隱去" + Environment.NewLine +
                                  "天青色等煙雨 而我在等你   炊煙嫋嫋升起 隔江千萬裏" + Environment.NewLine +
                                  "在瓶底書漢隸仿前朝的飄逸  就當我為遇見你伏筆" + Environment.NewLine +
                                  "天青色等煙雨 而我在等你   月色被打撈起 暈開了結局" + Environment.NewLine +
                                  "如傳世的青花瓷自顧自美麗  你眼帶笑意" + Environment.NewLine +
                                  "天青色等煙雨 而我在等你   炊煙嫋嫋升起 隔江千萬裏" + Environment.NewLine +
                                  "在瓶底書漢隸仿前朝的飄逸  就當我為遇見你伏筆" + Environment.NewLine +
                                  "天青色等煙雨 而我在等你   月色被打撈起 暈開了結局" + Environment.NewLine +
                                  "如傳世的青花瓷自顧自美麗  你眼帶笑意" + Environment.NewLine +
                                  "你眼帶笑意想説謝謝你",
                                   "一閃一閃亮晶晶　滿天都是小星星" + Environment.NewLine +
                                  "掛在天上放光明　好像許多小眼睛" + Environment.NewLine + "一閃一閃亮晶晶　滿天都是小星星",
                                   "天黑黑欲落雨，阿公仔舉鋤頭欲掘芋掘啊掘掘啊掘" + Environment.NewLine +
                                    "掘著一尾旋鰡鼓，咿呀嘿嘟真正趣味" + Environment.NewLine +
                                    "阿公仔欲煮鹹，阿嬤欲煮淡" + Environment.NewLine +
                                    "倆個相扑來弄破鼎，咿呀嘿嘟隆咚叱咚嗆，哇哈哈" + Environment.NewLine +
                                    "阿公仔欲煮鹹，阿嬤欲煮淡" + Environment.NewLine +
                                    "倆個相扑來弄破鼎，咿呀嘿嘟隆咚叱咚嗆，哇哈哈"
                                  } '宣告字串陣列
    Dim SongNameArray() As String = {"青花瓷", "小星星", "天黑黑"}
    Dim SongsUrl() As String = {"Image\青花瓷.jpg", "Image\小星星.jpg", "Image\天黑黑.jpg"}

    Shared SongIndex As Integer '宣告全域變數


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Response.Write("HI! Click Button to select your song!")
        SongNameLabel.Text = SongNameArray(SongIndex)
        LyricTextBox.Text = LyricArray(SongIndex) '印出所選的歌曲
        Image1.ImageUrl = SongsUrl(SongIndex)
    End Sub
    ''' <summary>
    ''' 遞增日期控制數
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub IncreaseDate()
        If SongIndex + 1 < LyricArray.Length Then '若增加控制數不會超過陣列(日期)上限，則增加控制數
            SongIndex = SongIndex + 1
        Else '否則規0
            SongIndex = 0
        End If
        Response.Write("OperateNumber=" + SongIndex.ToString() + "")
    End Sub
    ''' <summary>
    ''' 遞減日期控制數
    ''' </summary>
    ''' <remarks></remarks>
    Private Sub DecreaseDate()
        If SongIndex - 1 >= 0 Then '若減少控制數不會超過陣列(日期)上限，則增加控制數
            SongIndex = SongIndex - 1
        Else '否則設為陣列(日期)上限
            SongIndex = LyricArray.Length - 1
        End If
        Response.Write("OperateNumber=" + SongIndex.ToString() + "")
    End Sub
    ''' <summary>
    ''' 左鍵按下處理
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    ''' <remarks></remarks>
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Clear() '清除畫面 
        DecreaseDate() '遞減日期
        'Response.Write(stringArray(OperateNumber)) '印出所選的歌曲
        SongNameLabel.Text = SongNameArray(SongIndex)
        LyricTextBox.Text = LyricArray(SongIndex) '印出所選的歌曲
        Image1.ImageUrl = SongsUrl(SongIndex)
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Clear() '清除畫面 
        IncreaseDate() '遞增日期
        'Response.Write(stringArray(OperateNumber)) '印出所選的日期
        SongNameLabel.Text = SongNameArray(SongIndex)
        LyricTextBox.Text = LyricArray(SongIndex) '印出所選的歌曲
        Image1.ImageUrl = SongsUrl(SongIndex)
    End Sub

End Class
