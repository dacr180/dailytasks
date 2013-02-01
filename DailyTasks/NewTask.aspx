<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NewTask.aspx.vb" Inherits="DailyTasks.NewTask" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New task</title>
</head>
<body>
    <form id="form1" runat="server">
    
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/DailyTasks.aspx">Back</asp:LinkButton>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Task name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="NameMessage" runat="server"></asp:Label>
    


        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
                <br />
        <asp:Label ID="Label3" runat="server" Text="Start date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        

        <br />
        <eo:DatePicker ID="SelectedDate1" runat="server" ControlSkinID="None" 
            DayCellHeight="15" DayCellWidth="31" DayHeaderFormat="Short" DisabledDates="" 
            OtherMonthDayVisible="True" SelectedDates="" TitleFormat="MMMM, yyyy" 
            TitleLeftArrowImageUrl="DefaultSubMenuIconRTL" 
            TitleRightArrowImageUrl="DefaultSubMenuIcon" VisibleDate="2013-01-01">
            <calendarstyle csstext="background-color:white;border-bottom-color:Silver;border-bottom-style:solid;border-bottom-width:1px;border-left-color:Silver;border-left-style:solid;border-left-width:1px;border-right-color:Silver;border-right-style:solid;border-right-width:1px;border-top-color:Silver;border-top-style:solid;border-top-width:1px;color:#2C0B1E;padding-bottom:5px;padding-left:5px;padding-right:5px;padding-top:5px;" />
            <TitleStyle CssText="font-family:Verdana;font-size:8.75pt;padding-bottom:5px;padding-left:5px;padding-right:5px;padding-top:5px;" />
            <titlearrowstyle csstext="cursor: hand" />
            <monthstyle csstext="cursor:hand;margin-bottom:0px;margin-left:4px;margin-right:4px;margin-top:0px;" />
            <DayHeaderStyle CssText="font-family:Verdana;font-size:8pt;border-bottom: #f5f5f5 1px solid" />
            <DayStyle CssText="font-family:Verdana;font-size:8pt;" />
            <dayhoverstyle csstext="font-family:Verdana;font-size:8pt;background-image:url('00040402');color:#1c7cdc;" />
            <todaystyle csstext="font-family:Verdana;font-size:8pt;background-image:url('00040401');color:#1176db;" />
            <SelectedDayStyle CssText="font-family:Verdana;font-size:8pt;background-image:url('00040403');color:Brown;" />
            <disableddaystyle csstext="font-family:Verdana;font-size:8pt;color: gray" />
            <FooterTemplate>
                <table border="0" cellPadding="0" cellspacing="5" 
                    style="font-size: 11px; font-family: Verdana">
                    <tr>
                        <td width="30">
                        </td>
                        <td valign="center">
                            <img src="{img:00040401}"></img></td>
                        <td valign="center">
                            Today: {var:today:MM/dd/yyyy}</td>
                    </tr>
                </table>
            </FooterTemplate>
        </eo:DatePicker>
        
        <asp:Label ID="StartDateMessage" runat="server"></asp:Label>
    


        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Due Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <eo:DatePicker ID="SelectedDate2" runat="server" ControlSkinID="None" 
            DayCellHeight="15" DayCellWidth="31" DayHeaderFormat="Short" DisabledDates="" 
            OtherMonthDayVisible="True" SelectedDates="" TitleFormat="MMMM, yyyy" 
            TitleLeftArrowImageUrl="DefaultSubMenuIconRTL" 
            TitleRightArrowImageUrl="DefaultSubMenuIcon" VisibleDate="2013-01-01">
            <calendarstyle csstext="background-color:white;border-bottom-color:Silver;border-bottom-style:solid;border-bottom-width:1px;border-left-color:Silver;border-left-style:solid;border-left-width:1px;border-right-color:Silver;border-right-style:solid;border-right-width:1px;border-top-color:Silver;border-top-style:solid;border-top-width:1px;color:#2C0B1E;padding-bottom:5px;padding-left:5px;padding-right:5px;padding-top:5px;" />
            <TitleStyle CssText="font-family:Verdana;font-size:8.75pt;padding-bottom:5px;padding-left:5px;padding-right:5px;padding-top:5px;" />
            <titlearrowstyle csstext="cursor: hand" />
            <monthstyle csstext="cursor:hand;margin-bottom:0px;margin-left:4px;margin-right:4px;margin-top:0px;" />
            <DayHeaderStyle CssText="font-family:Verdana;font-size:8pt;border-bottom: #f5f5f5 1px solid" />
            <DayStyle CssText="font-family:Verdana;font-size:8pt;" />
            <dayhoverstyle csstext="font-family:Verdana;font-size:8pt;background-image:url('00040402');color:#1c7cdc;" />
            <todaystyle csstext="font-family:Verdana;font-size:8pt;background-image:url('00040401');color:#1176db;" />
            <SelectedDayStyle CssText="font-family:Verdana;font-size:8pt;background-image:url('00040403');color:Brown;" />
            <disableddaystyle csstext="font-family:Verdana;font-size:8pt;color: gray" />
            <FooterTemplate>
                <table border="0" cellPadding="0" cellspacing="5" 
                    style="font-size: 11px; font-family: Verdana">
                    <tr>
                        <td width="30">
                        </td>
                        <td valign="center">
                            <img src="{img:00040401}"></img></td>
                        <td valign="center">
                            Today: {var:today:MM/dd/yyyy}</td>
                    </tr>
                </table>
            </FooterTemplate>
        </eo:DatePicker>
        <asp:Label ID="DueDateMessage" runat="server"></asp:Label>
    


        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Task comments"></asp:Label>
        <br />



        <asp:TextBox ID="comments" runat="server"></asp:TextBox>
        <br />
        <br />



        <br />
        <asp:Button ID="BtnNewTask" runat="server" Text="New task" 
            Width="153px" Height="26px" />
        <br />
        <br />

        <asp:Label ID="information" runat="server"></asp:Label>
    


    <div>
    
    </div>
    </form>
</body>
</html>
