<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TEXTBOX_TEST.aspx.vb" Inherits="TEXTBOX_TEST" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MUSIC TEST</title>
 
</head>

<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="28" Text="~*KSU點歌機*~"></asp:Label>
            <br />
            <asp:Label ID="SongNameLabel" runat="server" Font-Bold="True" Font-Names="28" Text="歌.名"></asp:Label>
            <br />

            <asp:TextBox ID="LyricTextBox" runat="server" BackColor="#6699FF" BorderColor="#000099" BorderStyle="Solid" Font-Size="Larger" ForeColor="Black" Height="250px" TextMode="MultiLine" ToolTip="按下按鈕顯示歌詞" Width="567px"></asp:TextBox>
            &nbsp;<asp:Image ID="Image1" runat="server" Width="224px" />
            <br />
        </div>
   <%--     <audio autoplay="autoplay" controls="controls" loop="loop" preload="auto"
            src="F:\LEO\MIDI\BEYER003.MID">     
        </audio>--%>
        <asp:Button ID="Button1" runat="server" Text="&lt;--Button" />
        <asp:Button ID="Button2" runat="server" Text="Button--&gt;" />

    </form>
</body>
</html>
