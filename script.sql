
/****** Object:  Table [dbo].[DailyTasks]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyTasks](
	[DailyTaskId] [int] NOT NULL,
	[TemplateId] [int] NOT NULL,
	[DayNo] [int] NULL,
	[Activities] [varchar](800) NULL,
 CONSTRAINT [PK_DailyTasks] PRIMARY KEY CLUSTERED 
(
	[DailyTaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Surname] [varchar](200) NULL,
	[Email] [varchar](200) NULL,
	[PrimaryCellNo] [varchar](10) NULL,
	[SecondaryCellNo] [varchar](10) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSkills]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSkills](
	[EmployeeSkillId] [int] NOT NULL,
	[EmployeeId] [int] NULL,
	[SkillId] [int] NULL,
	[HourlyRate] [decimal](18, 2) NULL,
 CONSTRAINT [PK_EmployeeSkills] PRIMARY KEY CLUSTERED 
(
	[EmployeeSkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[JobId] [int] NOT NULL,
	[JobNo] [varchar](20) NULL,
	[JobName] [varchar](200) NULL,
	[ClientName] [varchar](200) NULL,
	[DailyTaskId] [int] NULL,
	[CurrentCost] [decimal](18, 2) NULL,
	[ProjectedCost] [decimal](18, 2) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTypes]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTypes](
	[JobTypeId] [int] NOT NULL,
	[JobTypeDesc] [varchar](150) NOT NULL,
 CONSTRAINT [PK_JobTypes] PRIMARY KEY CLUSTERED 
(
	[JobTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[MaterialId] [int] IDENTITY(1,1) NOT NULL,
	[MaterialDesc] [varchar](150) NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialSpecifications]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialSpecifications](
	[MaterialSpecificationId] [int] NOT NULL,
	[MaterialId] [int] NOT NULL,
	[Size] [varchar](200) NULL,
	[MinQuantity] [int] NULL,
	[CurrentQuantity] [int] NULL,
	[SupplierId] [int] NULL,
	[Notes] [varchar](200) NULL,
 CONSTRAINT [PK_MaterialSpecifications] PRIMARY KEY CLUSTERED 
(
	[MaterialSpecificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersolProtectiveEquipments]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersolProtectiveEquipments](
	[PPEId] [int] NOT NULL,
	[PPEDesc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PersolProtectiveEquipments] PRIMARY KEY CLUSTERED 
(
	[PPEId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[SkillId] [int] NOT NULL,
	[SkillDesc] [varchar](200) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierId] [int] NOT NULL,
	[SupplierName] [varchar](200) NULL,
	[ContactPerson] [varchar](200) NULL,
	[PrimaryContactNo] [varchar](10) NULL,
	[SecondaryContactNo] [varchar](10) NULL,
	[Email] [varchar](200) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskEmployeeSkills]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskEmployeeSkills](
	[TaskEmployeeSkillId] [int] NOT NULL,
	[EmployeeSkillId] [int] NOT NULL,
	[TaskId] [int] NULL,
 CONSTRAINT [PK_EmployeeTasks] PRIMARY KEY CLUSTERED 
(
	[TaskEmployeeSkillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[TaskId] [int] NOT NULL,
	[JobId] [int] NULL,
	[DailyTaskId] [int] NULL,
	[DateStarted] [datetime] NULL,
	[TaskStatusId] [int] NULL,
	[TaskCost] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskStatus]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskStatus](
	[TaskStatusId] [int] NOT NULL,
	[StatusDesc] [varchar](200) NULL,
 CONSTRAINT [PK_TaskStatus] PRIMARY KEY CLUSTERED 
(
	[TaskStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskTools]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskTools](
	[TaskToolId] [int] NOT NULL,
	[TaskId] [int] NOT NULL,
	[ToolId] [int] NULL,
 CONSTRAINT [PK_TaskTools] PRIMARY KEY CLUSTERED 
(
	[TaskToolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Templates]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Templates](
	[TemplateId] [int] NOT NULL,
	[TemplateDesc] [varchar](200) NULL,
 CONSTRAINT [PK_Templates] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tools](
	[ToolId] [int] NOT NULL,
	[ToolDesc] [varchar](200) NULL,
	[ToolSpec] [varchar](300) NULL,
	[SerialNo] [varchar](100) NULL,
 CONSTRAINT [PK_Tools] PRIMARY KEY CLUSTERED 
(
	[ToolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 2019/10/22 22:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[VehicleId] [int] NOT NULL,
	[Model] [varchar](200) NULL,
	[RegistratioNo] [varchar](20) NULL,
	[CurrentKM] [bigint] NULL,
	[CurrentCondition] [varchar](200) NULL,
 CONSTRAINT [PK_Vehicles] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DailyTasks]  WITH CHECK ADD  CONSTRAINT [FK_DailyTasks_Templates] FOREIGN KEY([DailyTaskId])
REFERENCES [dbo].[Templates] ([TemplateId])
GO
ALTER TABLE [dbo].[DailyTasks] CHECK CONSTRAINT [FK_DailyTasks_Templates]
GO
ALTER TABLE [dbo].[EmployeeSkills]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSkills_Employees] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([EmployeeId])
GO
ALTER TABLE [dbo].[EmployeeSkills] CHECK CONSTRAINT [FK_EmployeeSkills_Employees]
GO
ALTER TABLE [dbo].[EmployeeSkills]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSkills_Skills] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skills] ([SkillId])
GO
ALTER TABLE [dbo].[EmployeeSkills] CHECK CONSTRAINT [FK_EmployeeSkills_Skills]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_DailyTasks] FOREIGN KEY([DailyTaskId])
REFERENCES [dbo].[DailyTasks] ([DailyTaskId])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_DailyTasks]
GO
ALTER TABLE [dbo].[MaterialSpecifications]  WITH CHECK ADD  CONSTRAINT [FK_MaterialSpecifications_Materials] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Materials] ([MaterialId])
GO
ALTER TABLE [dbo].[MaterialSpecifications] CHECK CONSTRAINT [FK_MaterialSpecifications_Materials]
GO
ALTER TABLE [dbo].[TaskEmployeeSkills]  WITH CHECK ADD  CONSTRAINT [FK_TaskEmployeeSkills_EmployeeSkills] FOREIGN KEY([EmployeeSkillId])
REFERENCES [dbo].[EmployeeSkills] ([EmployeeSkillId])
GO
ALTER TABLE [dbo].[TaskEmployeeSkills] CHECK CONSTRAINT [FK_TaskEmployeeSkills_EmployeeSkills]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_DailyTasks] FOREIGN KEY([DailyTaskId])
REFERENCES [dbo].[DailyTasks] ([DailyTaskId])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_DailyTasks]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_Jobs] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([JobId])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_Jobs]
GO
ALTER TABLE [dbo].[Tasks]  WITH CHECK ADD  CONSTRAINT [FK_Tasks_TaskStatus] FOREIGN KEY([TaskStatusId])
REFERENCES [dbo].[TaskStatus] ([TaskStatusId])
GO
ALTER TABLE [dbo].[Tasks] CHECK CONSTRAINT [FK_Tasks_TaskStatus]
GO
ALTER TABLE [dbo].[TaskTools]  WITH CHECK ADD  CONSTRAINT [FK_TaskTools_Tasks] FOREIGN KEY([TaskId])
REFERENCES [dbo].[Tasks] ([TaskId])
GO
ALTER TABLE [dbo].[TaskTools] CHECK CONSTRAINT [FK_TaskTools_Tasks]
GO
ALTER TABLE [dbo].[TaskTools]  WITH CHECK ADD  CONSTRAINT [FK_TaskTools_Tools] FOREIGN KEY([ToolId])
REFERENCES [dbo].[Tools] ([ToolId])
GO
ALTER TABLE [dbo].[TaskTools] CHECK CONSTRAINT [FK_TaskTools_Tools]
GO

