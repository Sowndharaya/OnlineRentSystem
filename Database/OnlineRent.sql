USE [master]
GO
/****** Object:  Database [Rocky]    Script Date: 25-05-2021 07:21:00 PM ******/
CREATE DATABASE [Rocky]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Rocky', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS1\MSSQL\DATA\Rocky.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Rocky_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS1\MSSQL\DATA\Rocky_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Rocky] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Rocky].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Rocky] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Rocky] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Rocky] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Rocky] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Rocky] SET ARITHABORT OFF 
GO
ALTER DATABASE [Rocky] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Rocky] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Rocky] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Rocky] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Rocky] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Rocky] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Rocky] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Rocky] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Rocky] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Rocky] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Rocky] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Rocky] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Rocky] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Rocky] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Rocky] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Rocky] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Rocky] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Rocky] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Rocky] SET  MULTI_USER 
GO
ALTER DATABASE [Rocky] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Rocky] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Rocky] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Rocky] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Rocky] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Rocky] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Rocky] SET QUERY_STORE = OFF
GO
USE [Rocky]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25-05-2021 07:21:01 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationType]    Script Date: 25-05-2021 07:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ApplicationType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 25-05-2021 07:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25-05-2021 07:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25-05-2021 07:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25-05-2021 07:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25-05-2021 07:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25-05-2021 07:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 25-05-2021 07:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 25-05-2021 07:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[House] [nvarchar](max) NOT NULL,
	[Location] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 25-05-2021 07:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 25-05-2021 07:21:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
	[ApplicationTypeId] [int] NOT NULL,
	[ShortDesc] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200521181810_AddCategoryToDatabase', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200521210836_AddApplicationTypeToDatabase', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200522024901_AddRequiredFields', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200522025257_AddProductToDb', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200522070333_AddApplicationTypeToProduct', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200522070542_AddApplicationTypeToProduct_Rename', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200525031100_AddShortDescToProductTable', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200525062656_scaffoldIdentityRazorClassLib', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200525064034_AddFullNameToUsersTable', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200525064123_AddFullNameToUsersTable1', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210519064508_AddBooking', N'5.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210519074157_Add_Product', N'5.0.5')
GO
SET IDENTITY_INSERT [dbo].[ApplicationType] ON 

INSERT [dbo].[ApplicationType] ([Id], [Name]) VALUES (4, N'Bungalow')
INSERT [dbo].[ApplicationType] ([Id], [Name]) VALUES (5, N'Apartment')
INSERT [dbo].[ApplicationType] ([Id], [Name]) VALUES (6, N'Cottage')
INSERT [dbo].[ApplicationType] ([Id], [Name]) VALUES (7, N'Villa')
SET IDENTITY_INSERT [dbo].[ApplicationType] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'83851643-2a9f-4751-9461-bcc3a1f6511a', N'Customer', N'CUSTOMER', N'6db178fe-6934-4053-a031-a1baa17cb298')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c8afd988-0482-4471-b483-ba0d2d12af9e', N'Admin', N'ADMIN', N'ed1762fb-7e33-46b5-95e0-bbaf1b6321b2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7f31eb63-b3b1-428b-a44e-1837b7d4f0d2', N'83851643-2a9f-4751-9461-bcc3a1f6511a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'86ed10c6-1780-4b73-86df-4d5da8ffb996', N'83851643-2a9f-4751-9461-bcc3a1f6511a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cb280de6-83b9-4e8e-bd45-e6b09734467f', N'83851643-2a9f-4751-9461-bcc3a1f6511a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e2b1b7db-246a-4770-af00-7f83cabea0fc', N'83851643-2a9f-4751-9461-bcc3a1f6511a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f85d48b3-99b3-4704-b097-c66d9bd10964', N'c8afd988-0482-4471-b483-ba0d2d12af9e')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'7f31eb63-b3b1-428b-a44e-1837b7d4f0d2', N'ruthik288@gmail.com', N'RUTHIK288@GMAIL.COM', N'ruthik288@gmail.com', N'RUTHIK288@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEND4rS5idOGi4pIu/aTS+I3Dv3tTxOcWzVl3z/cRE5/EWu1QZ92vIkUHmGYd1rCF6g==', N'BW3DE3QGFCIPOFIQKK7XLJNRQ2RBNXPE', N'2367fcec-2549-4068-9761-200ddf42e530', N'9597771651', 0, 0, NULL, 1, 0, N'ApplicationUser', N'sowndharaya')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'86ed10c6-1780-4b73-86df-4d5da8ffb996', N'sandhya09721@gmail.com', N'SANDHYA09721@GMAIL.COM', N'sandhya09721@gmail.com', N'SANDHYA09721@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJynPi3Z4BLbcoWDpSbjBwU+4OXNJe0dpVd+dB2VTpcnxVUNi9ETM4zSMiuZEvAazw==', N'3SD7SQGDFZEKXDQPGDEOMQURN6QPYTW3', N'2a989c2a-9621-4341-825f-01fc87358e72', N'9856632104', 0, 0, NULL, 1, 0, N'ApplicationUser', N'sandhya')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'cb280de6-83b9-4e8e-bd45-e6b09734467f', N'2k18cse071@kiot.ac.in', N'2K18CSE071@KIOT.AC.IN', N'2k18cse071@kiot.ac.in', N'2K18CSE071@KIOT.AC.IN', 0, N'AQAAAAEAACcQAAAAEMYmD3ET3naBP0HQ6U4hM5lQuTw5H0Y7aK4TUBA8HCRll/IdxUTcDeO/vnE8B/gX7w==', N'5DF2R2ZAZZQECETZKNWE3ZE5ZL5NIFQK', N'2d3559b1-0e6d-4499-bb6f-8c0d3376cb74', N'9360805134', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Prakash')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'e2b1b7db-246a-4770-af00-7f83cabea0fc', N'2k17cse103@kiot.ac.in', N'2K17CSE103@KIOT.AC.IN', N'2k17cse103@kiot.ac.in', N'2K17CSE103@KIOT.AC.IN', 0, N'AQAAAAEAACcQAAAAEEcP6t2TC7otQfKO0qpbeAPaBPP/Dm/+NhKGM06R8ORyyqICBaQFpq73/XFnJ+cyAg==', N'FWUATW6JHIDKRNPGC6NVPZ735PAPEJ6S', N'fe8977c8-f990-4a6c-af68-232eb7bdce7d', N'9856632104', 0, 0, NULL, 1, 0, N'ApplicationUser', N'priya')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'f85d48b3-99b3-4704-b097-c66d9bd10964', N'sowndhu288@gmail.com', N'SOWNDHU288@GMAIL.COM', N'sowndhu288@gmail.com', N'SOWNDHU288@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKGVU60opKj6zLLxrosSBKgkahraTVwWw/qwXg6zOWagGGTmvcU9UYejcpZ+nd/XgA==', N'CAR5DRNJJZOA4S2T4YKOQNUB6N5P7QQZ', N'fe92a135-0820-44d3-aa84-0fd7dfb191c4', N'9897773621', 0, 0, NULL, 1, 0, N'ApplicationUser', N'Abir')
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([Id], [Name], [House], [Location], [Status]) VALUES (1, N'Ruthik', N'SS Bungalow', N'Chennai', N'Booked')
INSERT [dbo].[Booking] ([Id], [Name], [House], [Location], [Status]) VALUES (2, N'Ruthik', N'AlisonBungalow', N'Salem', N'Booked')
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (3, N'SS Builders', 1)
INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (4, N'Usha Builders', 2)
INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (5, N'Apartment', 3)
INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (6, N'PriyaBuilders', 4)
INSERT [dbo].[Category] ([Id], [Name], [DisplayOrder]) VALUES (7, N'Arun Excelo', 5)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId], [ApplicationTypeId], [ShortDesc], [Status]) VALUES (4, N'SS bungalow', N'<div><span style="color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 14px; letter-spacing: 0.2px;">3 BHK Apartment is up for Rent for 15000/-. The Semi Furnished Apartment has a super built up area of 850 sqft and is located on the Ground Floor. 3 BHK bedroom , 1 balconies and comes with Fans, Lights, Wardrobes. The Bungalow comes with 1 closed car parking &amp; 1 two-wheeler parking. This property makes your living more convenient by offering amenities like Corporation water Additional Property Info :Flooring Info: Ceramic tiles Take hold of this most coveted property now! House is renovated recently.&nbsp;</span><br></div>', 15000, N'12839338-2313-434d-ba8b-4f8fb0ca71b6.jpg', 3, 4, N'Chennai', N'Booked')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId], [ApplicationTypeId], [ShortDesc], [Status]) VALUES (5, N'AlisonBungalow', N'<p><span style="color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 14px; letter-spacing: 0.2px;">3 BHK Apartment is up for Rent for 10,000/-. The Semi Furnished Apartment has a super built up area of 850 sqft and is located on the Ground Floor. 3 BHK bedroom , 1 balconies and comes with Fans, Lights, Wardrobes. The Bungalow comes with 1 closed car parking &amp; 1 two-wheeler parking. This property makes your living more convenient by offering amenities like Corporation water Additional Property Info :Flooring Info: Ceramic tiles Take hold of this most coveted property now! House is renovated recently.&nbsp;</span><br></p>', 10000, N'726dc68f-9cb9-4d3e-8d60-171c4069b20c.jpg', 3, 4, N'Salem', N'Booked')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId], [ApplicationTypeId], [ShortDesc], [Status]) VALUES (6, N'Usha Villa', N'<p><span style="color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 14px; letter-spacing: 0.2px;">4 BHK Apartment is up for Rent for 12,000/-. The Semi Furnished Apartment has a super built up area of 850 sqft and is located on the Ground Floor. 4 BHK bedroom , 1 balconies and comes with Fans, Lights, Wardrobes. The Bungalow comes with 1 closed car parking &amp; 1 two-wheeler parking. This property makes your living more convenient by offering amenities like Corporation water Additional Property Info :Flooring Info: Ceramic tiles Take hold of this most coveted property now! House is renovated recently.&nbsp;</span><br></p>', 12000, N'e45145ee-ce80-4486-b02f-8e08184c3d9f.jpg', 4, 4, N'Coimbatore', N'Vacant')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId], [ApplicationTypeId], [ShortDesc], [Status]) VALUES (7, N'SK Apartment', N'<p><span style="color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 14px; letter-spacing: 0.2px;">Semi Furnished, west facing 3 BHK Flat is available for rent Chennai. Rent quoted 15 k per month (including maintenance). This flat is Positioned on the 3rd property is Vaastu compliant with amenities like Corporation water, Drainage facility, 24*7 power backup, Lifts, Rain water harvesting, Visitors parking , etc. It is situated close to reputed educational institutions, hospitals, banks, supermarkets, restaurants, and other necessary civic utilities .&nbsp;</span><br></p>', 15000, N'87d437e0-3613-40c5-a58a-bd59d83f982c.jpg', 5, 5, N'Chennai', N'Vacant')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [Image], [CategoryId], [ApplicationTypeId], [ShortDesc], [Status]) VALUES (8, N'sowndhu cottage', N'<p><span style="color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 14px; letter-spacing: 0.2px;">4 BHK Apartment is up for Rent for 17,000/-. The Semi Furnished Apartment has a super built up area of 850 sqft and is located on the Ground Floor. 4 BHK bedroom , 1 balconies and comes with Fans, Lights, Wardrobes. The Bungalow comes with 1 closed car parking &amp; 1 two-wheeler parking. This property makes your living more convenient by offering amenities like Corporation water Additional Property Info :Flooring Info: Ceramic tiles Take hold of this most coveted property now! House is renovated recently.&nbsp;</span><br></p>', 17000, N'04424737-6cbd-4309-9ab8-b3242b5144cf.jpg', 6, 6, N'Pondicherry', N'Vacant')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 25-05-2021 07:21:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 25-05-2021 07:21:02 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 25-05-2021 07:21:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 25-05-2021 07:21:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 25-05-2021 07:21:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 25-05-2021 07:21:02 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 25-05-2021 07:21:02 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_ApplicationTypeId]    Script Date: 25-05-2021 07:21:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_ApplicationTypeId] ON [dbo].[Product]
(
	[ApplicationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_CategoryId]    Script Date: 25-05-2021 07:21:02 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_CategoryId] ON [dbo].[Product]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [ApplicationTypeId]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT (N'') FOR [Status]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ApplicationType_ApplicationTypeId] FOREIGN KEY([ApplicationTypeId])
REFERENCES [dbo].[ApplicationType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ApplicationType_ApplicationTypeId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [Rocky] SET  READ_WRITE 
GO
