USE [master]
GO
/****** Object:  Database [Student_Smart_Card]    Script Date: 03/27/2017 12:05:13 ******/
CREATE DATABASE [Student_Smart_Card] ON  PRIMARY 
( NAME = N'Student_Smart_Card', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Student_Smart_Card.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Student_Smart_Card_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Student_Smart_Card_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Student_Smart_Card] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Student_Smart_Card].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Student_Smart_Card] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Student_Smart_Card] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Student_Smart_Card] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Student_Smart_Card] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Student_Smart_Card] SET ARITHABORT OFF
GO
ALTER DATABASE [Student_Smart_Card] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Student_Smart_Card] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Student_Smart_Card] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Student_Smart_Card] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Student_Smart_Card] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Student_Smart_Card] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Student_Smart_Card] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Student_Smart_Card] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Student_Smart_Card] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Student_Smart_Card] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Student_Smart_Card] SET  DISABLE_BROKER
GO
ALTER DATABASE [Student_Smart_Card] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Student_Smart_Card] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Student_Smart_Card] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Student_Smart_Card] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Student_Smart_Card] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Student_Smart_Card] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Student_Smart_Card] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Student_Smart_Card] SET  READ_WRITE
GO
ALTER DATABASE [Student_Smart_Card] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Student_Smart_Card] SET  MULTI_USER
GO
ALTER DATABASE [Student_Smart_Card] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Student_Smart_Card] SET DB_CHAINING OFF
GO
USE [Student_Smart_Card]
GO
/****** Object:  Table [dbo].[Return_Book]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Return_Book](
	[rfid] [varchar](50) NULL,
	[bname] [varchar](50) NULL,
	[aname] [varchar](50) NULL,
	[price] [int] NULL,
	[fpd] [int] NULL,
	[idate] [varchar](50) NULL,
	[totalFine] [varchar](50) NULL,
	[return_date] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[registration]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[registration](
	[userID] [varchar](50) NOT NULL,
	[emailID] [varchar](50) NULL,
	[fname] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[fatherName] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[dob] [varchar](50) NULL,
	[address] [varchar](250) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[postalCode] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[phoneNo] [varchar](50) NULL,
	[rdateTime] [varchar](50) NULL,
	[utype] [varchar](50) NULL,
	[RFID] [varchar](50) NULL,
	[uimage] [varchar](250) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Recharge_Card]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recharge_Card](
	[RFID_no] [varchar](50) NULL,
	[amount] [varchar](50) NULL,
	[rdate] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[emailid] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[utype] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Issue_Book]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Issue_Book](
	[rfid] [varchar](50) NULL,
	[bname] [varchar](50) NULL,
	[aname] [varchar](50) NULL,
	[price] [int] NULL,
	[fpd] [int] NULL,
	[idate] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[fund_transfer]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fund_transfer](
	[frfid] [varchar](50) NULL,
	[famount] [varchar](50) NULL,
	[trfid] [varchar](50) NULL,
	[fa] [varchar](50) NULL,
	[uname] [varchar](50) NULL,
	[rdate] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[check_out]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[check_out](
	[urfid] [varchar](50) NULL,
	[vname] [varchar](50) NULL,
	[vdesc] [varchar](150) NULL,
	[chk_in_date] [varchar](50) NULL,
	[chk_in_time] [varchar](50) NULL,
	[chk_out_time] [varchar](50) NULL,
	[chk_out_date] [varchar](50) NULL,
	[total_fare] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Check_in]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Check_in](
	[urfid] [varchar](50) NULL,
	[vname] [varchar](50) NULL,
	[vdesc] [varchar](150) NULL,
	[chk_in_date] [varchar](50) NULL,
	[chk_in_time] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cafe_order]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cafe_order](
	[user_RFID] [varchar](50) NULL,
	[item_list] [varchar](250) NULL,
	[total_price] [varchar](50) NULL,
	[odate] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Book]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book](
	[bname] [varchar](50) NULL,
	[aname] [varchar](50) NULL,
	[price] [varchar](50) NULL,
	[fperday] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[add_Vehicle]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_Vehicle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[vtype] [varchar](50) NULL,
	[vname] [varchar](50) NULL,
	[uRFID] [varchar](50) NULL,
	[vdesc] [varchar](150) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Add_Item]    Script Date: 03/27/2017 12:05:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Add_Item](
	[item_id] [int] IDENTITY(1,1) NOT NULL,
	[item_name] [varchar](50) NULL,
	[item_size] [varchar](50) NULL,
	[item_price] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
