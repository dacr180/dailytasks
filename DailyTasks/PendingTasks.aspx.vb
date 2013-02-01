Public Class PendingTasks
    Inherits System.Web.UI.Page
    Dim logic As New Logic.Logic

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DailyTaskQuery_Click(ByVal sender As Object, ByVal e As EventArgs) Handles DailyTaskQuery.Click
        DailyTasksView.DataSource = logic.PendindTasksQuery
        DailyTasksView.DataBind()
    End Sub

    Protected Sub DailyTasksView_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DailyTasksView.SelectedIndexChanged
        logic.CompletedTask(DailyTasksView.SelectedRow.Cells(1).Text)
        DailyTasksView.DataSource = logic.PendindTasksQuery
        DailyTasksView.DataBind()
    End Sub

End Class