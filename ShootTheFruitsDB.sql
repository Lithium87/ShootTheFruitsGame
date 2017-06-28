USE [master]
GO

/****** Object:  Database [ShootTheFruits]    Script Date: 28.6.2017 г. 23:50:26 ******/
CREATE DATABASE [ShootTheFruits]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShootTheFruits', FILENAME = N'C:\Users\8\ShootTheFruits.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShootTheFruits_log', FILENAME = N'C:\Users\8\ShootTheFruits_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [ShootTheFruits] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShootTheFruits].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ShootTheFruits] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ShootTheFruits] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ShootTheFruits] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ShootTheFruits] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ShootTheFruits] SET ARITHABORT OFF 
GO

ALTER DATABASE [ShootTheFruits] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [ShootTheFruits] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ShootTheFruits] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ShootTheFruits] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ShootTheFruits] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ShootTheFruits] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ShootTheFruits] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ShootTheFruits] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ShootTheFruits] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ShootTheFruits] SET  ENABLE_BROKER 
GO

ALTER DATABASE [ShootTheFruits] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ShootTheFruits] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ShootTheFruits] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ShootTheFruits] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ShootTheFruits] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ShootTheFruits] SET READ_COMMITTED_SNAPSHOT ON 
GO

ALTER DATABASE [ShootTheFruits] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ShootTheFruits] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ShootTheFruits] SET  MULTI_USER 
GO

ALTER DATABASE [ShootTheFruits] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ShootTheFruits] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ShootTheFruits] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ShootTheFruits] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ShootTheFruits] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ShootTheFruits] SET QUERY_STORE = OFF
GO

USE [ShootTheFruits]
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [ShootTheFruits] SET  READ_WRITE 
GO
