Public Class NewTask
    Inherits System.Web.UI.Page
    Dim negocios As New Logic.Logic

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnNewTask_Click(ByVal sender As Object, ByVal e As EventArgs) Handles BtnNewTask.Click
        Dim newTask As New Entity.Task

        newTask.Name = Request("name")
        newTask.StartDate = SelectedDate1.SelectedDate()
        newTask.DueDate = SelectedDate2.SelectedDate()
        newTask.Comments = Request("comments")

        If SelectedDate1.SelectedDate = Nothing Then
            StartDateMessage.Text = "Enter start date of the task"
        Else
            StartDateMessage.Text = ""
        End If

        If SelectedDate2.SelectedDate = Nothing Then
            DueDateMessage.Text = "Enter due date of the task"
        Else
            DueDateMessage.Text = ""
        End If

        If name.Text = Nothing Then
            NameMessage.Text = "Enter the name of the task."
        Else
            NameMessage.Text = ""
        End If

        If SelectedDate1.SelectedDate = Nothing Or SelectedDate2.SelectedDate = Nothing Or name.Text = Nothing Then
            information.Text = "You must fill in all of the fields."
        Else
            negocios.insertTask(newTask)
            information.Text = "Added Task"
            name.Text = ""
            SelectedDate1.SelectedDate = Nothing
            SelectedDate2.SelectedDate = Nothing
            comments.Text = ""
        End If

    End Sub
End Class