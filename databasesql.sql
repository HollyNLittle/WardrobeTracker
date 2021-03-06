USE [master]
GO
/****** Object:  Database [WardrobeTracker]    Script Date: 11/6/2017 2:09:44 PM ******/
CREATE DATABASE [WardrobeTracker]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeTracker', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeTracker.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeTracker_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeTracker_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeTracker] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeTracker].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeTracker] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeTracker] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeTracker] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeTracker] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeTracker] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeTracker] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeTracker] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeTracker] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeTracker] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeTracker] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeTracker] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeTracker] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeTracker] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeTracker] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeTracker] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeTracker] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeTracker] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeTracker] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeTracker] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeTracker] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeTracker] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeTracker] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeTracker] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeTracker] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeTracker] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeTracker] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeTracker] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeTracker] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeTracker] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeTracker]
GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DescriptionID] [int] NULL,
	[ColorID] [int] NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Coats]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coats](
	[CoatsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DescriptionID] [int] NULL,
	[ColorID] [int] NULL,
	[SeasonID] [int] NULL,
	[Material] [nvarchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Coats] PRIMARY KEY CLUSTERED 
(
	[CoatsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Swatch] [nvarchar](max) NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Description]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Description](
	[DescriptionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Description] PRIMARY KEY CLUSTERED 
(
	[DescriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dresses]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dresses](
	[DressesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DescriptionID] [int] NULL,
	[ColorID] [int] NULL,
	[SeasonID] [int] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Dresses] PRIMARY KEY CLUSTERED 
(
	[DressesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Embellishments]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Embellishments](
	[EmbellishmentsID] [int] IDENTITY(1,1) NOT NULL,
	[DescriptionID] [int] NULL,
	[ColorID] [int] NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Embellishments] PRIMARY KEY CLUSTERED 
(
	[EmbellishmentsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Footwear]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footwear](
	[FootwearID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DescriptionID] [int] NULL,
	[ColorID] [int] NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Footwear] PRIMARY KEY CLUSTERED 
(
	[FootwearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jewelry]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jewelry](
	[JewelryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DescriptionID] [int] NULL,
	[ColorID] [int] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Jewelry] PRIMARY KEY CLUSTERED 
(
	[JewelryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Legwear]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Legwear](
	[LegwearID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DescriptionID] [int] NULL,
	[ColorID] [int] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Legwear] PRIMARY KEY CLUSTERED 
(
	[LegwearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occasion]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occasion](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Occassions] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[TopsID] [int] NULL,
	[BottomsID] [int] NULL,
	[DressesID] [int] NULL,
	[LegwearID] [int] NULL,
	[FootwearID] [int] NULL,
	[AccessoriesID] [int] NULL,
	[JewelryID] [int] NULL,
	[CoatID] [int] NULL,
	[ColorID] [int] NULL,
	[SeasonID] [int] NULL,
	[DescriptionID] [int] NULL,
	[OccasionID] [int] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pantaloons]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pantaloons](
	[PantaloonsID] [int] IDENTITY(1,1) NOT NULL,
	[DescriptionID] [int] NULL,
	[ColorID] [int] NULL,
	[SeasonID] [int] NULL,
	[OccassionID] [int] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pantaloons] PRIMARY KEY CLUSTERED 
(
	[PantaloonsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Photo]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[PhotoID] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Photo_1] PRIMARY KEY CLUSTERED 
(
	[PhotoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Season]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Seasons] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[DescriptionID] [int] NULL,
	[ColorID] [int] NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 11/6/2017 2:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[DescriptionID] [int] NULL,
	[ColorID] [int] NULL,
	[SeasonID] [int] NULL,
	[OccasionID] [int] NULL,
	[Photo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomsID], [Name], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (1, NULL, 7, 1, 1, 3, NULL)
INSERT [dbo].[Bottoms] ([BottomsID], [Name], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (2, NULL, 1, 1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Coats] ON 

INSERT [dbo].[Coats] ([CoatsID], [Name], [DescriptionID], [ColorID], [SeasonID], [Material], [Photo]) VALUES (1, N'Green coat', 4, 17, 2, N'Wool', NULL)
INSERT [dbo].[Coats] ([CoatsID], [Name], [DescriptionID], [ColorID], [SeasonID], [Material], [Photo]) VALUES (2, N'Black mid', 1, 1, 2, N'Wool', NULL)
INSERT [dbo].[Coats] ([CoatsID], [Name], [DescriptionID], [ColorID], [SeasonID], [Material], [Photo]) VALUES (3, N'Red double breasted', 1, 10, 1, N'Wool', NULL)
INSERT [dbo].[Coats] ([CoatsID], [Name], [DescriptionID], [ColorID], [SeasonID], [Material], [Photo]) VALUES (4, N'Guess raincoat', 3, 2, 1, NULL, NULL)
INSERT [dbo].[Coats] ([CoatsID], [Name], [DescriptionID], [ColorID], [SeasonID], [Material], [Photo]) VALUES (5, N'Cape', 3, 2, 1, NULL, NULL)
INSERT [dbo].[Coats] ([CoatsID], [Name], [DescriptionID], [ColorID], [SeasonID], [Material], [Photo]) VALUES (6, N'Red belted', 4, 10, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Coats] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (1, N'Black', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (2, N'Beige', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (3, N'Dark wash', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (4, N'Grey', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (5, N'Brown', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (6, N'Blue', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (7, N'Floral', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (8, N'Striped', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (9, N'Polka dots', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (10, N'Red', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (11, N'Fuschia', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (12, N'Pink', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (13, N'Yellow', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (14, N'Cream', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (15, N'Navy', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (16, N'Heathered', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (17, N'Forest green', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (18, N'Green', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (19, N'Mauve', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (20, N'Purple', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (21, N'Silver', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (22, N'Gold', NULL)
INSERT [dbo].[Color] ([ColorID], [Name], [Swatch]) VALUES (23, N'Plaid', NULL)
SET IDENTITY_INSERT [dbo].[Color] OFF
SET IDENTITY_INSERT [dbo].[Description] ON 

INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (1, N'Car Coats', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (2, N'Jackets', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (3, N'Raincoats', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (4, N'Long Coats', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (5, N'Bootleg', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (6, N'Straightleg', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (7, N'Skinny ', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (8, N'Leggings', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (9, N'Dress pants', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (10, N'Cardigans', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (11, N'Hoops', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (12, N'Dangles', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (13, N'Studs', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (14, N'Tights', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (15, N'Short', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (16, N'Blouse', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (17, N'Heels', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (18, N'Flats', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (19, N'Loafers', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (20, N'Boots', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (21, N'Sneakers', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (22, N'Sandals', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (23, N'Wrap', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (24, N'Structured shift dress', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (25, N'Fit and flare', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (26, N'Sundress', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (27, N'Jean dress', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (28, N'Long', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (29, N'Over the knee', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (30, N'Fitted', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (31, N'Flared', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (32, N'Pleated', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (33, N'Thin', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (34, N'Thick', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (35, N'Wool', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (36, N'Polyester', NULL)
INSERT [dbo].[Description] ([DescriptionID], [Name], [Photo]) VALUES (37, N'Cotton', NULL)
SET IDENTITY_INSERT [dbo].[Description] OFF
SET IDENTITY_INSERT [dbo].[Dresses] ON 

INSERT [dbo].[Dresses] ([DressesID], [Name], [DescriptionID], [ColorID], [SeasonID], [Photo]) VALUES (1, N'Pink and White V-neck', 26, 7, 4, NULL)
INSERT [dbo].[Dresses] ([DressesID], [Name], [DescriptionID], [ColorID], [SeasonID], [Photo]) VALUES (2, N'Limited', 31, 9, 1, NULL)
INSERT [dbo].[Dresses] ([DressesID], [Name], [DescriptionID], [ColorID], [SeasonID], [Photo]) VALUES (3, N'Favorite Jean Dress', 25, 6, 3, NULL)
INSERT [dbo].[Dresses] ([DressesID], [Name], [DescriptionID], [ColorID], [SeasonID], [Photo]) VALUES (4, N'Sharp Black Belted', 23, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Dresses] OFF
SET IDENTITY_INSERT [dbo].[Embellishments] ON 

INSERT [dbo].[Embellishments] ([EmbellishmentsID], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (1, 11, 1, 4, 4, NULL)
INSERT [dbo].[Embellishments] ([EmbellishmentsID], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (2, 12, 2, 4, 4, NULL)
INSERT [dbo].[Embellishments] ([EmbellishmentsID], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (3, 13, 4, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Embellishments] OFF
SET IDENTITY_INSERT [dbo].[Footwear] ON 

INSERT [dbo].[Footwear] ([FootwearID], [Name], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (1, N'Strappy Sandals', 17, 5, 4, 9, NULL)
SET IDENTITY_INSERT [dbo].[Footwear] OFF
SET IDENTITY_INSERT [dbo].[Jewelry] ON 

INSERT [dbo].[Jewelry] ([JewelryID], [Name], [DescriptionID], [ColorID], [Photo]) VALUES (1, N'Long and Silver', 28, 4, NULL)
INSERT [dbo].[Jewelry] ([JewelryID], [Name], [DescriptionID], [ColorID], [Photo]) VALUES (2, N'Long and Gold', 28, 2, NULL)
SET IDENTITY_INSERT [dbo].[Jewelry] OFF
SET IDENTITY_INSERT [dbo].[Legwear] ON 

INSERT [dbo].[Legwear] ([LegwearID], [Name], [DescriptionID], [ColorID], [Photo]) VALUES (1, N'Thick Black Plain', 14, 1, NULL)
INSERT [dbo].[Legwear] ([LegwearID], [Name], [DescriptionID], [ColorID], [Photo]) VALUES (2, N'Thick Black Plain', 14, 1, NULL)
INSERT [dbo].[Legwear] ([LegwearID], [Name], [DescriptionID], [ColorID], [Photo]) VALUES (3, N'Sporty Socks', 37, 9, NULL)
SET IDENTITY_INSERT [dbo].[Legwear] OFF
SET IDENTITY_INSERT [dbo].[Occasion] ON 

INSERT [dbo].[Occasion] ([OccasionID], [Name]) VALUES (1, N'Formal')
INSERT [dbo].[Occasion] ([OccasionID], [Name]) VALUES (2, N'Casual')
INSERT [dbo].[Occasion] ([OccasionID], [Name]) VALUES (3, N'Everyday')
INSERT [dbo].[Occasion] ([OccasionID], [Name]) VALUES (4, N'Going out!')
INSERT [dbo].[Occasion] ([OccasionID], [Name]) VALUES (5, N'Business')
INSERT [dbo].[Occasion] ([OccasionID], [Name]) VALUES (6, N'Business Casual')
INSERT [dbo].[Occasion] ([OccasionID], [Name]) VALUES (7, N'Dressy')
INSERT [dbo].[Occasion] ([OccasionID], [Name]) VALUES (8, N'Sporty')
INSERT [dbo].[Occasion] ([OccasionID], [Name]) VALUES (9, N'Nice Casual')
SET IDENTITY_INSERT [dbo].[Occasion] OFF
SET IDENTITY_INSERT [dbo].[Pantaloons] ON 

INSERT [dbo].[Pantaloons] ([PantaloonsID], [DescriptionID], [ColorID], [SeasonID], [OccassionID], [Photo]) VALUES (1, 7, 3, 1, 3, NULL)
INSERT [dbo].[Pantaloons] ([PantaloonsID], [DescriptionID], [ColorID], [SeasonID], [OccassionID], [Photo]) VALUES (2, 7, 6, 1, 3, NULL)
INSERT [dbo].[Pantaloons] ([PantaloonsID], [DescriptionID], [ColorID], [SeasonID], [OccassionID], [Photo]) VALUES (3, 5, 3, 1, 3, NULL)
SET IDENTITY_INSERT [dbo].[Pantaloons] OFF
SET IDENTITY_INSERT [dbo].[Season] ON 

INSERT [dbo].[Season] ([SeasonID], [Name]) VALUES (1, N'Fall')
INSERT [dbo].[Season] ([SeasonID], [Name]) VALUES (2, N'Winter')
INSERT [dbo].[Season] ([SeasonID], [Name]) VALUES (3, N'Spring')
INSERT [dbo].[Season] ([SeasonID], [Name]) VALUES (4, N'Summer')
SET IDENTITY_INSERT [dbo].[Season] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (1, 17, 2, 4, 7, NULL)
INSERT [dbo].[Shoes] ([ShoesID], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (2, 18, 4, 3, 3, NULL)
INSERT [dbo].[Shoes] ([ShoesID], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (3, 20, 14, 2, 3, NULL)
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopsID], [Name], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (1, N'Favorite sweater', 37, 21, 3, 9, NULL)
INSERT [dbo].[Tops] ([TopsID], [Name], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (2, N'Lightweight Long Cardigan', 10, 1, 1, 3, NULL)
INSERT [dbo].[Tops] ([TopsID], [Name], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (3, N'Sleeveless Lace Top', 30, 1, 4, 4, NULL)
INSERT [dbo].[Tops] ([TopsID], [Name], [DescriptionID], [ColorID], [SeasonID], [OccasionID], [Photo]) VALUES (4, N'Sleeveless Lace Top', 30, 14, 1, 4, NULL)
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Bottoms] FOREIGN KEY([BottomsID])
REFERENCES [dbo].[Bottoms] ([BottomsID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Bottoms]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Color]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Description]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Occasion]
GO
ALTER TABLE [dbo].[Bottoms]  WITH CHECK ADD  CONSTRAINT [FK_Bottoms_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottoms] CHECK CONSTRAINT [FK_Bottoms_Season]
GO
ALTER TABLE [dbo].[Coats]  WITH CHECK ADD  CONSTRAINT [FK_Coats_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Coats] CHECK CONSTRAINT [FK_Coats_Color]
GO
ALTER TABLE [dbo].[Coats]  WITH CHECK ADD  CONSTRAINT [FK_Coats_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Coats] CHECK CONSTRAINT [FK_Coats_Description]
GO
ALTER TABLE [dbo].[Coats]  WITH CHECK ADD  CONSTRAINT [FK_Coats_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Coats] CHECK CONSTRAINT [FK_Coats_Season]
GO
ALTER TABLE [dbo].[Dresses]  WITH CHECK ADD  CONSTRAINT [FK_Dresses_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Dresses] CHECK CONSTRAINT [FK_Dresses_Color]
GO
ALTER TABLE [dbo].[Dresses]  WITH CHECK ADD  CONSTRAINT [FK_Dresses_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Dresses] CHECK CONSTRAINT [FK_Dresses_Description]
GO
ALTER TABLE [dbo].[Dresses]  WITH CHECK ADD  CONSTRAINT [FK_Dresses_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Dresses] CHECK CONSTRAINT [FK_Dresses_Season]
GO
ALTER TABLE [dbo].[Embellishments]  WITH CHECK ADD  CONSTRAINT [FK_Embellishments_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Embellishments] CHECK CONSTRAINT [FK_Embellishments_Color]
GO
ALTER TABLE [dbo].[Embellishments]  WITH CHECK ADD  CONSTRAINT [FK_Embellishments_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Embellishments] CHECK CONSTRAINT [FK_Embellishments_Description]
GO
ALTER TABLE [dbo].[Embellishments]  WITH CHECK ADD  CONSTRAINT [FK_Embellishments_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Embellishments] CHECK CONSTRAINT [FK_Embellishments_Occasion]
GO
ALTER TABLE [dbo].[Embellishments]  WITH CHECK ADD  CONSTRAINT [FK_Embellishments_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Embellishments] CHECK CONSTRAINT [FK_Embellishments_Season]
GO
ALTER TABLE [dbo].[Footwear]  WITH CHECK ADD  CONSTRAINT [FK_Footwear_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Footwear] CHECK CONSTRAINT [FK_Footwear_Color]
GO
ALTER TABLE [dbo].[Footwear]  WITH CHECK ADD  CONSTRAINT [FK_Footwear_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Footwear] CHECK CONSTRAINT [FK_Footwear_Description]
GO
ALTER TABLE [dbo].[Footwear]  WITH CHECK ADD  CONSTRAINT [FK_Footwear_Footwear] FOREIGN KEY([FootwearID])
REFERENCES [dbo].[Footwear] ([FootwearID])
GO
ALTER TABLE [dbo].[Footwear] CHECK CONSTRAINT [FK_Footwear_Footwear]
GO
ALTER TABLE [dbo].[Footwear]  WITH CHECK ADD  CONSTRAINT [FK_Footwear_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Footwear] CHECK CONSTRAINT [FK_Footwear_Occasion]
GO
ALTER TABLE [dbo].[Footwear]  WITH CHECK ADD  CONSTRAINT [FK_Footwear_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Footwear] CHECK CONSTRAINT [FK_Footwear_Season]
GO
ALTER TABLE [dbo].[Jewelry]  WITH CHECK ADD  CONSTRAINT [FK_Jewelry_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Jewelry] CHECK CONSTRAINT [FK_Jewelry_Color]
GO
ALTER TABLE [dbo].[Jewelry]  WITH CHECK ADD  CONSTRAINT [FK_Jewelry_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Jewelry] CHECK CONSTRAINT [FK_Jewelry_Description]
GO
ALTER TABLE [dbo].[Legwear]  WITH CHECK ADD  CONSTRAINT [FK_Legwear_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Legwear] CHECK CONSTRAINT [FK_Legwear_Color]
GO
ALTER TABLE [dbo].[Legwear]  WITH CHECK ADD  CONSTRAINT [FK_Legwear_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Legwear] CHECK CONSTRAINT [FK_Legwear_Description]
GO
ALTER TABLE [dbo].[Legwear]  WITH CHECK ADD  CONSTRAINT [FK_Legwear_Legwear] FOREIGN KEY([LegwearID])
REFERENCES [dbo].[Legwear] ([LegwearID])
GO
ALTER TABLE [dbo].[Legwear] CHECK CONSTRAINT [FK_Legwear_Legwear]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomsID])
REFERENCES [dbo].[Bottoms] ([BottomsID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Coats] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Coats]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Color] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Color]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Description]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Dresses] FOREIGN KEY([DressesID])
REFERENCES [dbo].[Dresses] ([DressesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Dresses]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Jewelry] FOREIGN KEY([FootwearID])
REFERENCES [dbo].[Jewelry] ([JewelryID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Jewelry]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Legwear] FOREIGN KEY([LegwearID])
REFERENCES [dbo].[Legwear] ([LegwearID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Legwear]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Occasion] FOREIGN KEY([LegwearID])
REFERENCES [dbo].[Legwear] ([LegwearID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Occasion]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Outfits] FOREIGN KEY([OutfitsID])
REFERENCES [dbo].[Outfits] ([OutfitsID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Outfits]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Outfits1] FOREIGN KEY([OutfitsID])
REFERENCES [dbo].[Outfits] ([OutfitsID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Outfits1]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Season]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopsID])
REFERENCES [dbo].[Tops] ([TopsID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
ALTER TABLE [dbo].[Pantaloons]  WITH CHECK ADD  CONSTRAINT [FK_Pantaloons_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Pantaloons] CHECK CONSTRAINT [FK_Pantaloons_Color]
GO
ALTER TABLE [dbo].[Pantaloons]  WITH CHECK ADD  CONSTRAINT [FK_Pantaloons_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Pantaloons] CHECK CONSTRAINT [FK_Pantaloons_Description]
GO
ALTER TABLE [dbo].[Pantaloons]  WITH CHECK ADD  CONSTRAINT [FK_Pantaloons_Occasion] FOREIGN KEY([OccassionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Pantaloons] CHECK CONSTRAINT [FK_Pantaloons_Occasion]
GO
ALTER TABLE [dbo].[Pantaloons]  WITH CHECK ADD  CONSTRAINT [FK_Pantaloons_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Pantaloons] CHECK CONSTRAINT [FK_Pantaloons_Season]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Color]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Description]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Occasion]
GO
ALTER TABLE [dbo].[Shoes]  WITH CHECK ADD  CONSTRAINT [FK_Shoes_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Shoes] CHECK CONSTRAINT [FK_Shoes_Season]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Color]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Description] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Description]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Occasion]
GO
ALTER TABLE [dbo].[Tops]  WITH CHECK ADD  CONSTRAINT [FK_Tops_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Tops] CHECK CONSTRAINT [FK_Tops_Season]
GO
USE [master]
GO
ALTER DATABASE [WardrobeTracker] SET  READ_WRITE 
GO
