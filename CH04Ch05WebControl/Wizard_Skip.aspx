<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Wizard1_NextButtonClick(sender As Object, e As WizardNavigationEventArgs)
        Select Case Wizard1.ActiveStepIndex
            Case 0
                Label1.Text = TextBox1.Text
            Case 1
                Label2.Text = TextBox2.Text
                If CheckBox1.Checked = True Then
                    Label3.Text = ""
                    Wizard1.ActiveStepIndex = 3
                End If
            Case 2
                Label3.Text = TextBox3.Text
        End Select
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
    
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnNextButtonClick="Wizard1_NextButtonClick">
            <WizardSteps>
                <asp:WizardStep runat="server" StepType="Start" title="1.輸入姓名">
                    請輸入真實姓名<br /> 
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Step" title="2.輸入帳號">
                    請輸入欲使用的帳號名稱<br /> 
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="使用空白密碼" />
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Step" Title="3.輸入密碼">
                    請輸入欲使用的密碼<br /> 
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Finish" Title="4.顯示資訊">
                    您輸入的真實姓名是：<asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    您欲使用的帳號名稱是：<asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    您欲使用的密碼是：<asp:Label ID="Label3" runat="server"></asp:Label>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Complete" Title="完成">
                    個人資料登錄完成
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>
