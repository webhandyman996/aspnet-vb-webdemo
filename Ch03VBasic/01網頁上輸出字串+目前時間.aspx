<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)
        '網頁上輸出 字串+目前時間
        Response.Write("Hi! Let's try to use some Date method  <br/> ")
        Response.Write("------------------------------------- <br/> ")
        Response.Write("Now is :   " & Now + "<br/> ")
        Response.Write("Today is :  </b>" & Today + "<br/> ")
        Response.Write("Today.Date is :  </b>" & Today.Date)
        Response.Write("<br/> ")
        Response.Write("Today.Day is :  </b>" & Today.Day)
        Response.Write("<br/> ")
        Response.Write("Today.Month is :  </b>" & Today.Month)
        Response.Write("<br/> ")
        Response.Write("Today.Year is :  </b>" & Today.Year)
        Response.Write("<br/> ")

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
    
    </div>
    </form>
</body>
</html>
