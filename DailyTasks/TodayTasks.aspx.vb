Public Class TodayTasks
    Inherits System.Web.UI.Page
    Dim logic As New Logic.Logic

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnTodayTasks_Click(ByVal sender As Object, ByVal e As EventArgs) Handles BtnTodayTasks.Click
        TodayTasks2.DataSource = logic.TodayTasksQuery
        TodayTasks2.DataBind()
    End Sub


    Protected Sub TodayTasks2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles TodayTasks2.SelectedIndexChanged
        logic.CompletedTask(TodayTasks2.SelectedRow.Cells(1).Text)
        TodayTasks2.DataSource = logic.TodayTasksQuery
        TodayTasks2.DataBind()
    End Sub

End Class