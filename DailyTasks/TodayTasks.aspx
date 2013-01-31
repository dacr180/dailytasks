<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TodayTasks.aspx.vb" Inherits="DailyTasks.TodayTasks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Today tasks</title>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/DailyTasks.aspx">Back</asp:LinkButton>
 <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Today tasks" 
            Width="221px" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" EnableModelValidation="True">
        </asp:GridView>
        <br />
        <br />
    
    </div>
    </form>

</body>
</html>
