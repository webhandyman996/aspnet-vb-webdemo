<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home我的太太.aspx.vb" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Wife's Profile</title>
    <style type="text/css">
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="T1" border="1">
                <caption>My Ex-girlfriend's Profile (She's My Wife to now)</caption>
                <tr>
                    <td bgcolor="Red">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/RYAN_DSC-0204.jpg" Width="300px" />
                    </td>
                    <td bgcolor="Yellow">
                        <table id="T2">
                            <tr>
                                <td>NAME:</td>
                                <td>Shiny</td>
                                <td>What a weird name</td>
                            </tr>
                            <tr>
                                <td>AGE:</td>
                                <td>
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>DATE OF BIRTH:</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                                </td>
                                <td>
                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>SEX:</td>
                                <td>Femal</td>
                                <td>But no more sexy</td>
                            </tr>
                            <tr>
                                <td>PHONE:</td>
                                <td>091728456</td>
                                <td>She alway focus on Line</td>
                            </tr>
                            <tr>
                                <td>Line ID:</td>
                                <td>ShinyLineID888</td>
                            </tr>
                            <tr>
                                <td>EMAIL:</td>
                                <td>smchanchan@yahoo.com.tw</td>
                            </tr>
                            <tr>
                                <td>ADDRESS:</td>
                                <td>No.195-4, Sec. 2, Roosevelt Rd., Zhongzheng District, Taipei City 100,</td>
                            </tr>
                        </table>
                    </td>
                </tr>

                <tr>
                    <td bgcolor="blue">
                        <center>
                                Cooking Skill
                            </center>
                        <table id="T3" title=" Cooking Skill">
                            <tr>
                                <td>Taiwanese meals</td>
                                <td>*****</td>
                                <td>Pretty Good</td>
                            </tr>
                            <tr>
                                <td>Vietnamese meals</td>
                                <td>****</td>
                                <td>Good</td>
                            </tr>
                            <tr>
                                <td>Thai meals</td>
                                <td>***</td>
                                <td>OK..</td>
                            </tr>
                            <tr>
                                <td>Japanese meals</td>
                                <td>***</td>
                                <td>OK..</td>
                            </tr>
                            <tr>
                                <td>Italian meals</td>
                                <td>****</td>
                                <td>Good</td>
                            </tr>
                        </table>
                    </td>
                    <td bgcolor="Green">
                        <table>
                            <tr>
                                <td>
                                    <center> Language Skill   </center>
                                    <table id="T4">
                                        <tr>
                                            <td>English</td>
                                            <td>*****</td>
                                            <td>Good</td>
                                        </tr>
                                        <tr>
                                            <td>Japanese</td>
                                            <td>****</td>
                                            <td>What a surprise!</td>
                                        </tr>
                                        <tr>
                                            <td>German</td>
                                            <td>***</td>
                                            <td>Wow! she know that</td>
                                        </tr>
                                        <tr>
                                            <td>Chinese</td>
                                            <td>*****</td>
                                            <td>Good</td>
                                        </tr>
                                        <tr>
                                            <td>Taiwanese</td>
                                            <td>***</td>
                                            <td>weird</td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <%--<center>5415464654</center>
                                    <table id="T5">
                                        <tr></tr>
                                        <tr>
                                            <td>English</td>
                                            <td>*****</td>
                                            <td>Good</td>
                                        </tr>
                                        <tr>
                                            <td>Japanese</td>
                                            <td>****</td>
                                            <td>What a surprise!</td>
                                        </tr>
                                        <tr>
                                            <td>German</td>
                                            <td>***</td>
                                            <td>Wow! she know that</td>
                                        </tr>
                                        <tr>
                                            <td>Chinese</td>
                                            <td>*****</td>
                                            <td>Good</td>
                                        </tr>
                                        <tr>
                                            <td>Taiwanese</td>
                                            <td>***</td>
                                            <td>weird</td>
                                        </tr>
                                    </table>--%>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>



        </div>
    </form>
</body>
</html>
