Public Class PendingTasks
    Inherits System.Web.UI.Page
    Dim negocios As New Logic.Logic

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DailyTaskQuery_Click(ByVal sender As Object, ByVal e As EventArgs) Handles DailyTaskQuery.Click
        DailyTasksView.DataSource = negocios.PendindTasksQuery
        DailyTasksView.DataBind()
    End Sub
End Class