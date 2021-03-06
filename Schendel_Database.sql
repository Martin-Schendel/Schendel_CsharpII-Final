USE [SchendelCSFinal]
GO
/****** Object:  Table [dbo].[Assignment]    Script Date: 5/12/2022 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[AssignmentID] [int] NOT NULL,
	[CourseID] [int] NULL,
	[DueDate] [date] NULL,
	[AssignmentDetails] [varchar](512) NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 5/12/2022 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] NOT NULL,
	[InstructorID] [int] NULL,
	[CourseName] [varchar](50) NULL,
	[CourseCredits] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 5/12/2022 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorID] [int] NOT NULL,
	[InstFirstName] [varchar](50) NULL,
	[InstLastName] [varchar](50) NULL,
	[InstEmail] [varchar](50) NULL,
	[InstPassword] [varchar](50) NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudAssignSubmission]    Script Date: 5/12/2022 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudAssignSubmission](
	[SubmissionID] [int] NOT NULL,
	[StudentID] [int] NULL,
	[AssignmentID] [int] NULL,
	[Submission] [varchar](512) NULL,
	[SubmissionDate] [date] NULL,
 CONSTRAINT [PK_StudAssignSubmission] PRIMARY KEY CLUSTERED 
(
	[SubmissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 5/12/2022 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [int] NOT NULL,
	[StudFirstName] [varchar](50) NULL,
	[StudLastName] [varchar](50) NULL,
	[StudEmail] [varchar](50) NULL,
	[StudPassword] [varchar](255) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentCourse]    Script Date: 5/12/2022 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourse](
	[StudentID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
 CONSTRAINT [PK_StudentCourse] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Submission]    Script Date: 5/12/2022 10:00:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Submission](
	[SubmissionID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[AssignmentID] [int] NOT NULL,
	[Submission] [varchar](512) NOT NULL,
	[SubmissionDate] [date] NULL,
 CONSTRAINT [PK_Submission] PRIMARY KEY CLUSTERED 
(
	[SubmissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Instructor] ([InstructorID], [InstFirstName], [InstLastName], [InstEmail], [InstPassword]) VALUES (0, N'Kevin ', N'Gutierrez', N'kg@sctcc.edu', N'test')
INSERT [dbo].[Instructor] ([InstructorID], [InstFirstName], [InstLastName], [InstEmail], [InstPassword]) VALUES (1, N'Joseph', N'Silman', N'js@sctcc.edu', N'test')
INSERT [dbo].[Instructor] ([InstructorID], [InstFirstName], [InstLastName], [InstEmail], [InstPassword]) VALUES (2, N'Dylan', N'Edwards', N'ds@sctcc.edu', N'test')
INSERT [dbo].[Instructor] ([InstructorID], [InstFirstName], [InstLastName], [InstEmail], [InstPassword]) VALUES (3, N'John', N'Wood', N'jw@sctcc.edu', N'test')
INSERT [dbo].[Instructor] ([InstructorID], [InstFirstName], [InstLastName], [InstEmail], [InstPassword]) VALUES (4, N'Harris', N'Pengeston', N'hp@sctcc.edu', N'test')
INSERT [dbo].[Instructor] ([InstructorID], [InstFirstName], [InstLastName], [InstEmail], [InstPassword]) VALUES (5, N'Adam', N'Smeija', N'as@sctcc.edu', N'test')
INSERT [dbo].[Instructor] ([InstructorID], [InstFirstName], [InstLastName], [InstEmail], [InstPassword]) VALUES (6, N'Diane', N'Ehr', N'de@sctcc.edu', N'test')
INSERT [dbo].[Instructor] ([InstructorID], [InstFirstName], [InstLastName], [InstEmail], [InstPassword]) VALUES (7, N'Harold', N'Wesloh', N'hw@sctcc.edu', N'test')
INSERT [dbo].[Instructor] ([InstructorID], [InstFirstName], [InstLastName], [InstEmail], [InstPassword]) VALUES (8, N'Hudda', N'Ibrahim', N'hi@sctcc.edu', N'test')
INSERT [dbo].[Instructor] ([InstructorID], [InstFirstName], [InstLastName], [InstEmail], [InstPassword]) VALUES (9, N'Julie', N'Steinkraus', N'js@bms.edu', N'test')
GO
INSERT [dbo].[Student] ([StudentID], [StudFirstName], [StudLastName], [StudEmail], [StudPassword]) VALUES (0, N'Martin', N'Schendel', N'13mschen@gmail.com', N'test')
INSERT [dbo].[Student] ([StudentID], [StudFirstName], [StudLastName], [StudEmail], [StudPassword]) VALUES (1, N'Kailey', N'Karls', N'kaileykarls@gmail.com', N'test')
INSERT [dbo].[Student] ([StudentID], [StudFirstName], [StudLastName], [StudEmail], [StudPassword]) VALUES (2, N'Kvothe', N'Arlidenson', N'kalidenson@gmail.com', N'test')
INSERT [dbo].[Student] ([StudentID], [StudFirstName], [StudLastName], [StudEmail], [StudPassword]) VALUES (3, N'Meluan', N'Lackless', N'mlack@gmail.com', N'test')
INSERT [dbo].[Student] ([StudentID], [StudFirstName], [StudLastName], [StudEmail], [StudPassword]) VALUES (4, N'Maer', N'Alveron', N'mear@vintas.gov', N'test')
INSERT [dbo].[Student] ([StudentID], [StudFirstName], [StudLastName], [StudEmail], [StudPassword]) VALUES (5, N'Eragon', N'Bromson', N'saphirarider@alg.sa', N'test')
INSERT [dbo].[Student] ([StudentID], [StudFirstName], [StudLastName], [StudEmail], [StudPassword]) VALUES (6, N'William', N'Lawrence', N'cptwl@temera.ire', N'test')
INSERT [dbo].[Student] ([StudentID], [StudFirstName], [StudLastName], [StudEmail], [StudPassword]) VALUES (7, N'Jack', N'Sparrow', N'CAPTAIN@tb.pearl', N'test')
INSERT [dbo].[Student] ([StudentID], [StudFirstName], [StudLastName], [StudEmail], [StudPassword]) VALUES (8, N'Robert', N'Martin', N'unclebob@cleancoders.com', N'test')
INSERT [dbo].[Student] ([StudentID], [StudFirstName], [StudLastName], [StudEmail], [StudPassword]) VALUES (9, N'Auri', N'Subterr', N'tunnelgrl@uni.edu', N'test')
GO
