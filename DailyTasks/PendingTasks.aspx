<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PendingTasks.aspx.vb" Inherits="DailyTasks.PendingTasks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pending tasks</title>
</head>
<body>
    <form id="form1" runat="server">
    
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/DailyTasks.aspx">Back</asp:LinkButton>

        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="DailyTaskQuery" runat="server" Text="Pending tasks" Width="129px" />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="DailyTasksView" runat="server">
        </asp:GridView>
    <div>
    
    </div>
    </form>
</body>
</html>
