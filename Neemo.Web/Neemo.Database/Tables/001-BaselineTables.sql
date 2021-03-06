SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AncapRating]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AncapRating](
	[AncapRatingID] [int] IDENTITY(1,1) NOT NULL,
	[AncapRating] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_AncapRating] PRIMARY KEY CLUSTERED 
(
	[AncapRatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[NewsletterSubscription] [bit] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Badge]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Badge](
	[BadgeID] [int] IDENTITY(1,1) NOT NULL,
	[Badge] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Badge] PRIMARY KEY CLUSTERED 
(
	[BadgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BodyType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BodyType](
	[BodyTypeID] [int] IDENTITY(1,1) NOT NULL,
	[BodyType] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_BodyType] PRIMARY KEY CLUSTERED 
(
	[BodyTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CCRating]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CCRating](
	[CCRatingID] [int] IDENTITY(1,1) NOT NULL,
	[CCRating] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_CCRating] PRIMARY KEY CLUSTERED 
(
	[CCRatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Chassis]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Chassis](
	[ChassisID] [int] IDENTITY(1,1) NOT NULL,
	[ChassisNo] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Chassis] PRIMARY KEY CLUSTERED 
(
	[ChassisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Colour]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Colour](
	[ColourID] [int] IDENTITY(1,1) NOT NULL,
	[Colour] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Colour] PRIMARY KEY CLUSTERED 
(
	[ColourID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Condition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Condition](
	[ConditionID] [int] IDENTITY(1,1) NOT NULL,
	[Condition] [nvarchar](100) NULL,
	[Details] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Condition] PRIMARY KEY CLUSTERED 
(
	[ConditionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Country](
	[IsoCode] [varchar](2) NOT NULL,
	[Title] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[IsoCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cylinder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cylinder](
	[CylinderID] [int] IDENTITY(1,1) NOT NULL,
	[Cylinder] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Cylinder] PRIMARY KEY CLUSTERED 
(
	[CylinderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DealType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DealType](
	[DealTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DealType] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_DealType] PRIMARY KEY CLUSTERED 
(
	[DealTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Door]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Door](
	[DoorID] [int] IDENTITY(1,1) NOT NULL,
	[Door] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Door] PRIMARY KEY CLUSTERED 
(
	[DoorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DriveType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DriveType](
	[DriveTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DriveType] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_DriveType] PRIMARY KEY CLUSTERED 
(
	[DriveTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Engine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Engine](
	[EngineID] [int] IDENTITY(1,1) NOT NULL,
	[EngineNo] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Engine] PRIMARY KEY CLUSTERED 
(
	[EngineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EngineSize]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EngineSize](
	[EngineSizeID] [int] IDENTITY(1,1) NOT NULL,
	[EngineSize] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_EngineSize] PRIMARY KEY CLUSTERED 
(
	[EngineSizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Feature]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Feature](
	[FeatureID] [int] IDENTITY(1,1) NOT NULL,
	[Feature] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[StandardFeature] [bit] NULL,
	[AfterMarketFeature] [bit] NULL,
	[Approved] [bit] NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FuelType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FuelType](
	[FuelTypeID] [int] IDENTITY(1,1) NOT NULL,
	[FuelType] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_FuelType] PRIMARY KEY CLUSTERED 
(
	[FuelTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GreenRating]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GreenRating](
	[GreenRatingID] [int] IDENTITY(1,1) NOT NULL,
	[GreenRating] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_GreenRating] PRIMARY KEY CLUSTERED 
(
	[GreenRatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ImageList]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ImageList](
	[ImageListID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](200) NULL,
	[ThumbNailImageName] [nvarchar](200) NULL,
	[CreatedDatetime] [datetime] NULL,
	[Active] [bit] NULL,
	[ListingHeaderID] [int] NULL,
 CONSTRAINT [PK_ImageList] PRIMARY KEY CLUSTERED 
(
	[ImageListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Induction]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Induction](
	[InductionID] [int] IDENTITY(1,1) NOT NULL,
	[Induction] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Induction] PRIMARY KEY CLUSTERED 
(
	[InductionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KiloMeter]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KiloMeter](
	[KilometerID] [int] IDENTITY(1,1) NOT NULL,
	[KiloMeter] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_KiloMeter] PRIMARY KEY CLUSTERED 
(
	[KilometerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListingHeader]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ListingHeader](
	[ListingHeaderID] [int] IDENTITY(1,1) NOT NULL,
	[DefaultImageListID] [int] NULL,
	[CreatedDatetime] [datetime] NULL,
	[Active] [bit] NULL,
	[DateDeleted] [datetime] NULL,
	[ProductID] [int] NULL,
	[CategoryID] [int] NULL,
	[TypeID] [int] NULL,
	[ServiceID] [int] NULL,
	[FeatureID] [int] NULL,
	[ProjectID] [int] NULL,
 CONSTRAINT [PK_ListingHeader] PRIMARY KEY CLUSTERED 
(
	[ListingHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ListingType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ListingType](
	[ListingTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ListingType] [nvarchar](100) NULL,
	[Details] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_ListingType] PRIMARY KEY CLUSTERED 
(
	[ListingTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [varchar](255) NOT NULL,
	[Level] [varchar](50) NOT NULL,
	[Logger] [varchar](255) NOT NULL,
	[Message] [varchar](4000) NOT NULL,
	[Exception] [varchar](2000) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Make]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Make](
	[MakeID] [int] IDENTITY(1,1) NOT NULL,
	[Make] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Make] PRIMARY KEY CLUSTERED 
(
	[MakeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Model]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Model](
	[ModelID] [int] IDENTITY(1,1) NOT NULL,
	[Model] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderHeaderID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [money] NULL,
	[TotalValue] [money] NULL,
	[Active] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateDeleted] [datetime] NULL,
	[TaxTotal] [money] NULL,
	[ProductName] [varchar](100) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderHeader]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderHeader](
	[OrderHeaderID] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationID] [int] NULL,
	[RecordSourceIP] [nvarchar](50) NULL,
	[TotalAmount] [money] NULL,
	[TaxTotal] [money] NULL,
	[ShippingCharges] [money] NULL,
	[Handlingcharges] [money] NULL,
	[OrderStatusID] [int] NULL,
	[Billing_LastName] [nvarchar](100) NULL,
	[Billing_FirstName] [nvarchar](100) NULL,
	[Billing_CompanyName] [nvarchar](100) NULL,
	[Billing_Address] [nvarchar](100) NULL,
	[Billing_City] [nvarchar](50) NULL,
	[Billing_State] [nvarchar](50) NULL,
	[Billing_PostCode] [nvarchar](20) NULL,
	[Billing_Country] [nvarchar](50) NULL,
	[Billing_Email] [nvarchar](100) NULL,
	[Billing_Phone] [nvarchar](20) NULL,
	[Billing_Mobile] [nvarchar](20) NULL,
	[Billing_Fax] [nvarchar](20) NULL,
	[Shipping_FirstName] [nvarchar](100) NULL,
	[Shipping_LastName] [nvarchar](100) NULL,
	[Shipping_CompanyName] [nvarchar](100) NULL,
	[Shipping_Address] [nvarchar](100) NULL,
	[Shipping_City] [nvarchar](50) NULL,
	[Shipping_State] [nvarchar](50) NULL,
	[Shipping_PostCode] [nvarchar](20) NULL,
	[Shipping_Country] [nvarchar](50) NULL,
	[Shipping_Email] [nvarchar](100) NULL,
	[Shipping_Phone] [nvarchar](20) NULL,
	[Shipping_Mobile] [nvarchar](20) NULL,
	[Shipping_Fax] [nvarchar](20) NULL,
	[Active] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateDeleted] [datetime] NULL,
	[GUID] [nvarchar](100) NULL,
	[UserName] [varchar](100) NULL,
	[PaymentTransactionId] [varchar](100) NULL,
	[InvoiceNumber] [varchar](20) NULL,
 CONSTRAINT [PK_OrderHeader] PRIMARY KEY CLUSTERED 
(
	[OrderHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OrderStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Part]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Part](
	[PartID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[ColourID] [int] NULL,
	[SideID] [int] NULL,
	[Part] [nvarchar](max) NULL,
	[PartNo] [nvarchar](100) NULL,
	[Height] [decimal](18, 0) NULL,
	[Width] [decimal](18, 0) NULL,
	[Length] [decimal](18, 0) NULL,
	[Weight] [decimal](18, 0) NULL,
	[Image] [nvarchar](100) NULL,
	[ThumbNailPath] [nvarchar](100) NULL,
	[ProductpecPath] [nvarchar](100) NULL,
	[DefaultPartPhotoID] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
	[ShortDescription] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[KeyWords] [nvarchar](max) NULL,
 CONSTRAINT [PK_Part_1] PRIMARY KEY CLUSTERED 
(
	[PartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartFeature]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PartFeature](
	[PartFeatureID] [int] IDENTITY(1,1) NOT NULL,
	[PartID] [int] NOT NULL,
	[FeatureID] [int] NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_ProductFeature] PRIMARY KEY CLUSTERED 
(
	[PartFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartPhoto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PartPhoto](
	[PartPhotoID] [int] IDENTITY(1,1) NOT NULL,
	[PartID] [int] NOT NULL,
	[PhotoName] [nvarchar](100) NULL,
	[PhotoPath] [nvarchar](100) NULL,
	[PhotoDetails] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_ProductPhoto] PRIMARY KEY CLUSTERED 
(
	[PartPhotoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PartPrice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PartPrice](
	[PartPriceID] [int] IDENTITY(1,1) NOT NULL,
	[PartID] [int] NULL,
	[Price] [money] NULL,
	[Quantity] [int] NOT NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_PartPrice] PRIMARY KEY CLUSTERED 
(
	[PartPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Power]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Power](
	[PowerID] [int] IDENTITY(1,1) NOT NULL,
	[Power] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Power] PRIMARY KEY CLUSTERED 
(
	[PowerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PPlateApprove]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PPlateApprove](
	[PPlateApproveID] [int] IDENTITY(1,1) NOT NULL,
	[PPlateApprove] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_PPlateApprove] PRIMARY KEY CLUSTERED 
(
	[PPlateApproveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Price]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Price](
	[PriceID] [int] IDENTITY(1,1) NOT NULL,
	[Price] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[PriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[WreckID] [int] NOT NULL,
	[PartID] [int] NOT NULL,
	[Qty] [int] NULL,
	[Comment] [nvarchar](max) NULL,
	[CostPrice] [money] NOT NULL,
	[Active] [bit] NOT NULL,
	[onSpecial] [bit] NULL,
	[Soldout] [bit] NULL,
	[Discount] [int] NULL,
	[SpecialsNote] [nvarchar](max) NULL,
	[CreatedDateTime] [datetime] NULL,
	[DisplayonHomePage] [bit] NULL,
	[Featured] [bit] NULL,
	[New] [bit] NULL,
	[TopSeller] [bit] NULL,
	[Deffects] [bit] NULL,
	[DeffectNotes] [nvarchar](500) NULL,
	[DefaultProductPhotoID] [int] NULL,
 CONSTRAINT [PK_Product_1] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductPhoto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductPhoto](
	[ProductPhotoID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PhotoName] [nvarchar](100) NULL,
	[PhotoPath] [nvarchar](100) NULL,
	[PhotoDetails] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_ProductPhoto_1] PRIMARY KEY CLUSTERED 
(
	[ProductPhotoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductPrice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductPrice](
	[ProductPriceID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Price] [money] NULL,
	[Quantity] [int] NOT NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_ProductPrice] PRIMARY KEY CLUSTERED 
(
	[ProductPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Provider]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Provider](
	[ProviderID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [nvarchar](200) NULL,
	[Description] [nvarchar](max) NULL,
	[KeyWord] [nvarchar](max) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[LevelNo] [nvarchar](50) NULL,
	[UnitNo] [nvarchar](50) NULL,
	[StreetNo] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[PostCode] [int] NULL,
	[Country] [nvarchar](50) NULL,
	[Longitude] [nvarchar](200) NULL,
	[Latitude] [nvarchar](200) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[URL] [nvarchar](200) NULL,
	[Rating] [int] NULL,
	[ContactUsURL] [nvarchar](200) NULL,
	[DisplayOrderID] [int] NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_WorkShop] PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Provider_ProviderType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Provider_ProviderType](
	[Provider_ProviderTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[ProviderTypeID] [int] NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_WorkShopCategory] PRIMARY KEY CLUSTERED 
(
	[Provider_ProviderTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProviderPhoto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProviderPhoto](
	[ProviderPhotoID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NOT NULL,
	[PhotoName] [nvarchar](100) NULL,
	[PhotoPath] [nvarchar](100) NULL,
	[PhotoDetails] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_ProviderPhoto] PRIMARY KEY CLUSTERED 
(
	[ProviderPhotoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProviderServiceType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProviderServiceType](
	[ProviderServiceTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderID] [int] NULL,
	[ServiceTypeID] [int] NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_ProviderServiceType] PRIMARY KEY CLUSTERED 
(
	[ProviderServiceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProviderType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProviderType](
	[ProviderTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderType] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_ProviderType] PRIMARY KEY CLUSTERED 
(
	[ProviderTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Region](
	[RegionID] [int] IDENTITY(1,1) NOT NULL,
	[Region] [nvarchar](100) NULL,
	[RegionShort] [nvarchar](10) NULL,
	[StateID] [int] NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Registration]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Registration](
	[RegistrationID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[PostCode] [int] NULL,
	[CountryCode] [varchar](2) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[TermsAccepted] [bit] NULL,
	[CarDealerShip] [bit] NULL,
	[PrivateProfile] [bit] NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[UserLevel] [int] NULL,
	[OriginIP] [nvarchar](50) NULL,
	[URL] [nvarchar](100) NULL,
	[Shipping_FirstName] [nvarchar](50) NULL,
	[Shipping_LastName] [nvarchar](50) NULL,
	[Shipping_CompanyName] [nvarchar](50) NULL,
	[Shipping_Address] [nvarchar](50) NULL,
	[Shipping_City] [nvarchar](50) NULL,
	[Shipping_State] [nvarchar](50) NULL,
	[Shipping_PostCode] [int] NULL,
	[Shipping_CountryCode] [nvarchar](10) NULL,
	[Shipping_Mobile] [nvarchar](50) NULL,
	[Shipping_Phone] [nvarchar](50) NULL,
	[Shipping_Fax] [nvarchar](50) NULL,
	[Shipping_EmailAddress] [nvarchar](50) NULL,
	[AdminUser] [bit] NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
	[IsSubscribedToNewsletter] [bit] NULL,
 CONSTRAINT [PK_Registrations] PRIMARY KEY CLUSTERED 
(
	[RegistrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Seat](
	[SeatID] [int] IDENTITY(1,1) NOT NULL,
	[Seat] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Seat] PRIMARY KEY CLUSTERED 
(
	[SeatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Series]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Series](
	[SeriesID] [int] IDENTITY(1,1) NOT NULL,
	[Series] [nvarchar](100) NULL,
	[SeriesShort] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Series] PRIMARY KEY CLUSTERED 
(
	[SeriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServiceType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ServiceType](
	[ServiceTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceType] [nvarchar](50) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_ServiceType] PRIMARY KEY CLUSTERED 
(
	[ServiceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Side]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Side](
	[SideID] [int] IDENTITY(1,1) NOT NULL,
	[Side] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Side] PRIMARY KEY CLUSTERED 
(
	[SideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[State]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[State](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[State] [nvarchar](100) NULL,
	[StateShort] [nvarchar](10) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Subscriber]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Subscriber](
	[SubscriberID] [nchar](10) NULL,
	[EmailAddress] [nchar](10) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[OptOut] [bit] NULL,
	[OptOutDate] [datetime] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Suburb]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Suburb](
	[SuburbID] [int] IDENTITY(1,1) NOT NULL,
	[Suburb] [nvarchar](100) NULL,
	[RegionID] [int] NOT NULL,
	[PostCode] [nvarchar](50) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Suburb] PRIMARY KEY CLUSTERED 
(
	[SuburbID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Testimonial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Testimonial](
	[TestimonialID] [int] IDENTITY(1,1) NOT NULL,
	[Testimonial] [text] NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Suburb] [nvarchar](100) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[Approved] [bit] NULL,
 CONSTRAINT [PK_Testimonial] PRIMARY KEY CLUSTERED 
(
	[TestimonialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Towing]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Towing](
	[TowingID] [int] IDENTITY(1,1) NOT NULL,
	[Towing] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Towing] PRIMARY KEY CLUSTERED 
(
	[TowingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transmission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Transmission](
	[TransmissionID] [int] IDENTITY(1,1) NOT NULL,
	[Transmission] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Transmission] PRIMARY KEY CLUSTERED 
(
	[TransmissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vehicle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Vehicle](
	[VehicleID] [int] IDENTITY(1,1) NOT NULL,
	[MakeID] [int] NOT NULL,
	[ModelID] [int] NOT NULL,
	[BadgeID] [int] NOT NULL,
	[SeriesID] [int] NOT NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_VehicleListing] PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleListing]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VehicleListing](
	[VehicleListingID] [int] NOT NULL,
	[VehicleID] [int] NOT NULL,
	[Heading] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [money] NOT NULL,
	[ConditionID] [int] NOT NULL,
	[DealTypeID] [int] NOT NULL,
	[YearID] [int] NOT NULL,
	[SuburbID] [int] NOT NULL,
	[TransmissionID] [int] NOT NULL,
	[FuelTypeID] [int] NOT NULL,
	[DriveTypeID] [int] NOT NULL,
	[CylinderID] [int] NOT NULL,
	[Kilometers] [int] NOT NULL,
	[EngineSizeID] [int] NOT NULL,
	[PowerID] [int] NOT NULL,
	[TowingID] [int] NOT NULL,
	[InductionID] [int] NOT NULL,
	[BodyTypeID] [int] NOT NULL,
	[SeatID] [int] NOT NULL,
	[ColourID] [int] NOT NULL,
	[DoorID] [int] NOT NULL,
	[PPlateApproveID] [int] NOT NULL,
	[AncapRatingID] [int] NOT NULL,
	[GreenRatingID] [int] NOT NULL,
	[RegistrationID] [int] IDENTITY(1,1) NOT NULL,
	[DefaultImage] [nvarchar](200) NULL,
	[RoadWorthy] [bit] NULL,
	[WrittenOff] [bit] NULL,
	[Registerd] [int] NULL,
	[ShowPhoneNo] [bit] NULL,
	[RegistrationPlateNumber] [nvarchar](50) NULL,
	[VINNumber] [nvarchar](50) NULL,
	[Active] [bit] NOT NULL,
	[Approved] [bit] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_VehicleListing_1] PRIMARY KEY CLUSTERED 
(
	[VehicleListingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VehicleListing_Archive](
	[VehicleListing_ArchiveID] [int] NOT NULL,
	[VehicleListingID] [int] NULL,
	[VehicleID] [int] NOT NULL,
	[Heading] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [money] NOT NULL,
	[ConditionID] [int] NOT NULL,
	[DealTypeID] [int] NOT NULL,
	[YearID] [int] NOT NULL,
	[SuburbID] [int] NOT NULL,
	[TransmissionID] [int] NOT NULL,
	[FuelTypeID] [int] NOT NULL,
	[DriveTypeID] [int] NOT NULL,
	[CylinderID] [int] NOT NULL,
	[Kilometers] [int] NOT NULL,
	[EngineSizeID] [int] NOT NULL,
	[PowerID] [int] NOT NULL,
	[TowingID] [int] NOT NULL,
	[InductionID] [int] NOT NULL,
	[BodyTypeID] [int] NOT NULL,
	[SeatID] [int] NOT NULL,
	[ColourID] [int] NOT NULL,
	[DoorID] [int] NOT NULL,
	[PPlateApproveID] [int] NOT NULL,
	[AncapRatingID] [int] NOT NULL,
	[GreenRatingID] [int] NOT NULL,
	[RegistrationID] [int] IDENTITY(1,1) NOT NULL,
	[DefaultImage] [nvarchar](200) NULL,
	[RoadWorthy] [bit] NULL,
	[WrittenOff] [bit] NULL,
	[Registerd] [int] NULL,
	[ShowPhoneNo] [bit] NULL,
	[RegistrationPlateNumber] [nvarchar](50) NULL,
	[VINNumber] [nvarchar](50) NULL,
	[Active] [bit] NOT NULL,
	[Approved] [bit] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_VehicleListing_Archive_1] PRIMARY KEY CLUSTERED 
(
	[VehicleListing_ArchiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleListingApproval]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VehicleListingApproval](
	[VehicleListingApprovalID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleListingID] [int] NULL,
	[Approved] [bit] NULL,
	[Rejected] [bit] NULL,
	[DateApproved] [datetime] NULL,
	[DateRejected] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_VehicleListingApproval] PRIMARY KEY CLUSTERED 
(
	[VehicleListingApprovalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleListingDealType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VehicleListingDealType](
	[VehicleListingDealTypeID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleListingID] [int] NULL,
	[DealTypeID] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_VehicleListingDealType] PRIMARY KEY CLUSTERED 
(
	[VehicleListingDealTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleListingDealType_Archive]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VehicleListingDealType_Archive](
	[VehicleListingDealType_ArchiveID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleListingDealTypeID] [int] NULL,
	[VehicleListingID] [int] NULL,
	[DealTypeID] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_VehicleListingDealType_Archive] PRIMARY KEY CLUSTERED 
(
	[VehicleListingDealType_ArchiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleListingFeature]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VehicleListingFeature](
	[VehicleListingFeatureID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleListingID] [int] NULL,
	[FeatureID] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_VehicleListingFeature] PRIMARY KEY CLUSTERED 
(
	[VehicleListingFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleListingFeature_Archive]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VehicleListingFeature_Archive](
	[VehicleListingFeature_ArchiveID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleListingFeatureID] [int] NULL,
	[VehicleListingID] [int] NULL,
	[FeatureID] [int] NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_VehicleListingFeature_Archive] PRIMARY KEY CLUSTERED 
(
	[VehicleListingFeature_ArchiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleListingImage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VehicleListingImage](
	[VehicleListingImageID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleListingID] [int] NULL,
	[Image] [nvarchar](200) NULL,
	[Image_ThumbNail] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_VehicleListingImage] PRIMARY KEY CLUSTERED 
(
	[VehicleListingImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VehicleListingImage_Archive]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VehicleListingImage_Archive](
	[VehicleListingImage_ArchiveD] [int] IDENTITY(1,1) NOT NULL,
	[VehicleListingImage_ArchiveID] [int] NOT NULL,
	[VehicleListingID] [int] NULL,
	[Image] [nvarchar](200) NULL,
	[Image_ThumbNail] [nvarchar](200) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_VehicleListingImage_Archive] PRIMARY KEY CLUSTERED 
(
	[VehicleListingImage_ArchiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WheelBase]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WheelBase](
	[WheelBaseID] [int] IDENTITY(1,1) NOT NULL,
	[WheelBase] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_WheelBase] PRIMARY KEY CLUSTERED 
(
	[WheelBaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Wreck]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Wreck](
	[WreckID] [int] IDENTITY(1,1) NOT NULL,
	[WreckNo] [nvarchar](100) NULL,
	[KeyWord] [nvarchar](100) NULL,
	[MakeID] [int] NULL,
	[ModelID] [int] NULL,
	[ChassisID] [int] NULL,
	[EngineID] [int] NULL,
	[EngineSizeID] [int] NULL,
	[FuelTypeID] [int] NULL,
	[BodyTypeID] [int] NULL,
	[WheelBaseID] [int] NULL,
	[YearID] [int] NULL,
	[CCRatingID] [int] NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Rack] PRIMARY KEY CLUSTERED 
(
	[WreckID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Year]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Year](
	[YearID] [int] IDENTITY(1,1) NOT NULL,
	[Year] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Active] [bit] NULL,
	[CreatedDateTime] [datetime] NULL,
	[CreatedByUser] [nvarchar](50) NULL,
	[LastModifiedDateTime] [datetime] NULL,
	[LastModifiedByUser] [nvarchar](50) NULL,
	[DeletedDateTime] [datetime] NULL,
	[DeletedByUser] [nvarchar](50) NULL,
	[EffectiveDateFrom] [datetime] NULL,
	[EffectiveDateTo] [datetime] NULL,
 CONSTRAINT [PK_Year] PRIMARY KEY CLUSTERED 
(
	[YearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AncapRating_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AncapRating] ADD  CONSTRAINT [DF_AncapRating_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AncapRating_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AncapRating] ADD  CONSTRAINT [DF_AncapRating_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AncapRating_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AncapRating] ADD  CONSTRAINT [DF_AncapRating_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Badge_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Badge] ADD  CONSTRAINT [DF_Badge_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Badge_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Badge] ADD  CONSTRAINT [DF_Badge_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Badge_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Badge] ADD  CONSTRAINT [DF_Badge_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BodyType_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BodyType] ADD  CONSTRAINT [DF_BodyType_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BodyType_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BodyType] ADD  CONSTRAINT [DF_BodyType_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BodyType_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BodyType] ADD  CONSTRAINT [DF_BodyType_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Category_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Category_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Category_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CCRating_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CCRating] ADD  CONSTRAINT [DF_CCRating_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CCRating_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CCRating] ADD  CONSTRAINT [DF_CCRating_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_CCRating_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CCRating] ADD  CONSTRAINT [DF_CCRating_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Chassis_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Chassis] ADD  CONSTRAINT [DF_Chassis_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Chassis_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Chassis] ADD  CONSTRAINT [DF_Chassis_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Chassis_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Chassis] ADD  CONSTRAINT [DF_Chassis_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Colour_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Colour] ADD  CONSTRAINT [DF_Colour_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Colour_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Colour] ADD  CONSTRAINT [DF_Colour_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Colour_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Colour] ADD  CONSTRAINT [DF_Colour_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Condition_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Condition] ADD  CONSTRAINT [DF_Condition_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Condition_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Condition] ADD  CONSTRAINT [DF_Condition_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Condition_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Condition] ADD  CONSTRAINT [DF_Condition_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Cylinder_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cylinder] ADD  CONSTRAINT [DF_Cylinder_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Cylinder_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cylinder] ADD  CONSTRAINT [DF_Cylinder_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Cylinder_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Cylinder] ADD  CONSTRAINT [DF_Cylinder_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DealType_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DealType] ADD  CONSTRAINT [DF_DealType_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DealType_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DealType] ADD  CONSTRAINT [DF_DealType_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DealType_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DealType] ADD  CONSTRAINT [DF_DealType_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Door_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Door] ADD  CONSTRAINT [DF_Door_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Door_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Door] ADD  CONSTRAINT [DF_Door_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Door_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Door] ADD  CONSTRAINT [DF_Door_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DriveType_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DriveType] ADD  CONSTRAINT [DF_DriveType_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DriveType_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DriveType] ADD  CONSTRAINT [DF_DriveType_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_DriveType_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DriveType] ADD  CONSTRAINT [DF_DriveType_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Engine_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Engine] ADD  CONSTRAINT [DF_Engine_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Engine_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Engine] ADD  CONSTRAINT [DF_Engine_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Engine_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Engine] ADD  CONSTRAINT [DF_Engine_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_EngineSize_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EngineSize] ADD  CONSTRAINT [DF_EngineSize_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_EngineSize_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EngineSize] ADD  CONSTRAINT [DF_EngineSize_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_EngineSize_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EngineSize] ADD  CONSTRAINT [DF_EngineSize_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Feature_Approved]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Feature] ADD  CONSTRAINT [DF_Feature_Approved]  DEFAULT ((1)) FOR [Approved]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Feature_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Feature] ADD  CONSTRAINT [DF_Feature_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Feature_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Feature] ADD  CONSTRAINT [DF_Feature_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Feature_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Feature] ADD  CONSTRAINT [DF_Feature_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FuelType_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FuelType] ADD  CONSTRAINT [DF_FuelType_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FuelType_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FuelType] ADD  CONSTRAINT [DF_FuelType_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_FuelType_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FuelType] ADD  CONSTRAINT [DF_FuelType_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_GreenRating_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GreenRating] ADD  CONSTRAINT [DF_GreenRating_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_GreenRating_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GreenRating] ADD  CONSTRAINT [DF_GreenRating_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_GreenRating_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GreenRating] ADD  CONSTRAINT [DF_GreenRating_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Induction_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Induction] ADD  CONSTRAINT [DF_Induction_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Induction_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Induction] ADD  CONSTRAINT [DF_Induction_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Induction_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Induction] ADD  CONSTRAINT [DF_Induction_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_KiloMeter_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KiloMeter] ADD  CONSTRAINT [DF_KiloMeter_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_KiloMeter_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KiloMeter] ADD  CONSTRAINT [DF_KiloMeter_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_KiloMeter_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KiloMeter] ADD  CONSTRAINT [DF_KiloMeter_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ListingType_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ListingType] ADD  CONSTRAINT [DF_ListingType_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ListingType_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ListingType] ADD  CONSTRAINT [DF_ListingType_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ListingType_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ListingType] ADD  CONSTRAINT [DF_ListingType_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Make_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Make] ADD  CONSTRAINT [DF_Make_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Make_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Make] ADD  CONSTRAINT [DF_Make_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Make_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Make] ADD  CONSTRAINT [DF_Make_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Model_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Model] ADD  CONSTRAINT [DF_Model_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Model_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Model] ADD  CONSTRAINT [DF_Model_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Model_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Model] ADD  CONSTRAINT [DF_Model_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OrderDetails_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OrderDetails_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_OrderDetails_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OrderHeader_OrderProgressID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrderHeader] ADD  CONSTRAINT [DF_OrderHeader_OrderProgressID]  DEFAULT ((1)) FOR [OrderStatusID]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OrderHeader_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrderHeader] ADD  CONSTRAINT [DF_OrderHeader_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_OrderHeader_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OrderHeader] ADD  CONSTRAINT [DF_OrderHeader_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Part_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Part] ADD  CONSTRAINT [DF_Part_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Part_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Part] ADD  CONSTRAINT [DF_Part_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Part_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Part] ADD  CONSTRAINT [DF_Part_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PartFeature_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartFeature] ADD  CONSTRAINT [DF_PartFeature_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PartFeature_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartFeature] ADD  CONSTRAINT [DF_PartFeature_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PartFeature_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartFeature] ADD  CONSTRAINT [DF_PartFeature_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PartPhoto_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartPhoto] ADD  CONSTRAINT [DF_PartPhoto_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PartPhoto_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartPhoto] ADD  CONSTRAINT [DF_PartPhoto_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PartPhoto_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartPhoto] ADD  CONSTRAINT [DF_PartPhoto_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PartPrice_Quantity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartPrice] ADD  CONSTRAINT [DF_PartPrice_Quantity]  DEFAULT ((1)) FOR [Quantity]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PartPrice_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartPrice] ADD  CONSTRAINT [DF_PartPrice_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PartPrice_CreatedDateTime_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartPrice] ADD  CONSTRAINT [DF_PartPrice_CreatedDateTime_1]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PartPrice_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PartPrice] ADD  CONSTRAINT [DF_PartPrice_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Power_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Power] ADD  CONSTRAINT [DF_Power_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Power_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Power] ADD  CONSTRAINT [DF_Power_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Power_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Power] ADD  CONSTRAINT [DF_Power_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PPlateApprove_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PPlateApprove] ADD  CONSTRAINT [DF_PPlateApprove_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PPlateApprove_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PPlateApprove] ADD  CONSTRAINT [DF_PPlateApprove_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_PPlateApprove_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PPlateApprove] ADD  CONSTRAINT [DF_PPlateApprove_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Price_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Price] ADD  CONSTRAINT [DF_Price_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Price_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Price] ADD  CONSTRAINT [DF_Price_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Price_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Price] ADD  CONSTRAINT [DF_Price_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Product_CostPrice]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CostPrice]  DEFAULT ((0.00)) FOR [CostPrice]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Product_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Product_onSpecial]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_onSpecial]  DEFAULT ((0)) FOR [onSpecial]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Product_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Product_DisplayonHomePage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_DisplayonHomePage]  DEFAULT ((0)) FOR [DisplayonHomePage]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Product_Featured]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Featured]  DEFAULT ((0)) FOR [Featured]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Product_New]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_New]  DEFAULT ((1)) FOR [New]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Product_TopSeller]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_TopSeller]  DEFAULT ((0)) FOR [TopSeller]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProductPhoto_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductPhoto] ADD  CONSTRAINT [DF_ProductPhoto_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProductPhoto_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductPhoto] ADD  CONSTRAINT [DF_ProductPhoto_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProductPhoto_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductPhoto] ADD  CONSTRAINT [DF_ProductPhoto_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProductPrice_Quantity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductPrice] ADD  CONSTRAINT [DF_ProductPrice_Quantity]  DEFAULT ((1)) FOR [Quantity]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProductPrice_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductPrice] ADD  CONSTRAINT [DF_ProductPrice_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProductPrice_CreatedDateTime_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductPrice] ADD  CONSTRAINT [DF_ProductPrice_CreatedDateTime_1]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProductPrice_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProductPrice] ADD  CONSTRAINT [DF_ProductPrice_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_WorkShop_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Provider] ADD  CONSTRAINT [DF_WorkShop_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_WorkShop_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Provider] ADD  CONSTRAINT [DF_WorkShop_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_WorkShop_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Provider] ADD  CONSTRAINT [DF_WorkShop_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_WorkShopCategory_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Provider_ProviderType] ADD  CONSTRAINT [DF_WorkShopCategory_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_WorkShopCategory_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Provider_ProviderType] ADD  CONSTRAINT [DF_WorkShopCategory_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_WorkShopCategory_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Provider_ProviderType] ADD  CONSTRAINT [DF_WorkShopCategory_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProviderPhoto_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProviderPhoto] ADD  CONSTRAINT [DF_ProviderPhoto_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProviderPhoto_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProviderPhoto] ADD  CONSTRAINT [DF_ProviderPhoto_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProviderPhoto_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProviderPhoto] ADD  CONSTRAINT [DF_ProviderPhoto_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProviderServiceType_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProviderServiceType] ADD  CONSTRAINT [DF_ProviderServiceType_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProviderServiceType_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProviderServiceType] ADD  CONSTRAINT [DF_ProviderServiceType_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProviderServiceType_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProviderServiceType] ADD  CONSTRAINT [DF_ProviderServiceType_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProviderType_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProviderType] ADD  CONSTRAINT [DF_ProviderType_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProviderType_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProviderType] ADD  CONSTRAINT [DF_ProviderType_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ProviderType_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ProviderType] ADD  CONSTRAINT [DF_ProviderType_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Region_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [DF_Region_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Region_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [DF_Region_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Region_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [DF_Region_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Registrations_AdminUser]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Registration] ADD  CONSTRAINT [DF_Registrations_AdminUser]  DEFAULT ((0)) FOR [AdminUser]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Registrations_Active_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Registration] ADD  CONSTRAINT [DF_Registrations_Active_1]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Registrations_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Registration] ADD  CONSTRAINT [DF_Registrations_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Registrations_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Registration] ADD  CONSTRAINT [DF_Registrations_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Seat_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Seat] ADD  CONSTRAINT [DF_Seat_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Seat_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Seat] ADD  CONSTRAINT [DF_Seat_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Seat_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Seat] ADD  CONSTRAINT [DF_Seat_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Series_Active1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Series] ADD  CONSTRAINT [DF_Series_Active1]  DEFAULT ((1)) FOR [Image]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Series_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Series] ADD  CONSTRAINT [DF_Series_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Series_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Series] ADD  CONSTRAINT [DF_Series_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Series_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Series] ADD  CONSTRAINT [DF_Series_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServiceType_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServiceType] ADD  CONSTRAINT [DF_ServiceType_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServiceType_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServiceType] ADD  CONSTRAINT [DF_ServiceType_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ServiceType_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ServiceType] ADD  CONSTRAINT [DF_ServiceType_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Side_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Side] ADD  CONSTRAINT [DF_Side_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Side_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Side] ADD  CONSTRAINT [DF_Side_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Side_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Side] ADD  CONSTRAINT [DF_Side_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_State_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF_State_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_State_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF_State_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_State_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF_State_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Subscriber_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Subscriber] ADD  CONSTRAINT [DF_Subscriber_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Subscriber_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Subscriber] ADD  CONSTRAINT [DF_Subscriber_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Subscriber_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Subscriber] ADD  CONSTRAINT [DF_Subscriber_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Suburb_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Suburb] ADD  CONSTRAINT [DF_Suburb_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Suburb_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Suburb] ADD  CONSTRAINT [DF_Suburb_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Suburb_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Suburb] ADD  CONSTRAINT [DF_Suburb_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Testimonial_Approved]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Testimonial] ADD  CONSTRAINT [DF_Testimonial_Approved]  DEFAULT ((1)) FOR [Approved]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Towing_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Towing] ADD  CONSTRAINT [DF_Towing_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Towing_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Towing] ADD  CONSTRAINT [DF_Towing_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Towing_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Towing] ADD  CONSTRAINT [DF_Towing_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Transmission_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transmission] ADD  CONSTRAINT [DF_Transmission_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Transmission_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transmission] ADD  CONSTRAINT [DF_Transmission_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Transmission_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transmission] ADD  CONSTRAINT [DF_Transmission_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Vehicle_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF_Vehicle_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Vehicle_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF_Vehicle_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Vehicle_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF_Vehicle_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListing_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListing] ADD  CONSTRAINT [DF_VehicleListing_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListing_Approved]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListing] ADD  CONSTRAINT [DF_VehicleListing_Approved]  DEFAULT ((0)) FOR [Approved]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListing_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListing] ADD  CONSTRAINT [DF_VehicleListing_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListing_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListing] ADD  CONSTRAINT [DF_VehicleListing_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListing_Archive_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListing_Archive] ADD  CONSTRAINT [DF_VehicleListing_Archive_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListing_Archive_Approved]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListing_Archive] ADD  CONSTRAINT [DF_VehicleListing_Archive_Approved]  DEFAULT ((0)) FOR [Approved]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListing_Archive_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListing_Archive] ADD  CONSTRAINT [DF_VehicleListing_Archive_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListing_Archive_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListing_Archive] ADD  CONSTRAINT [DF_VehicleListing_Archive_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingApproval_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingApproval] ADD  CONSTRAINT [DF_VehicleListingApproval_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingApproval_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingApproval] ADD  CONSTRAINT [DF_VehicleListingApproval_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingApproval_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingApproval] ADD  CONSTRAINT [DF_VehicleListingApproval_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingDealType_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingDealType] ADD  CONSTRAINT [DF_VehicleListingDealType_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingDealType_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingDealType] ADD  CONSTRAINT [DF_VehicleListingDealType_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingDealType_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingDealType] ADD  CONSTRAINT [DF_VehicleListingDealType_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingDealType_Archive_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingDealType_Archive] ADD  CONSTRAINT [DF_VehicleListingDealType_Archive_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingDealType_Archive_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingDealType_Archive] ADD  CONSTRAINT [DF_VehicleListingDealType_Archive_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingDealType_Archive_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingDealType_Archive] ADD  CONSTRAINT [DF_VehicleListingDealType_Archive_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingFeature_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingFeature] ADD  CONSTRAINT [DF_VehicleListingFeature_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingFeature_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingFeature] ADD  CONSTRAINT [DF_VehicleListingFeature_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingFeature_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingFeature] ADD  CONSTRAINT [DF_VehicleListingFeature_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingFeature_Archive_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingFeature_Archive] ADD  CONSTRAINT [DF_VehicleListingFeature_Archive_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingFeature_Archive_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingFeature_Archive] ADD  CONSTRAINT [DF_VehicleListingFeature_Archive_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingFeature_Archive_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingFeature_Archive] ADD  CONSTRAINT [DF_VehicleListingFeature_Archive_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingImage_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingImage] ADD  CONSTRAINT [DF_VehicleListingImage_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingImage_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingImage] ADD  CONSTRAINT [DF_VehicleListingImage_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingImage_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingImage] ADD  CONSTRAINT [DF_VehicleListingImage_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingImage_Archive_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingImage_Archive] ADD  CONSTRAINT [DF_VehicleListingImage_Archive_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingImage_Archive_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingImage_Archive] ADD  CONSTRAINT [DF_VehicleListingImage_Archive_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_VehicleListingImage_Archive_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VehicleListingImage_Archive] ADD  CONSTRAINT [DF_VehicleListingImage_Archive_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_WheelBase_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WheelBase] ADD  CONSTRAINT [DF_WheelBase_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_WheelBase_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WheelBase] ADD  CONSTRAINT [DF_WheelBase_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_WheelBase_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[WheelBase] ADD  CONSTRAINT [DF_WheelBase_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Rack_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Wreck] ADD  CONSTRAINT [DF_Rack_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Rack_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Wreck] ADD  CONSTRAINT [DF_Rack_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Rack_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Wreck] ADD  CONSTRAINT [DF_Rack_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Year_Active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Year] ADD  CONSTRAINT [DF_Year_Active]  DEFAULT ((1)) FOR [Active]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Year_CreatedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Year] ADD  CONSTRAINT [DF_Year_CreatedDateTime]  DEFAULT (getdate()) FOR [CreatedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Year_LastModifiedDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Year] ADD  CONSTRAINT [DF_Year_LastModifiedDateTime]  DEFAULT (getdate()) FOR [LastModifiedDateTime]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetails_OrderHeader]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeader] FOREIGN KEY([OrderHeaderID])
REFERENCES [dbo].[OrderHeader] ([OrderHeaderID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetails_OrderHeader]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeader]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderDetails_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderDetails]'))
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Product]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderHeader_OrderStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderHeader]'))
ALTER TABLE [dbo].[OrderHeader]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeader_OrderStatus] FOREIGN KEY([OrderStatusID])
REFERENCES [dbo].[OrderStatus] ([OrderStatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OrderHeader_OrderStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[OrderHeader]'))
ALTER TABLE [dbo].[OrderHeader] CHECK CONSTRAINT [FK_OrderHeader_OrderStatus]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Part_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Part]'))
ALTER TABLE [dbo].[Part]  WITH CHECK ADD  CONSTRAINT [FK_Part_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Part_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Part]'))
ALTER TABLE [dbo].[Part] CHECK CONSTRAINT [FK_Part_Category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PartFeature_PartFeature]') AND parent_object_id = OBJECT_ID(N'[dbo].[PartFeature]'))
ALTER TABLE [dbo].[PartFeature]  WITH CHECK ADD  CONSTRAINT [FK_PartFeature_PartFeature] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PartFeature_PartFeature]') AND parent_object_id = OBJECT_ID(N'[dbo].[PartFeature]'))
ALTER TABLE [dbo].[PartFeature] CHECK CONSTRAINT [FK_PartFeature_PartFeature]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PartFeature_PartFeature1]') AND parent_object_id = OBJECT_ID(N'[dbo].[PartFeature]'))
ALTER TABLE [dbo].[PartFeature]  WITH CHECK ADD  CONSTRAINT [FK_PartFeature_PartFeature1] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Feature] ([FeatureID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PartFeature_PartFeature1]') AND parent_object_id = OBJECT_ID(N'[dbo].[PartFeature]'))
ALTER TABLE [dbo].[PartFeature] CHECK CONSTRAINT [FK_PartFeature_PartFeature1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PartPhoto_Part]') AND parent_object_id = OBJECT_ID(N'[dbo].[PartPhoto]'))
ALTER TABLE [dbo].[PartPhoto]  WITH CHECK ADD  CONSTRAINT [FK_PartPhoto_Part] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PartPhoto_Part]') AND parent_object_id = OBJECT_ID(N'[dbo].[PartPhoto]'))
ALTER TABLE [dbo].[PartPhoto] CHECK CONSTRAINT [FK_PartPhoto_Part]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Part]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Part] FOREIGN KEY([PartID])
REFERENCES [dbo].[Part] ([PartID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Part]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Part]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Wreck]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Wreck] FOREIGN KEY([WreckID])
REFERENCES [dbo].[Wreck] ([WreckID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Product_Wreck]') AND parent_object_id = OBJECT_ID(N'[dbo].[Product]'))
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Wreck]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductPrice_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductPrice]'))
ALTER TABLE [dbo].[ProductPrice]  WITH CHECK ADD  CONSTRAINT [FK_ProductPrice_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProductPrice_Product]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProductPrice]'))
ALTER TABLE [dbo].[ProductPrice] CHECK CONSTRAINT [FK_ProductPrice_Product]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkShopCategory_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Provider_ProviderType]'))
ALTER TABLE [dbo].[Provider_ProviderType]  WITH CHECK ADD  CONSTRAINT [FK_WorkShopCategory_Category] FOREIGN KEY([ProviderTypeID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkShopCategory_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Provider_ProviderType]'))
ALTER TABLE [dbo].[Provider_ProviderType] CHECK CONSTRAINT [FK_WorkShopCategory_Category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkShopCategory_WorkShop]') AND parent_object_id = OBJECT_ID(N'[dbo].[Provider_ProviderType]'))
ALTER TABLE [dbo].[Provider_ProviderType]  WITH CHECK ADD  CONSTRAINT [FK_WorkShopCategory_WorkShop] FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_WorkShopCategory_WorkShop]') AND parent_object_id = OBJECT_ID(N'[dbo].[Provider_ProviderType]'))
ALTER TABLE [dbo].[Provider_ProviderType] CHECK CONSTRAINT [FK_WorkShopCategory_WorkShop]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProviderPhoto_Provider]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProviderPhoto]'))
ALTER TABLE [dbo].[ProviderPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ProviderPhoto_Provider] FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProviderPhoto_Provider]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProviderPhoto]'))
ALTER TABLE [dbo].[ProviderPhoto] CHECK CONSTRAINT [FK_ProviderPhoto_Provider]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProviderServiceType_Provider]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProviderServiceType]'))
ALTER TABLE [dbo].[ProviderServiceType]  WITH CHECK ADD  CONSTRAINT [FK_ProviderServiceType_Provider] FOREIGN KEY([ProviderID])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProviderServiceType_Provider]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProviderServiceType]'))
ALTER TABLE [dbo].[ProviderServiceType] CHECK CONSTRAINT [FK_ProviderServiceType_Provider]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProviderServiceType_ServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProviderServiceType]'))
ALTER TABLE [dbo].[ProviderServiceType]  WITH CHECK ADD  CONSTRAINT [FK_ProviderServiceType_ServiceType] FOREIGN KEY([ServiceTypeID])
REFERENCES [dbo].[ServiceType] ([ServiceTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProviderServiceType_ServiceType]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProviderServiceType]'))
ALTER TABLE [dbo].[ProviderServiceType] CHECK CONSTRAINT [FK_ProviderServiceType_ServiceType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Region_State]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([StateID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Region_State]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_State]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Suburb_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Suburb]'))
ALTER TABLE [dbo].[Suburb]  WITH CHECK ADD  CONSTRAINT [FK_Suburb_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([RegionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Suburb_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Suburb]'))
ALTER TABLE [dbo].[Suburb] CHECK CONSTRAINT [FK_Suburb_Region]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vehicle_Badge]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vehicle]'))
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Badge] FOREIGN KEY([BadgeID])
REFERENCES [dbo].[Badge] ([BadgeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vehicle_Badge]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vehicle]'))
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Badge]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vehicle_Make]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vehicle]'))
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Make] FOREIGN KEY([MakeID])
REFERENCES [dbo].[Make] ([MakeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vehicle_Make]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vehicle]'))
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Make]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vehicle_Model]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vehicle]'))
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ModelID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vehicle_Model]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vehicle]'))
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Model]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vehicle_Vehicle]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vehicle]'))
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Vehicle] FOREIGN KEY([SeriesID])
REFERENCES [dbo].[Series] ([SeriesID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Vehicle_Vehicle]') AND parent_object_id = OBJECT_ID(N'[dbo].[Vehicle]'))
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Vehicle]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_AncapRating]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_AncapRating] FOREIGN KEY([AncapRatingID])
REFERENCES [dbo].[AncapRating] ([AncapRatingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_AncapRating]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_AncapRating]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_AncapRating1]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_AncapRating1] FOREIGN KEY([AncapRatingID])
REFERENCES [dbo].[AncapRating] ([AncapRatingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_AncapRating1]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_AncapRating1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_BodyType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_BodyType] FOREIGN KEY([BodyTypeID])
REFERENCES [dbo].[BodyType] ([BodyTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_BodyType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_BodyType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Colour]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Colour] FOREIGN KEY([ColourID])
REFERENCES [dbo].[Colour] ([ColourID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Colour]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Colour]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Colour1]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Colour1] FOREIGN KEY([ColourID])
REFERENCES [dbo].[Colour] ([ColourID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Colour1]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Colour1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Condition]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Condition] FOREIGN KEY([ConditionID])
REFERENCES [dbo].[Condition] ([ConditionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Condition]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Condition]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Cylinder]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Cylinder] FOREIGN KEY([CylinderID])
REFERENCES [dbo].[Cylinder] ([CylinderID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Cylinder]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Cylinder]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Door]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Door] FOREIGN KEY([DoorID])
REFERENCES [dbo].[Door] ([DoorID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Door]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Door]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_DriveType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_DriveType] FOREIGN KEY([DriveTypeID])
REFERENCES [dbo].[DriveType] ([DriveTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_DriveType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_DriveType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_EngineSize]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_EngineSize] FOREIGN KEY([EngineSizeID])
REFERENCES [dbo].[EngineSize] ([EngineSizeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_EngineSize]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_EngineSize]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_FuelType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_FuelType] FOREIGN KEY([FuelTypeID])
REFERENCES [dbo].[FuelType] ([FuelTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_FuelType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_FuelType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_GreenRating]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_GreenRating] FOREIGN KEY([GreenRatingID])
REFERENCES [dbo].[GreenRating] ([GreenRatingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_GreenRating]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_GreenRating]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Induction]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Induction] FOREIGN KEY([InductionID])
REFERENCES [dbo].[Induction] ([InductionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Induction]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Induction]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Power]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Power] FOREIGN KEY([PowerID])
REFERENCES [dbo].[Power] ([PowerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Power]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Power]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_PPlateApprove]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_PPlateApprove] FOREIGN KEY([PPlateApproveID])
REFERENCES [dbo].[PPlateApprove] ([PPlateApproveID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_PPlateApprove]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_PPlateApprove]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Seat]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Seat] FOREIGN KEY([SeatID])
REFERENCES [dbo].[Seat] ([SeatID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Seat]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Seat]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Suburb]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Suburb] FOREIGN KEY([SuburbID])
REFERENCES [dbo].[Suburb] ([SuburbID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Suburb]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Suburb]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Towing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Towing] FOREIGN KEY([TowingID])
REFERENCES [dbo].[Towing] ([TowingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Towing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Towing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Transmission]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Transmission] FOREIGN KEY([TransmissionID])
REFERENCES [dbo].[Transmission] ([TransmissionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Transmission]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Transmission]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_VehicleListing] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicle] ([VehicleID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_VehicleListing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Year]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Year] FOREIGN KEY([YearID])
REFERENCES [dbo].[Year] ([YearID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Year]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing]'))
ALTER TABLE [dbo].[VehicleListing] CHECK CONSTRAINT [FK_VehicleListing_Year]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_AncapRating]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_AncapRating] FOREIGN KEY([AncapRatingID])
REFERENCES [dbo].[AncapRating] ([AncapRatingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_AncapRating]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_AncapRating]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_AncapRating1]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_AncapRating1] FOREIGN KEY([AncapRatingID])
REFERENCES [dbo].[AncapRating] ([AncapRatingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_AncapRating1]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_AncapRating1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_BodyType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_BodyType] FOREIGN KEY([BodyTypeID])
REFERENCES [dbo].[BodyType] ([BodyTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_BodyType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_BodyType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Colour]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Colour] FOREIGN KEY([ColourID])
REFERENCES [dbo].[Colour] ([ColourID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Colour]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Colour]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Colour1]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Colour1] FOREIGN KEY([ColourID])
REFERENCES [dbo].[Colour] ([ColourID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Colour1]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Colour1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Condition]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Condition] FOREIGN KEY([ConditionID])
REFERENCES [dbo].[Condition] ([ConditionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Condition]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Condition]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Cylinder]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Cylinder] FOREIGN KEY([CylinderID])
REFERENCES [dbo].[Cylinder] ([CylinderID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Cylinder]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Cylinder]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Door]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Door] FOREIGN KEY([DoorID])
REFERENCES [dbo].[Door] ([DoorID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Door]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Door]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_DriveType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_DriveType] FOREIGN KEY([DriveTypeID])
REFERENCES [dbo].[DriveType] ([DriveTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_DriveType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_DriveType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_EngineSize]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_EngineSize] FOREIGN KEY([EngineSizeID])
REFERENCES [dbo].[EngineSize] ([EngineSizeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_EngineSize]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_EngineSize]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_FuelType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_FuelType] FOREIGN KEY([FuelTypeID])
REFERENCES [dbo].[FuelType] ([FuelTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_FuelType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_FuelType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_GreenRating]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_GreenRating] FOREIGN KEY([GreenRatingID])
REFERENCES [dbo].[GreenRating] ([GreenRatingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_GreenRating]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_GreenRating]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Induction]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Induction] FOREIGN KEY([InductionID])
REFERENCES [dbo].[Induction] ([InductionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Induction]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Induction]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Power]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Power] FOREIGN KEY([PowerID])
REFERENCES [dbo].[Power] ([PowerID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Power]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Power]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_PPlateApprove]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_PPlateApprove] FOREIGN KEY([PPlateApproveID])
REFERENCES [dbo].[PPlateApprove] ([PPlateApproveID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_PPlateApprove]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_PPlateApprove]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Seat]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Seat] FOREIGN KEY([SeatID])
REFERENCES [dbo].[Seat] ([SeatID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Seat]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Seat]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Suburb]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Suburb] FOREIGN KEY([SuburbID])
REFERENCES [dbo].[Suburb] ([SuburbID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Suburb]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Suburb]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Towing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Towing] FOREIGN KEY([TowingID])
REFERENCES [dbo].[Towing] ([TowingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Towing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Towing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Transmission]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Transmission] FOREIGN KEY([TransmissionID])
REFERENCES [dbo].[Transmission] ([TransmissionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Transmission]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Transmission]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_VehicleListing] FOREIGN KEY([VehicleListing_ArchiveID])
REFERENCES [dbo].[VehicleListing] ([VehicleListingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_VehicleListing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_VehicleListing_Archive]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_VehicleListing_Archive] FOREIGN KEY([VehicleListing_ArchiveID])
REFERENCES [dbo].[VehicleListing_Archive] ([VehicleListing_ArchiveID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_VehicleListing_Archive]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_VehicleListing_Archive]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Year]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListing_Archive_Year] FOREIGN KEY([YearID])
REFERENCES [dbo].[Year] ([YearID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListing_Archive_Year]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListing_Archive]'))
ALTER TABLE [dbo].[VehicleListing_Archive] CHECK CONSTRAINT [FK_VehicleListing_Archive_Year]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingApproval_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingApproval]'))
ALTER TABLE [dbo].[VehicleListingApproval]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListingApproval_VehicleListing] FOREIGN KEY([VehicleListingID])
REFERENCES [dbo].[VehicleListing] ([VehicleListingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingApproval_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingApproval]'))
ALTER TABLE [dbo].[VehicleListingApproval] CHECK CONSTRAINT [FK_VehicleListingApproval_VehicleListing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingDealType_DealType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingDealType]'))
ALTER TABLE [dbo].[VehicleListingDealType]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListingDealType_DealType] FOREIGN KEY([DealTypeID])
REFERENCES [dbo].[DealType] ([DealTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingDealType_DealType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingDealType]'))
ALTER TABLE [dbo].[VehicleListingDealType] CHECK CONSTRAINT [FK_VehicleListingDealType_DealType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingDealType_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingDealType]'))
ALTER TABLE [dbo].[VehicleListingDealType]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListingDealType_VehicleListing] FOREIGN KEY([VehicleListingID])
REFERENCES [dbo].[VehicleListing] ([VehicleListingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingDealType_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingDealType]'))
ALTER TABLE [dbo].[VehicleListingDealType] CHECK CONSTRAINT [FK_VehicleListingDealType_VehicleListing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingDealType_Archive_DealType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingDealType_Archive]'))
ALTER TABLE [dbo].[VehicleListingDealType_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListingDealType_Archive_DealType] FOREIGN KEY([DealTypeID])
REFERENCES [dbo].[DealType] ([DealTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingDealType_Archive_DealType]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingDealType_Archive]'))
ALTER TABLE [dbo].[VehicleListingDealType_Archive] CHECK CONSTRAINT [FK_VehicleListingDealType_Archive_DealType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingDealType_Archive_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingDealType_Archive]'))
ALTER TABLE [dbo].[VehicleListingDealType_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListingDealType_Archive_VehicleListing] FOREIGN KEY([VehicleListingID])
REFERENCES [dbo].[VehicleListing] ([VehicleListingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingDealType_Archive_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingDealType_Archive]'))
ALTER TABLE [dbo].[VehicleListingDealType_Archive] CHECK CONSTRAINT [FK_VehicleListingDealType_Archive_VehicleListing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingFeature_Feature]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingFeature]'))
ALTER TABLE [dbo].[VehicleListingFeature]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListingFeature_Feature] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Feature] ([FeatureID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingFeature_Feature]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingFeature]'))
ALTER TABLE [dbo].[VehicleListingFeature] CHECK CONSTRAINT [FK_VehicleListingFeature_Feature]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingFeature_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingFeature]'))
ALTER TABLE [dbo].[VehicleListingFeature]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListingFeature_VehicleListing] FOREIGN KEY([VehicleListingID])
REFERENCES [dbo].[VehicleListing] ([VehicleListingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingFeature_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingFeature]'))
ALTER TABLE [dbo].[VehicleListingFeature] CHECK CONSTRAINT [FK_VehicleListingFeature_VehicleListing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingFeature_Archive_Feature]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingFeature_Archive]'))
ALTER TABLE [dbo].[VehicleListingFeature_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListingFeature_Archive_Feature] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Feature] ([FeatureID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingFeature_Archive_Feature]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingFeature_Archive]'))
ALTER TABLE [dbo].[VehicleListingFeature_Archive] CHECK CONSTRAINT [FK_VehicleListingFeature_Archive_Feature]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingFeature_Archive_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingFeature_Archive]'))
ALTER TABLE [dbo].[VehicleListingFeature_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListingFeature_Archive_VehicleListing] FOREIGN KEY([VehicleListingID])
REFERENCES [dbo].[VehicleListing] ([VehicleListingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingFeature_Archive_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingFeature_Archive]'))
ALTER TABLE [dbo].[VehicleListingFeature_Archive] CHECK CONSTRAINT [FK_VehicleListingFeature_Archive_VehicleListing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingImage_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingImage]'))
ALTER TABLE [dbo].[VehicleListingImage]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListingImage_VehicleListing] FOREIGN KEY([VehicleListingID])
REFERENCES [dbo].[VehicleListing] ([VehicleListingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingImage_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingImage]'))
ALTER TABLE [dbo].[VehicleListingImage] CHECK CONSTRAINT [FK_VehicleListingImage_VehicleListing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingImage_Archive_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingImage_Archive]'))
ALTER TABLE [dbo].[VehicleListingImage_Archive]  WITH CHECK ADD  CONSTRAINT [FK_VehicleListingImage_Archive_VehicleListing] FOREIGN KEY([VehicleListingID])
REFERENCES [dbo].[VehicleListing] ([VehicleListingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_VehicleListingImage_Archive_VehicleListing]') AND parent_object_id = OBJECT_ID(N'[dbo].[VehicleListingImage_Archive]'))
ALTER TABLE [dbo].[VehicleListingImage_Archive] CHECK CONSTRAINT [FK_VehicleListingImage_Archive_VehicleListing]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_BodyType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck]  WITH CHECK ADD  CONSTRAINT [FK_Wreck_BodyType] FOREIGN KEY([BodyTypeID])
REFERENCES [dbo].[BodyType] ([BodyTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_BodyType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck] CHECK CONSTRAINT [FK_Wreck_BodyType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_CCRating]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck]  WITH CHECK ADD  CONSTRAINT [FK_Wreck_CCRating] FOREIGN KEY([CCRatingID])
REFERENCES [dbo].[CCRating] ([CCRatingID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_CCRating]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck] CHECK CONSTRAINT [FK_Wreck_CCRating]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_Chassis]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck]  WITH CHECK ADD  CONSTRAINT [FK_Wreck_Chassis] FOREIGN KEY([ChassisID])
REFERENCES [dbo].[Chassis] ([ChassisID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_Chassis]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck] CHECK CONSTRAINT [FK_Wreck_Chassis]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_Engine]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck]  WITH CHECK ADD  CONSTRAINT [FK_Wreck_Engine] FOREIGN KEY([EngineID])
REFERENCES [dbo].[Engine] ([EngineID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_Engine]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck] CHECK CONSTRAINT [FK_Wreck_Engine]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_EngineSize]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck]  WITH CHECK ADD  CONSTRAINT [FK_Wreck_EngineSize] FOREIGN KEY([EngineSizeID])
REFERENCES [dbo].[EngineSize] ([EngineSizeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_EngineSize]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck] CHECK CONSTRAINT [FK_Wreck_EngineSize]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_FuelType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck]  WITH CHECK ADD  CONSTRAINT [FK_Wreck_FuelType] FOREIGN KEY([FuelTypeID])
REFERENCES [dbo].[FuelType] ([FuelTypeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_FuelType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck] CHECK CONSTRAINT [FK_Wreck_FuelType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_Make]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck]  WITH CHECK ADD  CONSTRAINT [FK_Wreck_Make] FOREIGN KEY([MakeID])
REFERENCES [dbo].[Make] ([MakeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_Make]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck] CHECK CONSTRAINT [FK_Wreck_Make]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_Model]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck]  WITH CHECK ADD  CONSTRAINT [FK_Wreck_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[Model] ([ModelID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_Model]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck] CHECK CONSTRAINT [FK_Wreck_Model]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_WheelBase]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck]  WITH CHECK ADD  CONSTRAINT [FK_Wreck_WheelBase] FOREIGN KEY([WheelBaseID])
REFERENCES [dbo].[WheelBase] ([WheelBaseID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_WheelBase]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck] CHECK CONSTRAINT [FK_Wreck_WheelBase]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_Year]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck]  WITH CHECK ADD  CONSTRAINT [FK_Wreck_Year] FOREIGN KEY([YearID])
REFERENCES [dbo].[Year] ([YearID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Wreck_Year]') AND parent_object_id = OBJECT_ID(N'[dbo].[Wreck]'))
ALTER TABLE [dbo].[Wreck] CHECK CONSTRAINT [FK_Wreck_Year]
GO
