
Imports System.Data.SqlClient

Imports Entity

Public Class Data

    Dim dataConnection As New SqlConnection

    Public Sub New()
        dataConnection.ConnectionString = "Data Source=.\sqlexpress;Initial Catalog=DailyTasks;Integrated Security=True"
    End Sub


    Public Sub OpenConnection()
        dataConnection.Open()
    End Sub

    Public Sub CloseConnection()
        dataConnection.Close()
    End Sub

    Public Sub newTask(ByVal newTask As Task)

        Dim sql As String
        sql = "Insert into Task (name, startDate, dueDate, Comments)  VALUES (@name, @startDate, @dueDate, @comments)"
        Dim command As New SqlCommand(sql, dataConnection)
        command.Parameters.Add(New SqlParameter("@Name", SqlDbType.NChar))
        command.Parameters.Add(New SqlParameter("@StartDate", SqlDbType.DateTime))
        command.Parameters.Add(New SqlParameter("@DueDate", SqlDbType.DateTime))
        command.Parameters.Add(New SqlParameter("@Comments", SqlDbType.NChar))

        command.Parameters("@Name").Value = newTask.Name
        command.Parameters("@StartDate").Value = newTask.StartDate
        command.Parameters("@DueDate").Value = newTask.DueDate
        command.Parameters("@Comments").Value = newTask.Comments

        OpenConnection()
        command.ExecuteNonQuery()
        CloseConnection()

    End Sub



    Public Function TodayTasks() As List(Of Entity.TomorrowTask)
        Dim today As Date
        today = Now

        Dim sql As String
        sql = "SELECT name, startDate, comments FROM Task WHERE dueDate = @today AND status = 0"
        Dim command As New SqlCommand(sql, dataConnection)

        command.Parameters.Add(New SqlParameter("@today", SqlDbType.Date))
        command.Parameters("@today").Value = today

        Dim adapter As New SqlDataAdapter
        Dim odataset As New DataSet

        adapter.SelectCommand = command
        adapter.Fill(odataset, "Tasks")
        Dim tasks As New List(Of Entity.TomorrowTask)

        For Each row As DataRow In odataset.Tables(0).Rows
            tasks.Add(getTodayTask(row))
        Next

        Return tasks
    End Function


    Public Function PendingTasks() As List(Of Entity.Task)

        Dim sql As String
        sql = "Select * from Task where status = 0"
        Dim command As New SqlCommand(sql, dataConnection)

        Dim adapter As New SqlDataAdapter
        Dim odataset As New DataSet

        adapter.SelectCommand = command
        adapter.Fill(odataset, "Tasks")
        Dim tasks As New List(Of Entity.Task)

        For Each fila As DataRow In odataset.Tables(0).Rows
            tasks.Add(getTask(fila))
        Next

        Return tasks
    End Function


    Private Function getTask(ByVal row As DataRow) As Entity.Task
        Dim task As New Entity.Task
        task.Name = row("name")
        task.StartDate = row("startDate")
        task.DueDate = row("dueDate")
        task.Comments = row("comments")
        Return task
    End Function


    Private Function getTodayTask(ByVal row As DataRow) As Entity.TomorrowTask
        Dim task As New Entity.TomorrowTask
        task.Name = row("name")
        task.StartDate = row("startDate")
        task.Comments = row("comments")
        Return task
    End Function

    Public Sub completeTask(ByVal id As String)
        Dim sql As String
        sql = "UPDATE Task SET completionDate = @CompletionDate, status = 1 WHERE name = @Name"

        Dim today As New Date
        today = Now()

        Dim command As New SqlCommand(sql, dataConnection)

        command.Parameters.Add(New SqlParameter("@name", SqlDbType.NChar))
        command.Parameters.Add(New SqlParameter("@CompletionDate", SqlDbType.Date))

        command.Parameters("@CompletionDate").Value = today
        command.Parameters("@name").Value = id

        OpenConnection()
        command.ExecuteNonQuery()
        CloseConnection()
    End Sub

  


End Class


