﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PendingTasks.aspx.vb" Inherits="DailyTasks.PendingTasks" %>

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
        <asp:GridView ID="DailyTasksView" runat="server" CellPadding="4" 
                EnableModelValidation="True" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField SelectText="Completed task" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
    <div>
    
        <br />

    </div>
    </form>
</body>
</html>
