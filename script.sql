
/****** Object:  Table [dbo].[AttendeeMeeting]    Script Date: 26-03-2020 02:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendeeMeeting](
	[AttendeeId] [int] NOT NULL,
	[MeetingId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_AttandeeMeeting_CreatedDate]  DEFAULT (getdate()),
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_AttendeeMeeting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Attendees]    Script Date: 26-03-2020 02:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL CONSTRAINT [DF_Attendees_CreateDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_Attendees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Meetings]    Script Date: 26-03-2020 02:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meetings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[Agenda] [nvarchar](200) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL CONSTRAINT [DF_Meetings_CreateDate]  DEFAULT (getdate()),
	[CreatedBy] [int] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Meetings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 26-03-2020 02:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL CONSTRAINT [DF_User_CreateDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AttendeeMeeting] ON 

INSERT [dbo].[AttendeeMeeting] ([AttendeeId], [MeetingId], [CreatedDate], [Id]) VALUES (1, 4, CAST(N'2020-03-25 21:16:58.053' AS DateTime), 1004)
INSERT [dbo].[AttendeeMeeting] ([AttendeeId], [MeetingId], [CreatedDate], [Id]) VALUES (2, 4, CAST(N'2020-03-25 21:16:58.093' AS DateTime), 1005)
INSERT [dbo].[AttendeeMeeting] ([AttendeeId], [MeetingId], [CreatedDate], [Id]) VALUES (1, 5, CAST(N'2020-03-25 21:17:12.967' AS DateTime), 1006)
INSERT [dbo].[AttendeeMeeting] ([AttendeeId], [MeetingId], [CreatedDate], [Id]) VALUES (2, 5, CAST(N'2020-03-25 21:17:12.970' AS DateTime), 1007)
INSERT [dbo].[AttendeeMeeting] ([AttendeeId], [MeetingId], [CreatedDate], [Id]) VALUES (3, 6, CAST(N'2020-03-25 21:26:23.043' AS DateTime), 1020)
INSERT [dbo].[AttendeeMeeting] ([AttendeeId], [MeetingId], [CreatedDate], [Id]) VALUES (1, 1005, CAST(N'2020-03-25 21:27:02.677' AS DateTime), 1021)
INSERT [dbo].[AttendeeMeeting] ([AttendeeId], [MeetingId], [CreatedDate], [Id]) VALUES (2, 1005, CAST(N'2020-03-25 21:27:02.680' AS DateTime), 1022)
INSERT [dbo].[AttendeeMeeting] ([AttendeeId], [MeetingId], [CreatedDate], [Id]) VALUES (1, 1007, CAST(N'2020-03-26 00:33:54.927' AS DateTime), 1028)
INSERT [dbo].[AttendeeMeeting] ([AttendeeId], [MeetingId], [CreatedDate], [Id]) VALUES (2, 1007, CAST(N'2020-03-26 00:33:54.930' AS DateTime), 1029)
INSERT [dbo].[AttendeeMeeting] ([AttendeeId], [MeetingId], [CreatedDate], [Id]) VALUES (1, 1006, CAST(N'2020-03-26 01:20:45.873' AS DateTime), 1031)
INSERT [dbo].[AttendeeMeeting] ([AttendeeId], [MeetingId], [CreatedDate], [Id]) VALUES (1, 1008, CAST(N'2020-03-26 01:43:28.167' AS DateTime), 1032)
SET IDENTITY_INSERT [dbo].[AttendeeMeeting] OFF
SET IDENTITY_INSERT [dbo].[Attendees] ON 

INSERT [dbo].[Attendees] ([Id], [Name], [Email], [CreateDate]) VALUES (1, N'John', N'john@test.com', CAST(N'2020-03-17 20:10:34.073' AS DateTime))
INSERT [dbo].[Attendees] ([Id], [Name], [Email], [CreateDate]) VALUES (2, N'Mike', N'mike@test.com', CAST(N'2020-03-17 20:10:39.620' AS DateTime))
INSERT [dbo].[Attendees] ([Id], [Name], [Email], [CreateDate]) VALUES (3, N'Sam', N'sam@test.com', CAST(N'2020-03-17 20:10:46.463' AS DateTime))
SET IDENTITY_INSERT [dbo].[Attendees] OFF
SET IDENTITY_INSERT [dbo].[Meetings] ON 

INSERT [dbo].[Meetings] ([Id], [Subject], [Agenda], [DateTime], [CreateDate], [CreatedBy], [UpdateDate]) VALUES (4, N'Test-up', N'Test-up', CAST(N'2020-03-25 16:00:00.000' AS DateTime), CAST(N'2020-03-20 13:52:26.210' AS DateTime), 1, CAST(N'2020-03-25 21:16:54.387' AS DateTime))
INSERT [dbo].[Meetings] ([Id], [Subject], [Agenda], [DateTime], [CreateDate], [CreatedBy], [UpdateDate]) VALUES (5, N'Test-2', N'Test-3', CAST(N'2020-03-25 16:00:00.000' AS DateTime), CAST(N'2020-03-20 16:46:55.047' AS DateTime), 1, CAST(N'2020-03-25 21:17:12.963' AS DateTime))
INSERT [dbo].[Meetings] ([Id], [Subject], [Agenda], [DateTime], [CreateDate], [CreatedBy], [UpdateDate]) VALUES (6, N'Mohsin', N'Meeting for OnShore Meeting for OnShore Meeting for OnShore Meeting for OnShore', CAST(N'2020-03-25 16:00:00.000' AS DateTime), CAST(N'2020-03-20 17:58:13.307' AS DateTime), 1, CAST(N'2020-03-25 21:26:23.033' AS DateTime))
INSERT [dbo].[Meetings] ([Id], [Subject], [Agenda], [DateTime], [CreateDate], [CreatedBy], [UpdateDate]) VALUES (1005, N'Interview-Full Stack Developer', N'Test onshore team member for scm project', CAST(N'2020-03-25 16:00:00.000' AS DateTime), CAST(N'2020-03-25 21:27:02.663' AS DateTime), 1, CAST(N'2020-03-25 21:27:02.653' AS DateTime))
INSERT [dbo].[Meetings] ([Id], [Subject], [Agenda], [DateTime], [CreateDate], [CreatedBy], [UpdateDate]) VALUES (1006, N'Test-date', N'Date Testin', CAST(N'2020-03-26 16:00:00.000' AS DateTime), CAST(N'2020-03-26 00:14:01.317' AS DateTime), 1, CAST(N'2020-03-26 01:20:45.807' AS DateTime))
INSERT [dbo].[Meetings] ([Id], [Subject], [Agenda], [DateTime], [CreateDate], [CreatedBy], [UpdateDate]) VALUES (1007, N'Test', N'Tst', CAST(N'2020-03-25 16:00:00.000' AS DateTime), CAST(N'2020-03-26 00:33:54.917' AS DateTime), 1, CAST(N'2020-03-26 00:33:54.910' AS DateTime))
INSERT [dbo].[Meetings] ([Id], [Subject], [Agenda], [DateTime], [CreateDate], [CreatedBy], [UpdateDate]) VALUES (1008, N'Test-userid', N'userid', CAST(N'2020-03-25 16:00:00.000' AS DateTime), CAST(N'2020-03-26 01:43:28.143' AS DateTime), 1, CAST(N'2020-03-26 01:43:28.057' AS DateTime))
SET IDENTITY_INSERT [dbo].[Meetings] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email], [CreateDate]) VALUES (1, N'user1', N'123test', N'abc@abc.com', CAST(N'2020-03-17 20:09:56.760' AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[AttendeeMeeting]  WITH CHECK ADD  CONSTRAINT [FK_AttendeeMeeting_Attendees] FOREIGN KEY([AttendeeId])
REFERENCES [dbo].[Attendees] ([Id])
GO
ALTER TABLE [dbo].[AttendeeMeeting] CHECK CONSTRAINT [FK_AttendeeMeeting_Attendees]
GO
ALTER TABLE [dbo].[AttendeeMeeting]  WITH CHECK ADD  CONSTRAINT [FK_AttendeeMeeting_Meetings] FOREIGN KEY([MeetingId])
REFERENCES [dbo].[Meetings] ([Id])
GO
ALTER TABLE [dbo].[AttendeeMeeting] CHECK CONSTRAINT [FK_AttendeeMeeting_Meetings]
GO
ALTER TABLE [dbo].[Meetings]  WITH CHECK ADD  CONSTRAINT [FK_Meetings_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Meetings] CHECK CONSTRAINT [FK_Meetings_Users]
GO
