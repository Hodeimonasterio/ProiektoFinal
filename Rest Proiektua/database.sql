USE [master]
GO
/****** Object:  Database [Pokedex]    Script Date: 17/05/2022 19:46:11 ******/
CREATE DATABASE [Pokedex]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pokedex', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Pokedex.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pokedex_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Pokedex_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Pokedex] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pokedex].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pokedex] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pokedex] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pokedex] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pokedex] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pokedex] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pokedex] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pokedex] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pokedex] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pokedex] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pokedex] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pokedex] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pokedex] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pokedex] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pokedex] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pokedex] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pokedex] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pokedex] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pokedex] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pokedex] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pokedex] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pokedex] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pokedex] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pokedex] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pokedex] SET  MULTI_USER 
GO
ALTER DATABASE [Pokedex] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pokedex] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pokedex] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pokedex] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pokedex] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pokedex] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Pokedex] SET QUERY_STORE = OFF
GO
USE [Pokedex]
GO
/****** Object:  Table [dbo].[advantage]    Script Date: 17/05/2022 19:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[advantage](
	[attacker_id] [int] NOT NULL,
	[defender_id] [int] NOT NULL,
	[damage_multiplier] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[attacker_id] ASC,
	[defender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pokemon]    Script Date: 17/05/2022 19:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pokemon](
	[id] [int] NOT NULL,
	[name] [varchar](45) NULL,
	[img] [varchar](45) NULL,
	[height] [varchar](45) NULL,
	[weight] [varchar](45) NULL,
	[type1] [int] NULL,
	[type2] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[types]    Script Date: 17/05/2022 19:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[types](
	[id] [int] NOT NULL,
	[type] [varchar](50) NULL,
 CONSTRAINT [PK_types] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (1, 2, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (1, 5, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (1, 6, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (1, 7, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (1, 8, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (1, 9, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (1, 10, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (1, 14, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (1, 15, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (1, 17, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (2, 2, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (2, 5, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (2, 6, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (2, 9, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (2, 15, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (3, 3, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (3, 5, 0)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (3, 17, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (4, 3, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (4, 4, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (4, 8, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (4, 10, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (4, 11, 0)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (4, 18, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (5, 2, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (5, 3, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (5, 6, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (5, 7, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (5, 14, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (5, 17, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (6, 1, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (6, 2, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (6, 5, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (6, 8, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (6, 9, 0)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (6, 12, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (6, 13, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (6, 14, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (6, 15, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (6, 16, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (6, 17, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (7, 1, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (7, 3, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (7, 7, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (7, 10, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (7, 12, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (7, 16, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (7, 17, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (7, 18, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (8, 1, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (8, 4, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (8, 6, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (8, 10, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (8, 16, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (8, 17, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (9, 2, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (9, 9, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (9, 13, 0)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (9, 15, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (10, 1, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (10, 3, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (10, 7, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (10, 8, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (10, 10, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (10, 11, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (10, 14, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (10, 16, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (10, 17, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (10, 18, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (11, 1, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (11, 4, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (11, 7, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (11, 8, 0)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (11, 10, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (11, 14, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (11, 16, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (11, 17, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (12, 3, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (12, 7, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (12, 8, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (12, 10, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (12, 11, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (12, 12, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (12, 17, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (12, 18, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (13, 9, 0)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (13, 16, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (13, 17, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (14, 5, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (14, 9, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (14, 10, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (14, 11, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (14, 14, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (14, 16, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (14, 17, 0)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (15, 2, 0)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (15, 6, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (15, 14, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (15, 15, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (15, 17, 0.5)
GO
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (16, 1, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (16, 6, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (16, 7, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (16, 8, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (16, 11, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (16, 12, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (16, 17, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (17, 4, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (17, 5, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (17, 7, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (17, 12, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (17, 16, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (17, 17, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (17, 18, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (18, 3, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (18, 7, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (18, 10, 0.5)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (18, 11, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (18, 16, 2)
INSERT [dbo].[advantage] ([attacker_id], [defender_id], [damage_multiplier]) VALUES (18, 18, 0.5)
GO
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (1, N'Bulbasaur', N'http://www.serebii.net/pokemon/art/001.png', N'0.71 m', N'6.9 kg', 10, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (2, N'Ivysaur', N'http://www.serebii.net/pokemon/art/002.png', N'0.99 m', N'13.0 kg', 10, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (3, N'Venusaur', N'http://www.serebii.net/pokemon/art/003.png', N'2.01 m', N'100.0 kg', 10, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (4, N'Charmander', N'http://www.serebii.net/pokemon/art/004.png', N'0.61 m', N'8.5 kg', 7, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (5, N'Charmeleon', N'http://www.serebii.net/pokemon/art/005.png', N'1.09 m', N'19.0 kg', 7, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (6, N'Charizard', N'http://www.serebii.net/pokemon/art/006.png', N'1.70 m', N'90.5 kg', 7, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (7, N'Squirtle', N'http://www.serebii.net/pokemon/art/007.png', N'0.51 m', N'9.0 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (8, N'Wartortle', N'http://www.serebii.net/pokemon/art/008.png', N'0.99 m', N'22.5 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (9, N'Blastoise', N'http://www.serebii.net/pokemon/art/009.png', N'1.60 m', N'85.5 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (10, N'Caterpie', N'http://www.serebii.net/pokemon/art/010.png', N'0.30 m', N'2.9 kg', 1, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (11, N'Metapod', N'http://www.serebii.net/pokemon/art/011.png', N'0.71 m', N'9.9 kg', 1, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (12, N'Butterfree', N'http://www.serebii.net/pokemon/art/012.png', N'1.09 m', N'32.0 kg', 1, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (13, N'Weedle', N'http://www.serebii.net/pokemon/art/013.png', N'0.30 m', N'3.2 kg', 1, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (14, N'Kakuna', N'http://www.serebii.net/pokemon/art/014.png', N'0.61 m', N'10.0 kg', 1, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (15, N'Beedrill', N'http://www.serebii.net/pokemon/art/015.png', N'0.99 m', N'29.5 kg', 1, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (16, N'Pidgey', N'http://www.serebii.net/pokemon/art/016.png', N'0.30 m', N'1.8 kg', 13, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (17, N'Pidgeotto', N'http://www.serebii.net/pokemon/art/017.png', N'1.09 m', N'30.0 kg', 13, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (18, N'Pidgeot', N'http://www.serebii.net/pokemon/art/018.png', N'1.50 m', N'39.5 kg', 13, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (19, N'Rattata', N'http://www.serebii.net/pokemon/art/019.png', N'0.30 m', N'3.5 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (20, N'Raticate', N'http://www.serebii.net/pokemon/art/020.png', N'0.71 m', N'18.5 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (21, N'Spearow', N'http://www.serebii.net/pokemon/art/021.png', N'0.30 m', N'2.0 kg', 13, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (22, N'Fearow', N'http://www.serebii.net/pokemon/art/022.png', N'1.19 m', N'38.0 kg', 13, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (23, N'Ekans', N'http://www.serebii.net/pokemon/art/023.png', N'2.01 m', N'6.9 kg', 14, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (24, N'Arbok', N'http://www.serebii.net/pokemon/art/024.png', N'3.51 m', N'65.0 kg', 14, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (25, N'Pikachu', N'http://www.serebii.net/pokemon/art/025.png', N'0.41 m', N'6.0 kg', 4, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (26, N'Raichu', N'http://www.serebii.net/pokemon/art/026.png', N'0.79 m', N'30.0 kg', 4, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (27, N'Sandshrew', N'http://www.serebii.net/pokemon/art/027.png', N'0.61 m', N'12.0 kg', 11, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (28, N'Sandslash', N'http://www.serebii.net/pokemon/art/028.png', N'0.99 m', N'29.5 kg', 11, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (29, N'Nidoran ? (Female)', N'http://www.serebii.net/pokemon/art/029.png', N'0.41 m', N'7.0 kg', 14, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (30, N'Nidorina', N'http://www.serebii.net/pokemon/art/030.png', N'0.79 m', N'20.0 kg', 14, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (31, N'Nidoqueen', N'http://www.serebii.net/pokemon/art/031.png', N'1.30 m', N'60.0 kg', 14, 11)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (32, N'Nidoran ? (Male)', N'http://www.serebii.net/pokemon/art/032.png', N'0.51 m', N'9.0 kg', 14, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (33, N'Nidorino', N'http://www.serebii.net/pokemon/art/033.png', N'0.89 m', N'19.5 kg', 14, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (34, N'Nidoking', N'http://www.serebii.net/pokemon/art/034.png', N'1.40 m', N'62.0 kg', 14, 11)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (35, N'Clefairy', N'http://www.serebii.net/pokemon/art/035.png', N'0.61 m', N'7.5 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (36, N'Clefable', N'http://www.serebii.net/pokemon/art/036.png', N'1.30 m', N'40.0 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (37, N'Vulpix', N'http://www.serebii.net/pokemon/art/037.png', N'0.61 m', N'9.9 kg', 7, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (38, N'Ninetales', N'http://www.serebii.net/pokemon/art/038.png', N'1.09 m', N'19.9 kg', 7, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (39, N'Jigglypuff', N'http://www.serebii.net/pokemon/art/039.png', N'0.51 m', N'5.5 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (40, N'Wigglytuff', N'http://www.serebii.net/pokemon/art/040.png', N'0.99 m', N'12.0 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (41, N'Zubat', N'http://www.serebii.net/pokemon/art/041.png', N'0.79 m', N'7.5 kg', 14, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (42, N'Golbat', N'http://www.serebii.net/pokemon/art/042.png', N'1.60 m', N'55.0 kg', 14, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (43, N'Oddish', N'http://www.serebii.net/pokemon/art/043.png', N'0.51 m', N'5.4 kg', 10, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (44, N'Gloom', N'http://www.serebii.net/pokemon/art/044.png', N'0.79 m', N'8.6 kg', 10, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (45, N'Vileplume', N'http://www.serebii.net/pokemon/art/045.png', N'1.19 m', N'18.6 kg', 10, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (46, N'Paras', N'http://www.serebii.net/pokemon/art/046.png', N'0.30 m', N'5.4 kg', 1, 10)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (47, N'Parasect', N'http://www.serebii.net/pokemon/art/047.png', N'0.99 m', N'29.5 kg', 1, 10)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (48, N'Venonat', N'http://www.serebii.net/pokemon/art/048.png', N'0.99 m', N'30.0 kg', 1, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (49, N'Venomoth', N'http://www.serebii.net/pokemon/art/049.png', N'1.50 m', N'12.5 kg', 1, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (50, N'Diglett', N'http://www.serebii.net/pokemon/art/050.png', N'0.20 m', N'0.8 kg', 11, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (51, N'Dugtrio', N'http://www.serebii.net/pokemon/art/051.png', N'0.71 m', N'33.3 kg', 11, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (52, N'Meowth', N'http://www.serebii.net/pokemon/art/052.png', N'0.41 m', N'4.2 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (53, N'Persian', N'http://www.serebii.net/pokemon/art/053.png', N'0.99 m', N'32.0 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (54, N'Psyduck', N'http://www.serebii.net/pokemon/art/054.png', N'0.79 m', N'19.6 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (55, N'Golduck', N'http://www.serebii.net/pokemon/art/055.png', N'1.70 m', N'76.6 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (56, N'Mankey', N'http://www.serebii.net/pokemon/art/056.png', N'0.51 m', N'28.0 kg', 6, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (57, N'Primeape', N'http://www.serebii.net/pokemon/art/057.png', N'0.99 m', N'32.0 kg', 6, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (58, N'Growlithe', N'http://www.serebii.net/pokemon/art/058.png', N'0.71 m', N'19.0 kg', 7, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (59, N'Arcanine', N'http://www.serebii.net/pokemon/art/059.png', N'1.91 m', N'155.0 kg', 7, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (60, N'Poliwag', N'http://www.serebii.net/pokemon/art/060.png', N'0.61 m', N'12.4 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (61, N'Poliwhirl', N'http://www.serebii.net/pokemon/art/061.png', N'0.99 m', N'20.0 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (62, N'Poliwrath', N'http://www.serebii.net/pokemon/art/062.png', N'1.30 m', N'54.0 kg', 18, 6)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (63, N'Abra', N'http://www.serebii.net/pokemon/art/063.png', N'0.89 m', N'19.5 kg', 15, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (64, N'Kadabra', N'http://www.serebii.net/pokemon/art/064.png', N'1.30 m', N'56.5 kg', 15, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (65, N'Alakazam', N'http://www.serebii.net/pokemon/art/065.png', N'1.50 m', N'48.0 kg', 15, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (66, N'Machop', N'http://www.serebii.net/pokemon/art/066.png', N'0.79 m', N'19.5 kg', 6, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (67, N'Machoke', N'http://www.serebii.net/pokemon/art/067.png', N'1.50 m', N'70.5 kg', 6, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (68, N'Machamp', N'http://www.serebii.net/pokemon/art/068.png', N'1.60 m', N'130.0 kg', 6, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (69, N'Bellsprout', N'http://www.serebii.net/pokemon/art/069.png', N'0.71 m', N'4.0 kg', 10, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (70, N'Weepinbell', N'http://www.serebii.net/pokemon/art/070.png', N'0.99 m', N'6.4 kg', 10, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (71, N'Victreebel', N'http://www.serebii.net/pokemon/art/071.png', N'1.70 m', N'15.5 kg', 10, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (72, N'Tentacool', N'http://www.serebii.net/pokemon/art/072.png', N'0.89 m', N'45.5 kg', 18, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (73, N'Tentacruel', N'http://www.serebii.net/pokemon/art/073.png', N'1.60 m', N'55.0 kg', 18, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (74, N'Geodude', N'http://www.serebii.net/pokemon/art/074.png', N'0.41 m', N'20.0 kg', 16, 11)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (75, N'Graveler', N'http://www.serebii.net/pokemon/art/075.png', N'0.99 m', N'105.0 kg', 16, 11)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (76, N'Golem', N'http://www.serebii.net/pokemon/art/076.png', N'1.40 m', N'300.0 kg', 16, 11)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (77, N'Ponyta', N'http://www.serebii.net/pokemon/art/077.png', N'0.99 m', N'30.0 kg', 7, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (78, N'Rapidash', N'http://www.serebii.net/pokemon/art/078.png', N'1.70 m', N'95.0 kg', 7, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (79, N'Slowpoke', N'http://www.serebii.net/pokemon/art/079.png', N'1.19 m', N'36.0 kg', 18, 15)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (80, N'Slowbro', N'http://www.serebii.net/pokemon/art/080.png', N'1.60 m', N'78.5 kg', 18, 15)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (81, N'Magnemite', N'http://www.serebii.net/pokemon/art/081.png', N'0.30 m', N'6.0 kg', 4, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (82, N'Magneton', N'http://www.serebii.net/pokemon/art/082.png', N'0.99 m', N'60.0 kg', 4, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (83, N'Farfetch`d', N'http://www.serebii.net/pokemon/art/083.png', N'0.79 m', N'15.0 kg', 13, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (84, N'Doduo', N'http://www.serebii.net/pokemon/art/084.png', N'1.40 m', N'39.2 kg', 13, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (85, N'Dodrio', N'http://www.serebii.net/pokemon/art/085.png', N'1.80 m', N'85.2 kg', 13, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (86, N'Seel', N'http://www.serebii.net/pokemon/art/086.png', N'1.09 m', N'90.0 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (87, N'Dewgong', N'http://www.serebii.net/pokemon/art/087.png', N'1.70 m', N'120.0 kg', 18, 12)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (88, N'Grimer', N'http://www.serebii.net/pokemon/art/088.png', N'0.89 m', N'30.0 kg', 14, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (89, N'Muk', N'http://www.serebii.net/pokemon/art/089.png', N'1.19 m', N'30.0 kg', 14, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (90, N'Shellder', N'http://www.serebii.net/pokemon/art/090.png', N'0.30 m', N'4.0 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (91, N'Cloyster', N'http://www.serebii.net/pokemon/art/091.png', N'1.50 m', N'132.5 kg', 18, 12)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (92, N'Gastly', N'http://www.serebii.net/pokemon/art/092.png', N'1.30 m', N'0.1 kg', 9, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (93, N'Haunter', N'http://www.serebii.net/pokemon/art/093.png', N'1.60 m', N'0.1 kg', 9, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (94, N'Gengar', N'http://www.serebii.net/pokemon/art/094.png', N'1.50 m', N'40.5 kg', 9, 14)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (95, N'Onix', N'http://www.serebii.net/pokemon/art/095.png', N'8.79 m', N'210.0 kg', 16, 11)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (96, N'Drowzee', N'http://www.serebii.net/pokemon/art/096.png', N'0.99 m', N'32.4 kg', 15, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (97, N'Hypno', N'http://www.serebii.net/pokemon/art/097.png', N'1.60 m', N'75.6 kg', 15, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (98, N'Krabby', N'http://www.serebii.net/pokemon/art/098.png', N'0.41 m', N'6.5 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (99, N'Kingler', N'http://www.serebii.net/pokemon/art/099.png', N'1.30 m', N'60.0 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (100, N'Voltorb', N'http://www.serebii.net/pokemon/art/100.png', N'0.51 m', N'10.4 kg', 4, NULL)
GO
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (101, N'Electrode', N'http://www.serebii.net/pokemon/art/101.png', N'1.19 m', N'66.6 kg', 4, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (102, N'Exeggcute', N'http://www.serebii.net/pokemon/art/102.png', N'0.41 m', N'2.5 kg', 10, 15)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (103, N'Exeggutor', N'http://www.serebii.net/pokemon/art/103.png', N'2.01 m', N'120.0 kg', 10, 15)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (104, N'Cubone', N'http://www.serebii.net/pokemon/art/104.png', N'0.41 m', N'6.5 kg', 11, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (105, N'Marowak', N'http://www.serebii.net/pokemon/art/105.png', N'0.99 m', N'45.0 kg', 11, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (106, N'Hitmonlee', N'http://www.serebii.net/pokemon/art/106.png', N'1.50 m', N'49.8 kg', 6, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (107, N'Hitmonchan', N'http://www.serebii.net/pokemon/art/107.png', N'1.40 m', N'50.2 kg', 6, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (108, N'Lickitung', N'http://www.serebii.net/pokemon/art/108.png', N'1.19 m', N'65.5 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (109, N'Koffing', N'http://www.serebii.net/pokemon/art/109.png', N'0.61 m', N'1.0 kg', 14, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (110, N'Weezing', N'http://www.serebii.net/pokemon/art/110.png', N'1.19 m', N'9.5 kg', 14, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (111, N'Rhyhorn', N'http://www.serebii.net/pokemon/art/111.png', N'0.99 m', N'115.0 kg', 11, 16)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (112, N'Rhydon', N'http://www.serebii.net/pokemon/art/112.png', N'1.91 m', N'120.0 kg', 11, 16)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (113, N'Chansey', N'http://www.serebii.net/pokemon/art/113.png', N'1.09 m', N'34.6 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (114, N'Tangela', N'http://www.serebii.net/pokemon/art/114.png', N'0.99 m', N'35.0 kg', 10, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (115, N'Kangaskhan', N'http://www.serebii.net/pokemon/art/115.png', N'2.21 m', N'80.0 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (116, N'Horsea', N'http://www.serebii.net/pokemon/art/116.png', N'0.41 m', N'8.0 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (117, N'Seadra', N'http://www.serebii.net/pokemon/art/117.png', N'1.19 m', N'25.0 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (118, N'Goldeen', N'http://www.serebii.net/pokemon/art/118.png', N'0.61 m', N'15.0 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (119, N'Seaking', N'http://www.serebii.net/pokemon/art/119.png', N'1.30 m', N'39.0 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (120, N'Staryu', N'http://www.serebii.net/pokemon/art/120.png', N'0.79 m', N'34.5 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (121, N'Starmie', N'http://www.serebii.net/pokemon/art/121.png', N'1.09 m', N'80.0 kg', 18, 15)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (122, N'Mr. Mime', N'http://www.serebii.net/pokemon/art/122.png', N'1.30 m', N'54.5 kg', 15, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (123, N'Scyther', N'http://www.serebii.net/pokemon/art/123.png', N'1.50 m', N'56.0 kg', 1, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (124, N'Jynx', N'http://www.serebii.net/pokemon/art/124.png', N'1.40 m', N'40.6 kg', 12, 15)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (125, N'Electabuzz', N'http://www.serebii.net/pokemon/art/125.png', N'1.09 m', N'30.0 kg', 4, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (126, N'Magmar', N'http://www.serebii.net/pokemon/art/126.png', N'1.30 m', N'44.5 kg', 7, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (127, N'Pinsir', N'http://www.serebii.net/pokemon/art/127.png', N'1.50 m', N'55.0 kg', 1, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (128, N'Tauros', N'http://www.serebii.net/pokemon/art/128.png', N'1.40 m', N'88.4 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (129, N'Magikarp', N'http://www.serebii.net/pokemon/art/129.png', N'0.89 m', N'10.0 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (130, N'Gyarados', N'http://www.serebii.net/pokemon/art/130.png', N'6.50 m', N'235.0 kg', 18, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (131, N'Lapras', N'http://www.serebii.net/pokemon/art/131.png', N'2.49 m', N'220.0 kg', 18, 12)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (132, N'Ditto', N'http://www.serebii.net/pokemon/art/132.png', N'0.30 m', N'4.0 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (133, N'Eevee', N'http://www.serebii.net/pokemon/art/133.png', N'0.30 m', N'6.5 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (134, N'Vaporeon', N'http://www.serebii.net/pokemon/art/134.png', N'0.99 m', N'29.0 kg', 18, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (135, N'Jolteon', N'http://www.serebii.net/pokemon/art/135.png', N'0.79 m', N'24.5 kg', 4, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (136, N'Flareon', N'http://www.serebii.net/pokemon/art/136.png', N'0.89 m', N'25.0 kg', 7, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (137, N'Porygon', N'http://www.serebii.net/pokemon/art/137.png', N'0.79 m', N'36.5 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (138, N'Omanyte', N'http://www.serebii.net/pokemon/art/138.png', N'0.41 m', N'7.5 kg', 16, 18)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (139, N'Omastar', N'http://www.serebii.net/pokemon/art/139.png', N'0.99 m', N'35.0 kg', 16, 18)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (140, N'Kabuto', N'http://www.serebii.net/pokemon/art/140.png', N'0.51 m', N'11.5 kg', 16, 18)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (141, N'Kabutops', N'http://www.serebii.net/pokemon/art/141.png', N'1.30 m', N'40.5 kg', 16, 18)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (142, N'Aerodactyl', N'http://www.serebii.net/pokemon/art/142.png', N'1.80 m', N'59.0 kg', 16, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (143, N'Snorlax', N'http://www.serebii.net/pokemon/art/143.png', N'2.11 m', N'460.0 kg', 13, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (144, N'Articuno', N'http://www.serebii.net/pokemon/art/144.png', N'1.70 m', N'55.4 kg', 12, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (145, N'Zapdos', N'http://www.serebii.net/pokemon/art/145.png', N'1.60 m', N'52.6 kg', 4, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (146, N'Moltres', N'http://www.serebii.net/pokemon/art/146.png', N'2.01 m', N'60.0 kg', 7, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (147, N'Dratini', N'http://www.serebii.net/pokemon/art/147.png', N'1.80 m', N'3.3 kg', 3, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (148, N'Dragonair', N'http://www.serebii.net/pokemon/art/148.png', N'3.99 m', N'16.5 kg', 3, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (149, N'Dragonite', N'http://www.serebii.net/pokemon/art/149.png', N'2.21 m', N'210.0 kg', 3, 8)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (150, N'Mewtwo', N'http://www.serebii.net/pokemon/art/150.png', N'2.01 m', N'122.0 kg', 15, NULL)
INSERT [dbo].[pokemon] ([id], [name], [img], [height], [weight], [type1], [type2]) VALUES (151, N'Mew', N'http://www.serebii.net/pokemon/art/151.png', N'0.41 m', N'4.0 kg', 15, NULL)
GO
INSERT [dbo].[types] ([id], [type]) VALUES (1, N'Bug')
INSERT [dbo].[types] ([id], [type]) VALUES (2, N'Dark')
INSERT [dbo].[types] ([id], [type]) VALUES (3, N'Dragon')
INSERT [dbo].[types] ([id], [type]) VALUES (4, N'Electric')
INSERT [dbo].[types] ([id], [type]) VALUES (5, N'Fairy')
INSERT [dbo].[types] ([id], [type]) VALUES (6, N'Fighting')
INSERT [dbo].[types] ([id], [type]) VALUES (7, N'Fire')
INSERT [dbo].[types] ([id], [type]) VALUES (8, N'Flying')
INSERT [dbo].[types] ([id], [type]) VALUES (9, N'Ghost')
INSERT [dbo].[types] ([id], [type]) VALUES (10, N'Grass')
INSERT [dbo].[types] ([id], [type]) VALUES (11, N'Ground')
INSERT [dbo].[types] ([id], [type]) VALUES (12, N'Ice')
INSERT [dbo].[types] ([id], [type]) VALUES (13, N'Normal')
INSERT [dbo].[types] ([id], [type]) VALUES (14, N'Poison')
INSERT [dbo].[types] ([id], [type]) VALUES (15, N'Psychic')
INSERT [dbo].[types] ([id], [type]) VALUES (16, N'Rock')
INSERT [dbo].[types] ([id], [type]) VALUES (17, N'Steel')
INSERT [dbo].[types] ([id], [type]) VALUES (18, N'Water')
GO
ALTER TABLE [dbo].[pokemon] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[pokemon] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[pokemon] ADD  DEFAULT (NULL) FOR [height]
GO
ALTER TABLE [dbo].[pokemon] ADD  DEFAULT (NULL) FOR [weight]
GO
ALTER TABLE [dbo].[pokemon] ADD  DEFAULT (NULL) FOR [type1]
GO
ALTER TABLE [dbo].[pokemon] ADD  DEFAULT (NULL) FOR [type2]
GO
USE [master]
GO
ALTER DATABASE [Pokedex] SET  READ_WRITE 
GO
