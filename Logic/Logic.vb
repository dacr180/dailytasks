
Imports Entity
Imports Data

Public Class Logic

    Dim newConnection As New Data.Data

    Public Sub insertTask(ByVal task As Entity.Task)
        newConnection.newTask(task)
    End Sub


    Public Function PendindTasksQuery() As List(Of Entity.Task)
        Return newConnection.PendingTasks()
    End Function


    Public Function TodayTasksQuery() As List(Of Entity.TomorrowTask)
        Return newConnection.TodayTasks()
    End Function

    Public Sub CompletedTask(ByVal id As String)
        newConnection.completeTask(id)
    End Sub


End Class
