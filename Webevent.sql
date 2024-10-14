USE [master]
GO
/****** Object:  Database [WebEvent]    Script Date: 6/8/2023 9:22:09 AM ******/
CREATE DATABASE [WebEvent]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebEvent', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\WebEvent.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebEvent_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\WebEvent_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebEvent] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebEvent].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebEvent] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebEvent] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebEvent] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebEvent] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebEvent] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebEvent] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebEvent] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WebEvent] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebEvent] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebEvent] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebEvent] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebEvent] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebEvent] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebEvent] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebEvent] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebEvent] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebEvent] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebEvent] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebEvent] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebEvent] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebEvent] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebEvent] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebEvent] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebEvent] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebEvent] SET  MULTI_USER 
GO
ALTER DATABASE [WebEvent] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebEvent] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebEvent] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebEvent] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [WebEvent]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/8/2023 9:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[IdAdmin] [int] NOT NULL,
	[admin] [nvarchar](max) NULL,
	[pass] [nvarchar](max) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[IdAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/8/2023 9:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[idCart] [int] NOT NULL,
	[idTickets] [int] NULL,
	[idEvent] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[idCart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cate]    Script Date: 6/8/2023 9:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cate](
	[IdCate] [int] NOT NULL,
	[Header] [varchar](max) NULL,
	[Viewdetail] [varchar](max) NULL,
 CONSTRAINT [PK_Cate] PRIMARY KEY CLUSTERED 
(
	[IdCate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dt]    Script Date: 6/8/2023 9:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dt](
	[IdEvent] [int] NOT NULL,
	[Tt] [varchar](max) NULL,
	[Img] [varchar](max) NULL,
	[Dt] [varchar](max) NULL,
	[Tt2] [varchar](max) NULL,
	[Img2] [varchar](max) NULL,
	[Dt2] [varchar](max) NULL,
	[Tt3] [varchar](max) NULL,
	[Img3] [varchar](max) NULL,
	[Dt3] [varchar](max) NULL,
	[Banner] [varchar](max) NULL,
	[idcat] [int] NOT NULL,
 CONSTRAINT [PK_Dt] PRIMARY KEY CLUSTERED 
(
	[IdEvent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 6/8/2023 9:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserID] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[IdCart] [int] NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tickets]    Script Date: 6/8/2023 9:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tickets](
	[IdTicket] [int] NOT NULL,
	[Header] [nvarchar](max) NULL,
	[Date] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[Price] [nvarchar](max) NULL,
	[Quantity] [nvarchar](max) NULL,
	[Img] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tickets] PRIMARY KEY CLUSTERED 
(
	[IdTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [pk_CE] FOREIGN KEY([idEvent])
REFERENCES [dbo].[Dt] ([IdEvent])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [pk_CE]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [pk_CT] FOREIGN KEY([idTickets])
REFERENCES [dbo].[Tickets] ([IdTicket])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [pk_CT]
GO
ALTER TABLE [dbo].[Dt]  WITH CHECK ADD  CONSTRAINT [FK_CD] FOREIGN KEY([idcat])
REFERENCES [dbo].[Cate] ([IdCate])
GO
ALTER TABLE [dbo].[Dt] CHECK CONSTRAINT [FK_CD]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [pk_LC] FOREIGN KEY([IdCart])
REFERENCES [dbo].[Cart] ([idCart])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [pk_LC]
GO
USE [master]
GO
ALTER DATABASE [WebEvent] SET  READ_WRITE 
GO
