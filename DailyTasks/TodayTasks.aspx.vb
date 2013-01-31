Public Class TodayTasks
    Inherits System.Web.UI.Page
    Dim negocios As New Logic.Logic

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        GridView1.DataSource = negocios.TodayTasksQuery
        GridView1.DataBind()
    End Sub
End Class