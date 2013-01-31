<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DailyTasks.aspx.vb" Inherits="DailyTasks.DailyTasks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Daily tasks</title>
</head>
<body>

  <form id="form1" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/NewTask.aspx">New task</asp:LinkButton>
    &nbsp;&nbsp;
    <br />
    <br />
    <br />
    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/TodayTasks.aspx">Today tasks</asp:LinkButton>
    <br />
    <br />
    <br />
     <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/PendingTasks.aspx">All pending tasks</asp:LinkButton>
    <br />
    <br />
    <br />
    <div>
    
        <br />
    
    </div>
    </form>



</body>
</html>
