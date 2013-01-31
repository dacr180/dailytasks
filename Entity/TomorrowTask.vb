

Public Class TomorrowTask


    Private taskName As String
    Public Property Name() As String
        Get
            Return taskName
        End Get
        Set(ByVal value As String)
            taskName = value
        End Set
    End Property


    Private startDateTask As Date
    Public Property StartDate() As Date
        Get
            Return startDateTask
        End Get
        Set(ByVal value As Date)
            startDateTask = value
        End Set
    End Property




    Private taskComments As String
    Public Property Comments() As String
        Get
            Return taskComments
        End Get
        Set(ByVal value As String)
            taskComments = value
        End Set
    End Property


End Class

