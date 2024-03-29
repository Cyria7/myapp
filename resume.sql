USE [master]
GO
/****** Object:  Database [resume]    Script Date: 2022/2/11 16:09:41 ******/
CREATE DATABASE [resume]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'resume', FILENAME = N'D:\Programs\SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\resume.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'resume_log', FILENAME = N'D:\Programs\SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\resume_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [resume] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [resume].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [resume] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [resume] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [resume] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [resume] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [resume] SET ARITHABORT OFF 
GO
ALTER DATABASE [resume] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [resume] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [resume] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [resume] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [resume] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [resume] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [resume] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [resume] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [resume] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [resume] SET  DISABLE_BROKER 
GO
ALTER DATABASE [resume] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [resume] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [resume] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [resume] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [resume] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [resume] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [resume] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [resume] SET RECOVERY FULL 
GO
ALTER DATABASE [resume] SET  MULTI_USER 
GO
ALTER DATABASE [resume] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [resume] SET DB_CHAINING OFF 
GO
ALTER DATABASE [resume] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [resume] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [resume] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'resume', N'ON'
GO
ALTER DATABASE [resume] SET QUERY_STORE = OFF
GO
USE [resume]
GO
/****** Object:  Table [dbo].[achievement]    Script Date: 2022/2/11 16:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[achievement](
	[suid] [varchar](50) NOT NULL,
	[project_id] [varchar](50) NOT NULL,
	[detail] [varchar](50) NOT NULL,
 CONSTRAINT [PK_achievement] PRIMARY KEY CLUSTERED 
(
	[suid] ASC,
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enterprise]    Script Date: 2022/2/11 16:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enterprise](
	[euid] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[legal_person] [varchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[credit_code] [varchar](50) NOT NULL,
	[website] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[location] [varchar](50) NOT NULL,
	[intro] [varchar](50) NULL,
	[portrait] [varchar](50) NOT NULL,
	[pswd] [varchar](50) NOT NULL,
 CONSTRAINT [PK_enterprise] PRIMARY KEY CLUSTERED 
(
	[euid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[experience]    Script Date: 2022/2/11 16:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[experience](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[suid] [varchar](50) NOT NULL,
	[startime] [varchar](50) NOT NULL,
	[endtime] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[achivement] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_experience] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[patent]    Script Date: 2022/2/11 16:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patent](
	[patent_id] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[project_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_patent] PRIMARY KEY CLUSTERED 
(
	[patent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project]    Script Date: 2022/2/11 16:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project](
	[project_id] [varchar](50) NOT NULL,
	[project_name] [varchar](50) NOT NULL,
	[classification] [varchar](50) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[tutor] [varchar](50) NULL,
	[startime] [varchar](50) NOT NULL,
	[endtime] [varchar](50) NOT NULL,
	[brief] [varchar](50) NOT NULL,
	[location] [varchar](50) NULL,
 CONSTRAINT [PK_project] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resume]    Script Date: 2022/2/11 16:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resume](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[suid] [varchar](50) NOT NULL,
	[resume] [varchar](50) NOT NULL,
	[puid] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
 CONSTRAINT [PK_resume] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staff]    Script Date: 2022/2/11 16:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staff](
	[puid] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[euid] [varchar](50) NOT NULL,
	[ename] [varchar](50) NOT NULL,
	[sex] [varchar](50) NULL,
	[post] [varchar](50) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[email] [varchar](50) NULL,
	[location] [varchar](50) NOT NULL,
	[nickname] [varchar](50) NOT NULL,
	[portrait] [varchar](50) NOT NULL,
	[pwsd] [varchar](50) NULL,
 CONSTRAINT [PK_staff] PRIMARY KEY CLUSTERED 
(
	[puid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 2022/2/11 16:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[suid] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[college] [varchar](50) NULL,
	[xh] [varchar](50) NULL,
	[phone] [varchar](50) NOT NULL,
	[email] [varchar](50) NULL,
	[id] [varchar](50) NOT NULL,
	[nickname] [varchar](50) NOT NULL,
	[portrait] [varchar](50) NOT NULL,
	[location] [varchar](50) NULL,
	[pswd] [varchar](50) NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[suid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_project]    Script Date: 2022/2/11 16:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_project](
	[suid] [varchar](50) NOT NULL,
	[project_id] [nchar](10) NOT NULL,
 CONSTRAINT [PK_student_project] PRIMARY KEY CLUSTERED 
(
	[suid] ASC,
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 2022/2/11 16:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[tuid] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[sex] [varchar](50) NOT NULL,
	[college] [varchar](50) NOT NULL,
	[gh] [varchar](50) NULL,
	[phone] [varchar](50) NOT NULL,
	[email] [varchar](50) NULL,
	[nickname] [varchar](50) NOT NULL,
	[portrait] [varchar](50) NULL,
	[location] [varchar](50) NULL,
	[pswd] [varchar](50) NOT NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 
(
	[tuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [resume] SET  READ_WRITE 
GO
