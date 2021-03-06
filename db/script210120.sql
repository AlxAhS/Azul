USE [master]
GO
/****** Object:  Database [DogtorDB]    Script Date: 1/21/2020 12:20:57 PM ******/
CREATE DATABASE [DogtorDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DogtorDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL2017\MSSQL\DATA\DogtorDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DogtorDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL2017\MSSQL\DATA\DogtorDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DogtorDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DogtorDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DogtorDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DogtorDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DogtorDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DogtorDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DogtorDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DogtorDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DogtorDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DogtorDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DogtorDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DogtorDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DogtorDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DogtorDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DogtorDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DogtorDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DogtorDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DogtorDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DogtorDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DogtorDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DogtorDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DogtorDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DogtorDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DogtorDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DogtorDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DogtorDB] SET  MULTI_USER 
GO
ALTER DATABASE [DogtorDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DogtorDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DogtorDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DogtorDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DogtorDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DogtorDB', N'ON'
GO
ALTER DATABASE [DogtorDB] SET QUERY_STORE = OFF
GO
USE [DogtorDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [smalldatetime] NOT NULL,
	[Hour] [smalldatetime] NOT NULL,
	[Doctor] [int] NOT NULL,
	[Patient] [int] NOT NULL,
	[AppointmentType] [nvarchar](10) NOT NULL,
	[Status] [nvarchar](10) NOT NULL,
	[ConsultingRoom] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_Appointment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClinicHistory]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClinicHistory](
	[ID] [nvarchar](450) NOT NULL,
	[PatientID] [nvarchar](15) NOT NULL,
	[AnalisisPlan] [nvarchar](800) NOT NULL,
	[Diagnostic] [nvarchar](800) NOT NULL,
	[NeurologicalStatus] [nvarchar](100) NOT NULL,
	[HeadandShoulder] [nvarchar](100) NULL,
	[CardioPulmonar] [nvarchar](100) NULL,
	[Abdomen] [nvarchar](100) NULL,
	[GenitoUrinary] [nvarchar](100) NULL,
 CONSTRAINT [PK_ClinicHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConsultingRoom]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsultingRoom](
	[ID] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](3) NOT NULL,
	[Status] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_ConsultingRoom] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[IDNumber] [nvarchar](15) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[MobilePhone] [nvarchar](15) NULL,
	[Mail] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evolution]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evolution](
	[ID] [nvarchar](450) NOT NULL,
	[HistoryID] [int] NOT NULL,
 CONSTRAINT [PK_Evolution] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EvolutionDetail]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvolutionDetail](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[EvolutionID] [int] NOT NULL,
	[Subjetive] [nvarchar](100) NOT NULL,
	[Objetive] [nvarchar](100) NOT NULL,
	[Analisis] [nvarchar](800) NOT NULL,
	[Temperature] [nvarchar](10) NOT NULL,
	[Justification] [nvarchar](100) NOT NULL,
	[Diagnose] [nvarchar](800) NOT NULL,
 CONSTRAINT [PK_EvolutionDetail] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoryDetail]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoryDetail](
	[DetailID] [int] IDENTITY(1,1) NOT NULL,
	[HistoryID] [int] NOT NULL,
	[Fecha] [smalldatetime] NOT NULL,
	[Reason] [nvarchar](50) NOT NULL,
	[CurrentDisease] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HistoryDetail] PRIMARY KEY CLUSTERED 
(
	[DetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Appointment] [int] NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[ID] [nvarchar](15) NOT NULL,
	[TypeID] [nvarchar](2) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[MobilePhone] [nvarchar](15) NULL,
	[Mail] [nvarchar](50) NULL,
	[Address] [nvarchar](150) NULL,
	[Insurance] [nvarchar](50) NOT NULL,
	[DOB] [smalldatetime] NOT NULL,
	[Sex] [nvarchar](1) NOT NULL,
	[Occupation] [nvarchar](50) NOT NULL,
	[Religion] [nvarchar](50) NOT NULL,
	[AfiliationType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhysicalExam]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhysicalExam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DetailID] [int] NOT NULL,
	[HearthFrequency] [nvarchar](3) NOT NULL,
	[BreathingFrequency] [nvarchar](3) NOT NULL,
	[ArterialPresure] [nvarchar](6) NOT NULL,
	[Temperature] [nvarchar](10) NOT NULL,
	[O2SAT] [nvarchar](3) NOT NULL,
	[Weight] [nvarchar](3) NOT NULL,
	[Height] [nvarchar](4) NOT NULL,
	[NeurologicalStatus] [nvarchar](100) NOT NULL,
	[HeadandShoulder] [nvarchar](100) NOT NULL,
	[PulmonaryCardio] [nvarchar](100) NOT NULL,
	[Abdomen] [nvarchar](100) NOT NULL,
	[GenitoUrinary] [nvarchar](100) NOT NULL,
	[Limbs] [nvarchar](100) NOT NULL,
	[Skin] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PhysicalExam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserva]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserva](
	[_idReserva] [int] IDENTITY(1,1) NOT NULL,
	[_idviajero] [nvarchar](max) NULL,
	[_idTransaccion] [nvarchar](max) NULL,
	[_fechaReserva] [datetime2](7) NOT NULL,
	[_estado] [nvarchar](max) NULL,
 CONSTRAINT [PK_Reserva] PRIMARY KEY CLUSTERED 
(
	[_idReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaccion]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaccion](
	[_idReserva] [int] IDENTITY(1,1) NOT NULL,
	[_idviajero] [nvarchar](max) NULL,
	[_estado] [nvarchar](max) NULL,
 CONSTRAINT [PK_Transaccion] PRIMARY KEY CLUSTERED 
(
	[_idReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Viajero]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Viajero](
	[_idViajero] [nvarchar](450) NOT NULL,
	[_nombre] [nvarchar](max) NULL,
	[_fechaNacimiento] [datetime2](7) NOT NULL,
	[_tc] [nvarchar](max) NULL,
	[_expiracion] [nvarchar](max) NULL,
	[_correo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Viajero] PRIMARY KEY CLUSTERED 
(
	[_idViajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vuelo]    Script Date: 1/21/2020 12:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vuelo](
	[_idVuelo] [nvarchar](450) NOT NULL,
	[_idRuta] [int] NOT NULL,
	[_salida] [nvarchar](max) NULL,
	[_llegada] [nvarchar](max) NULL,
	[_asientos] [int] NOT NULL,
	[_base] [int] NOT NULL,
	[_impuestos] [int] NOT NULL,
	[_otrosCargos] [int] NOT NULL,
	[_total] [int] NOT NULL,
 CONSTRAINT [PK_Vuelo] PRIMARY KEY CLUSTERED 
(
	[_idVuelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190403033330_InitialCreate', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190413001104_minimizedb', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190413001236_fixphone', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190414001630_InitialModule', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190414033018_AddImage', N'2.1.8-servicing-32085')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190909070031_ExtendedDataModel', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190909071446_Initial', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190909195344_Extendedv2', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190909205102_Extendedv5', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190923184848_InitialCreate', N'2.2.6-servicing-10079')
SET IDENTITY_INSERT [dbo].[Doctor] ON 

INSERT [dbo].[Doctor] ([Code], [IDNumber], [Name], [MobilePhone], [Mail]) VALUES (1, N'1234', N'Doggie Houser', N'345678', N'correo')
INSERT [dbo].[Doctor] ([Code], [IDNumber], [Name], [MobilePhone], [Mail]) VALUES (2, N'1152434735', N'Alexander Ahumada', N'3136650755', N'alex.ahusoto@gmail.com ')
INSERT [dbo].[Doctor] ([Code], [IDNumber], [Name], [MobilePhone], [Mail]) VALUES (3, N'3456', N'Elto Pijo', N'2345678', N'correo@topijo.com')
INSERT [dbo].[Doctor] ([Code], [IDNumber], [Name], [MobilePhone], [Mail]) VALUES (8, N'667778787', N'elgordito', N'3445667', N'correo@gmail.com')
INSERT [dbo].[Doctor] ([Code], [IDNumber], [Name], [MobilePhone], [Mail]) VALUES (15, N'888888', N'elsa broso', N'4564654', N'sabrocho@gmail.com')
SET IDENTITY_INSERT [dbo].[Doctor] OFF
SET IDENTITY_INSERT [dbo].[Module] ON 

INSERT [dbo].[Module] ([Code], [Name], [Description], [Image]) VALUES (1, N'Historias Clinicas', NULL, N'fas fa-address-book fa-7x')
INSERT [dbo].[Module] ([Code], [Name], [Description], [Image]) VALUES (2, N'Consultorios', NULL, N'fas fa-clinic-medical fa-7x')
INSERT [dbo].[Module] ([Code], [Name], [Description], [Image]) VALUES (3, N'Doctores', NULL, N'fas fa-user-md fa-7x')
INSERT [dbo].[Module] ([Code], [Name], [Description], [Image]) VALUES (4, N'Evoluciones', NULL, N'fas fa-briefcase-medical fa-7x')
INSERT [dbo].[Module] ([Code], [Name], [Description], [Image]) VALUES (5, N'Ordenes', NULL, N'fas fa-book-medical fa-7x')
INSERT [dbo].[Module] ([Code], [Name], [Description], [Image]) VALUES (6, N'Pacientes', NULL, N'fas fa-diagnoses fa-7x')
INSERT [dbo].[Module] ([Code], [Name], [Description], [Image]) VALUES (7, N'Examenes Fisicos', NULL, N'fas fa-stethoscope fa-7x')
SET IDENTITY_INSERT [dbo].[Module] OFF
USE [master]
GO
ALTER DATABASE [DogtorDB] SET  READ_WRITE 
GO
