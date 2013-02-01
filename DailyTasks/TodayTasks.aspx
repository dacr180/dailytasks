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
        <br />
        <asp:Button ID="BtnTodayTasks" runat="server" Text="Today tasks" 
            Width="221px" />
        <br />
        <br />
        <br />
        <asp:GridView ID="TodayTasks2" runat="server" EnableModelValidation="True" 
                CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <br />
        <br />
    
    </div>
    </form>

</body>
</html>
