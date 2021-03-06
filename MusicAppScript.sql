USE [master]
GO
/****** Object:  Database [MusicDB]    Script Date: 3/15/2018 11:57:59 AM ******/
CREATE DATABASE [MusicDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MusicDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MusicDB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MusicDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MusicDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MusicDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MusicDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MusicDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MusicDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MusicDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MusicDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MusicDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MusicDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MusicDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MusicDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MusicDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MusicDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MusicDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MusicDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MusicDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MusicDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MusicDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MusicDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MusicDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MusicDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MusicDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MusicDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MusicDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MusicDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MusicDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MusicDB] SET  MULTI_USER 
GO
ALTER DATABASE [MusicDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MusicDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MusicDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MusicDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MusicDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MusicDB]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 3/15/2018 11:57:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[AlbumID] [int] IDENTITY(1,1) NOT NULL,
	[AlbumName] [nvarchar](100) NOT NULL,
	[YearPublished] [nvarchar](4) NULL,
	[WonAward] [bit] NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[ArtistID] [int] NOT NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[AlbumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Artist]    Script Date: 3/15/2018 11:57:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[ArtistID] [int] IDENTITY(1,1) NOT NULL,
	[ArtistName] [nvarchar](100) NOT NULL,
	[MusicGenre] [nvarchar](100) NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Album] ON 

INSERT [dbo].[Album] ([AlbumID], [AlbumName], [YearPublished], [WonAward], [Photo], [ArtistID]) VALUES (1, N'Best of Earth Wind & Fire Vol 01 ', N'1978', 0, N'/Content/images/EWF-Bestof1.jpg', 1)
INSERT [dbo].[Album] ([AlbumID], [AlbumName], [YearPublished], [WonAward], [Photo], [ArtistID]) VALUES (2, N'I Am', N'1979', 1, N'/Content/images/EWF-IAm.jpg', 1)
INSERT [dbo].[Album] ([AlbumID], [AlbumName], [YearPublished], [WonAward], [Photo], [ArtistID]) VALUES (3, N'Facing Future', N'1993', 1, N'/Content/Images/IZ-FacingFuture.jpg', 2)
INSERT [dbo].[Album] ([AlbumID], [AlbumName], [YearPublished], [WonAward], [Photo], [ArtistID]) VALUES (4, N'IZ The Best of Israel Kamakawiwo`ole', N'2017', 1, N'/Content/images/IZ-BestOf.jpg', 2)
INSERT [dbo].[Album] ([AlbumID], [AlbumName], [YearPublished], [WonAward], [Photo], [ArtistID]) VALUES (5, N'Knee Deep in the Hoopla', N'1985', 1, N'/Content/images/Starship-KneeDeep.jpg', 4)
INSERT [dbo].[Album] ([AlbumID], [AlbumName], [YearPublished], [WonAward], [Photo], [ArtistID]) VALUES (6, N'No Protection', N'1988', 1, N'/Content/images/Starship-NoProtection.jpg', 4)
SET IDENTITY_INSERT [dbo].[Album] OFF
SET IDENTITY_INSERT [dbo].[Artist] ON 

INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [MusicGenre]) VALUES (1, N'Earth, Wind, and Fire', N'Rock')
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [MusicGenre]) VALUES (2, N'Israel Kamakawiwo`ole', N'Hawaiian Contemporary')
INSERT [dbo].[Artist] ([ArtistID], [ArtistName], [MusicGenre]) VALUES (4, N'Starship', N'Pop')
SET IDENTITY_INSERT [dbo].[Artist] OFF
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Artist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artist] ([ArtistID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Artist]
GO
USE [master]
GO
ALTER DATABASE [MusicDB] SET  READ_WRITE 
GO
