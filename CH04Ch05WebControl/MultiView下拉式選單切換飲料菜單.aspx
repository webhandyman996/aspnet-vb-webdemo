<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs)
        MultiView1.ActiveViewIndex = DropDownList1.SelectedIndex
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
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="0" Selected="True">頁面1</asp:ListItem>
            <asp:ListItem Value="1">頁面2</asp:ListItem>
            <asp:ListItem Value="2">頁面3</asp:ListItem>
            <asp:ListItem Value="3">頁面4</asp:ListItem>
        </asp:DropDownList>
        <asp:Panel ID="Panel1" runat="server" Width="550px">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:Panel ID="Panel2" runat="server" BackColor="#FFFF66" >
                    請選擇你喜歡的飲料<br />
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem Value="10">紅茶</asp:ListItem>
                        <asp:ListItem Value="12">綠茶</asp:ListItem>
                        <asp:ListItem Value="15">奶茶</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:Button ID="Button1" runat="server"  Text="確定" />
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </asp:Panel>
            </asp:View>
            <asp:View ID="View2" runat="server">
                 <asp:Panel ID="Panel3" runat="server" BackColor="#6699FF" >
                    飲料訂購清單<br />
                    飲料名稱<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp; 訂購<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    公斤&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="新增" />
                    <br />
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                    </asp:CheckBoxList>
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="刪除勾選項目"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="清除所有項目"  />
    
                    <br />
                    <br />
                    <asp:Button ID="Button5" runat="server" Text="總重" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </asp:Panel>    
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:Panel ID="Panel4" runat="server" BackColor="#00FFCC">頁面3</asp:Panel>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <asp:Panel ID="Panel5" runat="server" BackColor="#FF5050">頁面4</asp:Panel>
            </asp:View>
        </asp:MultiView>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
