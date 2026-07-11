<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Wizard1_FinishButtonClick(sender As Object, e As WizardNavigationEventArgs)
        Label1.Text = "您輸入的真實姓名是：" & TextBox1.Text & "<br/>" & "您欲使用的帳號名稱是：" & TextBox2.Text
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
    
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick">
            <WizardSteps>
                <asp:WizardStep runat="server" StepType="Start" title="1.輸入姓名">
                    請輸入真實姓名<br /> 
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Finish" title="2.輸入帳號">
                    請輸入欲使用的帳號名稱<br /> 
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Complete" Title="完成">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>
