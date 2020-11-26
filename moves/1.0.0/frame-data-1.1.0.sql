USE [FrameData]
GO
/****** Object:  Table [dbo].[CharacterMiscInfo]    Script Date: 11/26/2020 7:00:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterMiscInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Discord] [nvarchar](max) NULL,
	[MeleeFrameData] [nvarchar](max) NULL,
	[SsbWiki] [nvarchar](max) NULL,
 CONSTRAINT [PK_CharacterMiscInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Characters]    Script Date: 11/26/2020 7:00:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Characters](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[FightCoreId] [bigint] NOT NULL,
	[CharacterStatisticsId] [bigint] NULL,
	[CharacterInfoId] [bigint] NULL,
 CONSTRAINT [PK_Characters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CharacterStatistics]    Script Date: 11/26/2020 7:00:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterStatistics](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Weight] [int] NOT NULL,
	[Gravity] [float] NOT NULL,
	[WalkSpeed] [float] NOT NULL,
	[RunSpeed] [float] NOT NULL,
	[WaveDashLengthRank] [int] NOT NULL,
	[PLAIntangibilityFrames] [int] NOT NULL,
	[JumpSquat] [int] NOT NULL,
	[CanWallJump] [bit] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[DashFrames] [int] NOT NULL,
	[InitialDash] [float] NOT NULL,
	[WaveDashLength] [float] NOT NULL,
 CONSTRAINT [PK_CharacterStatistics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hitbox]    Script Date: 11/26/2020 7:00:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hitbox](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Damage] [bigint] NOT NULL,
	[Angle] [bigint] NOT NULL,
	[KnockbackGrowth] [bigint] NOT NULL,
	[SetKnockback] [bigint] NOT NULL,
	[BaseKnockback] [bigint] NOT NULL,
	[Effect] [nvarchar](max) NULL,
	[HitlagAttacker] [int] NOT NULL,
	[HitlagDefender] [int] NOT NULL,
	[Shieldstun] [int] NOT NULL,
	[MoveId] [bigint] NULL,
 CONSTRAINT [PK_Hitbox] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Move]    Script Date: 11/26/2020 7:00:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Move](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[LandLag] [int] NULL,
	[LCanceledLandLag] [int] NULL,
	[TotalFrames] [int] NOT NULL,
	[IASA] [int] NULL,
	[AutoCancelBefore] [int] NULL,
	[AutoCancelAfter] [int] NULL,
	[CharacterId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[End] [int] NULL,
	[Notes] [nvarchar](max) NULL,
	[Percent] [int] NULL,
	[Start] [int] NULL,
	[Source] [nvarchar](max) NULL,
 CONSTRAINT [PK_Move] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CharacterMiscInfo] ON 
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (1, N'https://discord.com/invite/DEY5p65', N'http://meleeframedata.com/captain_falcon', N'https://www.ssbwiki.com/Captain_Falcon_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (2, N'https://discord.com/invite/0qT5OfmhEdgeH20c', N'http://meleeframedata.com/roy', N'https://www.ssbwiki.com/Roy_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (3, N'https://discord.com/invite/bzD5Pfc', N'http://meleeframedata.com/pichu', N'https://www.ssbwiki.com/Pichu_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (4, N'https://discord.com/invite/011MSaTVv85q69DV5', N'http://meleeframedata.com/ness', N'https://www.ssbwiki.com/Ness_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (5, N'https://discord.com/invite/011LmbPc0LSeiNS0V', N'http://meleeframedata.com/mr._game_&_watch', N'https://www.ssbwiki.com/Mr._Game_%26_Watch_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (6, N'https://discord.com/invite/5cS8eeT', N'http://meleeframedata.com/mewtwo', N'https://www.ssbwiki.com/Mewtwo_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (7, N'https://discord.com/invite/4jpjZkB', N'http://meleeframedata.com/bowser', N'https://www.ssbwiki.com/Bowser_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (8, N'https://discord.com/invite/0zC5RdmtMzsdCMDj', N'http://meleeframedata.com/link', N'https://www.ssbwiki.com/Link_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (9, N'https://discord.com/invite/0iihTeNw0FN9vBSo', N'http://meleeframedata.com/kirby', N'https://www.ssbwiki.com/Kirby_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (10, N'https://discord.com/invite/0ylqBnK8H2MJ4NlY', N'http://meleeframedata.com/ganondorf', N'https://www.ssbwiki.com/Ganondorf_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (11, N'https://discord.com/invite/VaF5sUd', N'http://meleeframedata.com/donkey_kong', N'https://www.ssbwiki.com/Donkey_Kong_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (12, N'https://discord.com/invite/011DBAILLCrymRCgS', N'http://meleeframedata.com/mario', N'https://www.ssbwiki.com/Mario_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (13, N'https://discord.com/invite/0w4Z5Y1vxgiJt6sd', N'http://meleeframedata.com/dr._mario', N'https://www.ssbwiki.com/Dr._Mario_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (14, N'https://discord.com/invite/0xLggx3U7EICyMm5', N'http://meleeframedata.com/luigi', N'https://www.ssbwiki.com/Luigi_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (15, N'https://discord.com/invite/0vWHh31xabrT8h7H', N'http://meleeframedata.com/yoshi', N'https://www.ssbwiki.com/Yoshi_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (16, N'https://discord.com/invite/0uiUkioTeExTGw9f', N'http://meleeframedata.com/ice_climbers', N'https://www.ssbwiki.com/Ice_Climbers_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (17, N'https://discord.com/invite/011MkPNW8vetImT1W', N'http://meleeframedata.com/pikachu', N'https://www.ssbwiki.com/Pikachu_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (18, N'https://discord.com/invite/aKkhbcr', N'http://meleeframedata.com/peach', N'https://www.ssbwiki.com/Peach_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (19, N'https://discord.com/invite/tkwQs8v', N'http://meleeframedata.com/samus', N'https://www.ssbwiki.com/Sheik_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (20, N'https://discord.com/invite/M3nS3kR', N'http://meleeframedata.com/samus', N'https://www.ssbwiki.com/Samus_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (21, N'https://discord.com/invite/0x4uq2ABzu6gnICT', N'http://meleeframedata.com/jigglypuff', N'https://www.ssbwiki.com/Jigglypuff_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (22, N'https://discord.com/invite/01352PHCHms6PyCv9', N'http://meleeframedata.com/marth', N'https://www.ssbwiki.com/Marth_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (23, N'https://discord.com/invite/9rp6qNR', N'http://meleeframedata.com/fox', N'https://www.ssbwiki.com/Fox_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (24, N'https://discord.com/invite/HUxvTdy', N'http://meleeframedata.com/falco', N'https://www.ssbwiki.com/Falco_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (25, N'https://discord.com/invite/0uRZflcDyAOMeAPK', N'http://meleeframedata.com/young_link', N'https://www.ssbwiki.com/Young_Link_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (26, N'https://discord.com/invite/0cfhZQyx53mAuwty', N'http://meleeframedata.com/zelda', N'https://www.ssbwiki.com/Zelda_(SSBM)')
GO
INSERT [dbo].[CharacterMiscInfo] ([Id], [Discord], [MeleeFrameData], [SsbWiki]) VALUES (27, N'https://discord.gg/VT3H5PN', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CharacterMiscInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[Characters] ON 
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (27, N'Captain Falcon', N'captainfalcon', 227, 27, 1)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (28, N'Roy', N'roy', 223, 28, 2)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (29, N'Pichu', N'pichu', 221, 29, 3)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (30, N'Ness', N'ness', 243, 30, 4)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (31, N'Mr. Game & Watch', N'mrgame&watch', 219, 31, 5)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (32, N'Mewtwo', N'mewtwo', 217, 32, 6)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (33, N'Link', N'link', 238, 33, 8)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (34, N'Bowser', N'bowser', 241, 34, 7)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (35, N'Kirby', N'kirby', 210, 35, 9)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (36, N'Ganondorf', N'ganondorf', 216, 36, 10)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (37, N'Donkey Kong', N'donkeykong', 242, 37, 11)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (38, N'Mario', N'mario', 236, 38, 12)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (39, N'Dr. Mario', N'drmario', 215, 39, 13)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (40, N'Luigi', N'luigi', 213, 40, 14)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (41, N'Yoshi', N'yoshi', 211, 41, 15)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (42, N'Ice Climbers', N'iceclimbers', 209, 42, 16)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (43, N'Pikachu', N'pikachu', 237, 43, 17)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (44, N'Peach', N'peach', 240, 44, 18)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (45, N'Sheik', N'sheik', 260, 45, 19)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (46, N'Samus', N'samus', 212, 46, 20)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (47, N'Jigglypuff', N'jigglypuff', 214, 47, 21)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (48, N'Marth', N'marth', 222, 48, 22)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (49, N'Fox', N'fox', 224, 49, 23)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (50, N'Falco', N'falco', 218, 50, 24)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (51, N'Young Link', N'younglink', 220, 51, 25)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (52, N'Zelda', N'zelda', 239, 52, 26)
GO
INSERT [dbo].[Characters] ([Id], [Name], [NormalizedName], [FightCoreId], [CharacterStatisticsId], [CharacterInfoId]) VALUES (53, N'Female Wireframe', N'fwireframe', 0, 53, 27)
GO
SET IDENTITY_INSERT [dbo].[Characters] OFF
GO
SET IDENTITY_INSERT [dbo].[CharacterStatistics] ON 
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (27, 104, 2.9, 0.85, 2.3, 20, 10, 4, 1, N'', 15, 2.16, 27.3)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (28, 85, 2.4, 1.2, 1.61, 6, 5, 5, 0, N'', 15, 1.47, 38.97)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (29, 55, 1.9, 1.24, 1.72, 22, 15, 3, 1, N'', 13, 1.72, 24.4)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (30, 94, 1.83, 0.84, 1.4, 11, 4, 4, 0, N'', 13, 1.39, 36.18)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (31, 60, 1.7, 1.1, 1.5, 7, 9, 4, 0, N'', 8, 1.5, 37.92)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (32, 85, 1.5, 1, 1.4, 3, 1, 5, 0, N'', 18, 1.4, 55.69)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (33, 104, 2.13, 1.2, 1.3, 24, 9, 6, 0, N'', 12, 1.3, 24.4)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (34, 117, 1.9, 0.65, 1.5, 13, 8, 8, 0, N'', 13, 1.06, 35.49)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (35, 70, 1.6, 0.85, 1.4, 20, 12, 3, 0, N'', 12, 1.4, 27.3)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (36, 109, 2, 0.73, 1.35, 16, 4, 6, 0, N'', 15, 1.35, 30.9)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (37, 114, 2.4, 1.2, 1.6, 17, 7, 5, 0, N'', 15, 1.6, 30.15)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (38, 100, 1.7, 1.1, 1.5, 7, 13, 4, 1, N'', 10, 1.5, 37.92)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (39, 100, 1.7, 1.1, 1.5, 7, 14, 4, 0, N'', 10, 1.5, 37.92)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (40, 100, 1.6, 1.1, 1.34, 1, 13, 4, 0, N'', 10, 1.34, 91.12)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (41, 108, 1.93, 1.15, 1.6, 5, 2, 5, 0, N'', 13, 1.43, 38.97)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (42, 88, 1.6, 0.95, 1.4, 2, 13, 3, 0, N'', 13, 1.4, 62.785)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (43, 80, 1.9, 1.24, 1.8, 19, 13, 3, 0, N'', 13, 1.8, 26.82)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (44, 90, 1.5, 0.85, 1.3, 25, 0, 5, 0, N'', 15, 1.3, 22.42)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (45, 90, 2.13, 1.2, 1.8, 18, 11, 3, 1, N'', 7, 1.8, 30.15)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (46, 110, 1.4, 1, 1.4, 10, 4, 3, 1, N'', 8, 1.8, 37.92)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (47, 60, 1.3, 0.7, 1.1, 23, 9, 5, 0, N'', 12, 1.31, 24.12)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (48, 87, 2.2, 1.6, 1.8, 4, 4, 4, 0, N'', 15, 1.56, 44.37)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (49, 75, 2.8, 1.6, 2.2, 12, 15, 3, 1, N'', 11, 2.02, 32.85)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (50, 80, 3.1, 1.4, 1.5, 14, 14, 5, 1, N'', 11, 1.82, 31.42)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (51, 85, 2.13, 1.2, 1.6, 15, 13, 4, 1, N'', 12, 1.72, 30.15)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (52, 90, 1.4, 0.7, 1.1, 25, 2, 6, 0, N'', 15, 1.1, 21.73)
GO
INSERT [dbo].[CharacterStatistics] ([Id], [Weight], [Gravity], [WalkSpeed], [RunSpeed], [WaveDashLengthRank], [PLAIntangibilityFrames], [JumpSquat], [CanWallJump], [Notes], [DashFrames], [InitialDash], [WaveDashLength]) VALUES (53, 0, 0, 0, 0, 0, 0, 0, 0, N'No data available yet', 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[CharacterStatistics] OFF
GO
SET IDENTITY_INSERT [dbo].[Hitbox] ON 
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1613, N'id0', 6, 361, 100, 0, 30, N'Normal', 0, 0, 0, 698)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1614, N'id1', 3, 270, 50, 0, 10, N'Normal', 0, 0, 0, 707)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1615, N'id0', 3, 361, 50, 0, 10, N'Normal', 0, 0, 0, 707)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1616, N'id0', 25, 361, 90, 0, 30, N'Flame', 0, 0, 0, 705)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1617, N'throw - id0', 5, 361, 100, 0, 10, N'Slash', 0, 0, 0, 704)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1618, N'dash_attack - id0', 13, 361, 70, 0, 35, N'Slash', 0, 0, 0, 704)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1619, N'fsmash - id0', 15, 361, 100, 0, 28, N'Slash', 0, 0, 0, 704)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1620, N'ftilt - id0', 11, 361, 100, 0, 15, N'Slash', 0, 0, 0, 704)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1621, N'jab - id0', 7, 361, 100, 0, 10, N'Slash', 0, 0, 0, 704)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1622, N'id0', 6, 361, 100, 0, 30, N'Normal', 0, 0, 0, 703)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1623, N'id0', 4, 70, 30, 0, 90, N'Flame', 0, 0, 0, 702)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1624, N'id0', 10, 90, 40, 0, 105, N'Normal', 0, 0, 0, 701)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1625, N'id0', 11, 135, 130, 0, 15, N'Normal', 0, 0, 0, 700)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1626, N'id0', 11, 45, 10, 0, 120, N'Normal', 0, 0, 0, 699)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1627, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 706)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1628, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 716)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1629, N'slow - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 716)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1630, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1802)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1631, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1802)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1632, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1801)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1633, N'explosion - id0', 16, 70, 40, 0, 80, N'Flame', 0, 0, 0, 715)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1634, N'smash_explosion - id0', 18, 55, 40, 0, 100, N'Flame', 0, 0, 0, 715)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1635, N'hit1 - id0', 5, 70, 100, 150, 0, N'Normal', 0, 0, 0, 708)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1636, N'hits2_6 - id0', 1, 74, 100, 120, 0, N'Normal', 0, 0, 0, 708)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1637, N'id2', 8, 75, 100, 0, 30, N'Normal', 0, 0, 10, 738)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1638, N'id0', 15, 90, 100, 0, 40, N'Normal', 0, 0, 10, 738)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1639, N'id1', 19, 90, 100, 0, 40, N'Normal', 0, 0, 10, 738)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1640, N'racket - id0', 12, 29, 35, 0, 75, N'Normal', 0, 0, 0, 737)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1641, N'pan - id0', 17, 80, 60, 0, 50, N'Normal', 0, 0, 0, 737)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1642, N'club - id0', 13, 45, 50, 0, 50, N'Normal', 0, 0, 0, 737)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1643, N'id3', 12, 270, 100, 0, 60, N'Normal', 0, 0, 7, 736)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1644, N'id2', 12, 270, 100, 0, 60, N'Normal', 0, 0, 7, 736)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1645, N'id1', 12, 80, 100, 0, 15, N'Normal', 0, 0, 7, 736)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1646, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1801)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1647, N'id0', 12, 270, 100, 0, 60, N'Normal', 0, 0, 7, 736)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1648, N'late - id0', 6, 90, 50, 0, 55, N'Normal', 0, 0, 7, 713)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1649, N'clean - id0', 13, 90, 85, 0, 35, N'Normal', 0, 0, 7, 713)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1650, N'hit2 - id0', 2, 361, 100, 0, 30, N'Normal', 0, 0, 2, 1516)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1651, N'hit1 - id0', 3, 74, 100, 20, 0, N'Normal', 0, 0, 3, 1515)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1652, N'id0', 3, 80, 50, 0, 80, N'Normal', 0, 0, 0, 711)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1653, N'hit2 - id0', 8, 80, 70, 0, 20, N'Normal', 0, 0, 7, 710)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1654, N'hit1 - id0', 12, 80, 70, 0, 70, N'Normal', 0, 0, 7, 710)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1655, N'id0', 2, 361, 60, 0, 25, N'Normal', 0, 0, 0, 709)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1656, N'hits7_11 - id0', 1, 72, 100, 60, 0, N'Normal', 0, 0, 0, 708)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1657, N'id0', 12, 80, 72, 0, 48, N'Normal', 0, 0, 7, 714)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1658, N'id0', 12, 270, 70, 0, 90, N'Normal', 0, 0, 7, 718)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1659, N'id0', 13, 85, 109, 0, 13, N'Normal', 0, 0, 7, 735)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1660, N'late - id0', 10, 361, 100, 0, 0, N'Normal', 0, 0, 9, 734)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1661, N'ang_up - id0', 12, 361, 100, 0, 12, N'Normal', 0, 0, 0, 1632)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1662, N'late - id0', 4, 100, 100, 0, 70, N'Electric', 0, 0, 4, 723)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1663, N'mid - id0', 4, 20, 70, 60, 0, N'Electric', 0, 0, 4, 723)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1664, N'clean - id0', 5, 0, 70, 60, 60, N'Electric', 0, 0, 4, 723)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1665, N'hit3 - id0', 4, 361, 100, 0, 16, N'Normal', 0, 0, 3, 1514)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1666, N'hit2 - id0', 2, 70, 50, 0, 8, N'Normal', 0, 0, 2, 1513)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1667, N'hit1 - id0', 3, 361, 50, 0, 8, N'Normal', 0, 0, 3, 1512)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1668, N'pillar_hits2_12 - id0', 2, 93, 50, 0, 24, N'Flame', 0, 0, 0, 721)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1669, N'pillar_hit1 - id0', 3, 90, 50, 0, 10, N'Flame', 0, 0, 0, 721)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1670, N'ang_side - id0', 11, 361, 100, 0, 12, N'Normal', 0, 0, 6, 724)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1671, N'shot - id0', 2, 80, 50, 0, 40, N'Flame', 0, 0, 0, 721)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1672, N'tail - id0', 1, 80, 40, 0, 4, N'Electric', 0, 0, 13, 719)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1673, N'head - id0', 8, 110, 50, 0, 70, N'Electric', 0, 0, 13, 719)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1674, N'id0', 5, 135, 50, 0, 65, N'Normal', 0, 0, 0, 758)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1675, N'id0', 4, 93, 130, 0, 60, N'Normal', 0, 0, 0, 779)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1676, N'id0', 4, 117, 60, 0, 70, N'Normal', 0, 0, 0, 780)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1677, N'id0', 4, 50, 45, 0, 70, N'Normal', 0, 0, 0, 781)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1678, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 840)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1679, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 839)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1680, N'slow - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 839)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1681, N'id0', 1, 70, 70, 0, 20, N'Electric', 0, 0, 0, 720)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1682, N'id3', 8, 75, 100, 0, 30, N'Normal', 0, 0, 10, 738)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1683, N'ang_down - id0', 10, 361, 100, 0, 12, N'Normal', 0, 0, 0, 1633)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1684, N'id1', 7, 96, 126, 0, 42, N'Normal', 0, 0, 5, 725)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1685, N'clean - id0', 16, 361, 100, 0, 16, N'Electric', 0, 0, 9, 734)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1686, N'hit5 - id0', 5, 361, 135, 0, 24, N'Electric', 0, 0, 4, 733)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1687, N'hits1_4 - id0', 3, 361, 100, 0, 16, N'Electric', 0, 0, 4, 733)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1688, N'late - id0', 8, 361, 100, 0, 0, N'Normal', 0, 0, 6, 732)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1689, N'clean - id0', 11, 361, 100, 0, 15, N'Normal', 0, 0, 6, 732)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1690, N'id0', 7, 70, 60, 0, 70, N'Normal', 0, 0, 6, 731)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1691, N'late - id0', 4, 80, 50, 0, 20, N'Normal', 0, 0, 0, 730)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1692, N'mid - id0', 7, 70, 60, 0, 70, N'Normal', 0, 0, 0, 730)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1693, N'clean - id0', 11, 70, 80, 0, 70, N'Normal', 0, 0, 0, 730)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1694, N'id0', 7, 96, 126, 0, 42, N'Normal', 0, 0, 5, 725)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1695, N'id0', 6, 80, 45, 0, 60, N'Normal', 0, 0, 6, 729)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1696, N'mid - id0', 6, 80, 45, 0, 60, N'Normal', 0, 0, 0, 728)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1697, N'clean - id0', 9, 70, 80, 0, 80, N'Normal', 0, 0, 0, 728)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1698, N'id3', 24, 361, 62, 0, 50, N'Normal', 0, 0, 12, 727)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1699, N'id2', 22, 361, 62, 0, 50, N'Normal', 0, 0, 12, 727)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1700, N'id1', 20, 361, 62, 0, 50, N'Normal', 0, 0, 12, 727)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1701, N'id0', 18, 361, 62, 0, 50, N'Normal', 0, 0, 12, 727)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1702, N'id2', 3, 0, 50, 0, 4, N'Normal', 0, 0, 3, 726)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1703, N'id1', 3, 0, 50, 0, 4, N'Normal', 0, 0, 3, 726)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1704, N'id0', 3, 0, 50, 0, 4, N'Normal', 0, 0, 3, 726)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1705, N'late - id0', 4, 80, 50, 0, 20, N'Normal', 0, 0, 0, 728)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1706, N'id0', 14, 140, 80, 0, 40, N'Normal', 0, 0, 8, 739)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1707, N'id1', 14, 140, 80, 0, 40, N'Normal', 0, 0, 8, 739)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1708, N'id2', 12, 140, 80, 0, 35, N'Normal', 0, 0, 8, 739)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1709, N'id0', 9, 135, 50, 0, 75, N'Electric', 0, 0, 0, 751)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1710, N'id0', 2, 45, 110, 0, 45, N'Electric', 0, 0, 0, 750)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1711, N'id0', 3, 80, 100, 30, 0, N'Electric', 0, 0, 0, 749)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1712, N'fast - id0', 8, 361, 100, 100, 0, N'Normal', 0, 0, 0, 748)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1713, N'slow - id0', 6, 361, 100, 100, 0, N'Normal', 0, 0, 0, 748)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1714, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1818)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1715, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1818)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1716, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1817)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1717, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1817)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1718, N'id0', 5, 90, 45, 0, 90, N'Electric', 0, 0, 0, 752)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1719, N'landing - id0', 4, 361, 100, 30, 0, N'Electric', 0, 0, 7, 746)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1720, N'part_2 - id0', 4, 80, 60, 0, 100, N'Normal', 0, 0, 3, 745)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1721, N'part_1 - id0', 4, 80, 60, 0, 100, N'Normal', 0, 0, 3, 745)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1722, N'late - id0', 9, 361, 100, 0, 20, N'Normal', 0, 0, 6, 744)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1723, N'clean - id0', 9, 361, 100, 0, 20, N'Normal', 0, 0, 6, 744)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1724, N'id1', 2, 361, 100, 30, 0, N'Electric', 0, 0, 2, 743)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1725, N'id0', 2, 361, 100, 30, 0, N'Electric', 0, 0, 2, 743)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1726, N'late - id0', 9, 361, 100, 0, 0, N'Normal', 0, 0, 7, 742)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1727, N'clean - id0', 12, 361, 100, 0, 18, N'Normal', 0, 0, 7, 742)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1728, N'id2', 13, 160, 70, 0, 30, N'Normal', 0, 0, 7, 741)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1729, N'part_3 - id0', 4, 80, 60, 0, 100, N'Normal', 0, 0, 3, 745)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1730, N'id1', 13, 160, 70, 0, 30, N'Normal', 0, 0, 7, 741)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1731, N'id0', 5, 80, 38, 0, 60, N'Electric', 0, 0, 0, 753)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1732, N'part_1 - id0', 3, 0, 40, 0, 5, N'Electric', 0, 0, 0, 755)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1733, N'late - id0', 18, 361, 95, 0, 22, N'Electric', 0, 0, 11, 973)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1734, N'mid - id0', 19, 361, 95, 0, 25, N'Electric', 0, 0, 11, 973)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1735, N'clean - id0', 21, 361, 92, 0, 25, N'Electric', 0, 0, 11, 973)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1736, N'id2', 7, 35, 100, 0, 12, N'Normal', 0, 0, 5, 972)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1737, N'id1', 7, 35, 100, 0, 12, N'Normal', 0, 0, 5, 972)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1738, N'id0', 7, 35, 100, 0, 12, N'Normal', 0, 0, 5, 972)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1739, N'id2', 6, 88, 124, 0, 45, N'Normal', 0, 0, 5, 971)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1740, N'id1', 7, 96, 124, 0, 45, N'Normal', 0, 0, 5, 971)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1741, N'id0', 7, 96, 124, 0, 40, N'Normal', 0, 0, 5, 971)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1742, N'id0', 4, 361, 90, 0, 15, N'Electric', 0, 0, 0, 754)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1743, N'ang_down - id0', 7, 361, 100, 0, 10, N'Normal', 0, 0, 0, 1651)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1744, N'ang_up - id0', 9, 361, 100, 0, 10, N'Normal', 0, 0, 0, 1650)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1745, N'id1', 8, 361, 70, 0, 40, N'Normal', 0, 0, 5, 864)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1746, N'id0', 8, 361, 70, 0, 40, N'Normal', 0, 0, 5, 864)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1747, N'id1', 2, 0, 50, 0, 7, N'Normal', 0, 0, 2, 1518)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1748, N'id0', 2, 0, 50, 0, 7, N'Normal', 0, 0, 2, 1518)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1749, N'ground - id0', 7, 361, 20, 0, 10, N'Electric', 0, 0, 0, 821)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1750, N'air - id0', 6, 361, 20, 0, 10, N'Electric', 0, 0, 0, 1564)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1751, N'lightning - id0', 10, 70, 50, 0, 100, N'Electric', 0, 0, 0, 756)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1752, N'part_2 - id0', 2, 0, 40, 0, 5, N'Electric', 0, 0, 0, 755)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1753, N'ang_side - id0', 8, 361, 100, 0, 10, N'Normal', 0, 0, 5, 865)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1754, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1786)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1755, N'id0', 13, 160, 70, 0, 30, N'Normal', 0, 0, 7, 741)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1756, N'id0', 16, 95, 105, 0, 50, N'Normal', 0, 0, 9, 740)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1757, N'id1', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 768)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1758, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 768)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1759, N'fast - id0', 6, 361, 100, 90, 0, N'Normal', 0, 0, 0, 767)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1760, N'slow - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 767)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1761, N'front_hit2 - id0', 8, 361, 50, 0, 70, N'Normal', 0, 0, 0, 1810)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1762, N'front_hit1 - id0', 6, 361, 50, 0, 70, N'Normal', 0, 0, 0, 1810)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1763, N'back_hit2 - id0', 6, 361, 50, 0, 70, N'Normal', 0, 0, 0, 1809)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1764, N'back_hit1 - id0', 6, 361, 50, 0, 70, N'Normal', 0, 0, 0, 1809)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1765, N'hits2and4 - id0', 3, 90, 50, 0, 16, N'Normal', 0, 0, 3, 765)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1766, N'id2', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 768)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1767, N'hits1and3 - id0', 3, 90, 50, 0, 16, N'Normal', 0, 0, 3, 765)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1768, N'id1', 12, 80, 120, 0, 0, N'Normal', 0, 0, 8, 764)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1769, N'id0', 14, 80, 120, 0, 0, N'Normal', 0, 0, 8, 764)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1770, N'late - id0', 10, 361, 90, 0, 10, N'Normal', 0, 0, 8, 763)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1771, N'clean - id0', 14, 361, 100, 0, 0, N'Normal', 0, 0, 8, 763)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1772, N'id1', 15, 361, 70, 0, 60, N'Normal', 0, 0, 8, 762)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1773, N'id0', 15, 361, 70, 0, 60, N'Normal', 0, 0, 8, 762)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1774, N'late - id0', 10, 361, 100, 0, 0, N'Normal', 0, 0, 8, 761)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1775, N'clean - id0', 14, 361, 100, 0, 20, N'Normal', 0, 0, 8, 761)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1776, N'id3', 12, 140, 80, 0, 35, N'Normal', 0, 0, 8, 739)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1777, N'id2', 11, 361, 120, 0, 0, N'Normal', 0, 0, 8, 764)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1778, N'id1', 16, 95, 105, 0, 40, N'Normal', 0, 0, 9, 740)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1779, N'id0', 8, 45, 160, 0, 10, N'Normal', 0, 0, 0, 769)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1780, N'id0', 6, 88, 56, 0, 70, N'Normal', 0, 0, 0, 771)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1781, N'hit6 - id0', 6, 361, 140, 0, 90, N'Electric', 0, 0, 4, 757)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1782, N'hits1_5 - id0', 2, 0, 50, 0, 10, N'Electric', 0, 0, 4, 757)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1783, N'id2', 7, 35, 100, 0, 12, N'Normal', 0, 0, 5, 759)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1784, N'id1', 7, 35, 100, 0, 12, N'Normal', 0, 0, 5, 759)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1785, N'id0', 7, 35, 100, 0, 12, N'Normal', 0, 0, 5, 759)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1786, N'id2', 6, 95, 120, 0, 25, N'Normal', 0, 0, 4, 778)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1787, N'id1', 6, 95, 120, 0, 25, N'Normal', 0, 0, 4, 778)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1788, N'id0', 6, 95, 120, 0, 20, N'Normal', 0, 0, 4, 778)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1789, N'ang_down - id0', 7, 361, 100, 0, 10, N'Normal', 0, 0, 0, 1631)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1790, N'id0', 9, 135, 40, 0, 80, N'Normal', 0, 0, 0, 770)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1791, N'ang_side - id0', 8, 361, 100, 0, 10, N'Normal', 0, 0, 5, 760)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1792, N'id1', 8, 361, 70, 0, 40, N'Normal', 0, 0, 5, 777)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1793, N'id0', 8, 361, 70, 0, 40, N'Normal', 0, 0, 5, 777)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1794, N'id1', 2, 0, 50, 0, 7, N'Normal', 0, 0, 2, 1517)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1795, N'id0', 2, 0, 50, 0, 7, N'Normal', 0, 0, 2, 1517)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1796, N'ground - id0', 7, 361, 20, 0, 10, N'Electric', 0, 0, 0, 775)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1797, N'air - id0', 6, 361, 20, 0, 10, N'Electric', 0, 0, 0, 1563)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1798, N'lightning - id0', 4, 94, 55, 0, 80, N'Electric', 0, 0, 0, 774)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1799, N'id0', 4, 361, 90, 0, 15, N'Electric', 0, 0, 0, 773)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1800, N'id0', 7, 108, 30, 0, 60, N'Normal', 0, 0, 0, 772)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1801, N'ang_up - id0', 9, 361, 100, 0, 10, N'Normal', 0, 0, 0, 1630)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1802, N'clean - id0', 19, 85, 110, 0, 40, N'Normal', 0, 0, 10, 974)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1803, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1786)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1804, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1785)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1805, N'id0', 7, 100, 72, 0, 70, N'Normal', 0, 0, 0, 794)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1806, N'id0', 10, 45, 65, 0, 80, N'Normal', 0, 0, 0, 793)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1807, N'id0', 8, 45, 65, 0, 60, N'Normal', 0, 0, 0, 792)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1808, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 791)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1809, N'id0', 1, 280, 100, 100, 0, N'Normal', 0, 0, 0, 790)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1810, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 789)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1811, N'slow - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 789)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1812, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1770)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1813, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1770)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1814, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1769)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1815, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1769)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1816, N'id2', 16, 270, 100, 0, 20, N'Normal', 0, 0, 9, 787)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1817, N'id1', 16, 361, 100, 0, 20, N'Normal', 0, 0, 9, 787)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1818, N'id0', 16, 361, 100, 0, 20, N'Normal', 0, 0, 9, 787)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1819, N'id1', 13, 55, 100, 0, 0, N'Normal', 0, 0, 7, 786)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1820, N'id0', 13, 55, 100, 0, 0, N'Normal', 0, 0, 7, 786)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1821, N'id1', 11, 361, 100, 0, 12, N'Normal', 0, 0, 6, 785)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1822, N'id0', 11, 361, 100, 0, 12, N'Normal', 0, 0, 6, 785)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1823, N'id1', 12, 361, 100, 0, 43, N'Normal', 0, 0, 7, 784)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1824, N'id0', 7, 110, 30, 0, 75, N'Normal', 0, 0, 0, 795)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1825, N'id0', 6, 361, 100, 0, 30, N'Normal', 0, 0, 0, 796)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1826, N'ground - id0', 10, 110, 80, 0, 30, N'Reverse', 0, 0, 6, 797)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1827, N'air - id0', 9, 110, 80, 0, 30, N'Reverse', 0, 0, 6, 1655)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1828, N'landing - id0', 2, 361, 100, 60, 0, N'Normal', 0, 0, 2, 845)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1829, N'hits1_7 - id1', 2, 94, 100, 30, 0, N'Normal', 0, 0, 2, 845)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1830, N'late - id0', 7, 120, 30, 0, 45, N'Normal', 0, 0, 6, 823)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1831, N'clean - id0', 9, 110, 50, 0, 70, N'Normal', 0, 0, 6, 823)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1832, N'hit3 - id0', 5, 361, 100, 0, 10, N'Normal', 0, 0, 4, 1509)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1833, N'hit2 - id0', 2, 83, 100, 20, 0, N'Normal', 0, 0, 2, 1508)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1834, N'hit1 - id0', 3, 83, 100, 20, 0, N'Normal', 0, 0, 3, 1507)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1835, N'id0', 6, 361, 25, 0, 5, N'Flame', 0, 0, 0, 822)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1836, N'air_hit8 - id0', 3, 80, 120, 0, 70, N'Normal', 0, 0, 3, 1656)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1837, N'id0', 12, 361, 100, 0, 43, N'Normal', 0, 0, 7, 784)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1838, N'air_hit7 - id0', 1, 100, 0, 1, 50, N'Normal', 0, 0, 3, 1656)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1839, N'air_hit1 - id0', 2, 140, 0, 40, 0, N'Normal', 0, 0, 3, 1656)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1840, N'ground_hit8 - id0', 5, 80, 115, 0, 60, N'Normal', 0, 0, 3, 800)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1841, N'ground_hit7 - id0', 1, 100, 0, 1, 40, N'Normal', 0, 0, 3, 800)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1842, N'ground_hits2_6 - id0', 1, 180, 0, 1, 40, N'Normal', 0, 0, 3, 800)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1843, N'ground_hit1 - id0', 2, 140, 0, 40, 0, N'Normal', 0, 0, 3, 800)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1844, N'hit10 - id0', 3, 50, 140, 0, 40, N'Coin', 0, 0, 4, 798)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1845, N'hits6_9 - id0', 1, 72, 100, 90, 0, N'Coin', 0, 0, 4, 798)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1846, N'hits2_5 - id0', 1, 74, 100, 110, 0, N'Coin', 0, 0, 4, 798)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1847, N'hit1 - id0', 5, 70, 100, 130, 0, N'Coin', 0, 0, 4, 798)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1848, N'air_hits2_6 - id0', 1, 160, 0, 1, 40, N'Normal', 0, 0, 3, 1656)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1849, N'late - id0', 8, 90, 100, 0, 20, N'Normal', 0, 0, 8, 783)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1850, N'clean - id0', 15, 90, 100, 0, 20, N'Normal', 0, 0, 8, 783)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1851, N'hit2 - id0', 17, 90, 80, 0, 40, N'Normal', 0, 0, 9, 782)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1852, N'air_hit2 - id0', 12, 90, 80, 0, 50, N'Normal', 0, 0, 7, 1657)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1853, N'air_hit1 - id0', 9, 90, 80, 0, 50, N'Normal', 0, 0, 7, 1657)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1854, N'ground_hit2 - id0', 12, 90, 80, 0, 50, N'Normal', 0, 0, 7, 815)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1855, N'ground_hit1 - id0', 8, 90, 80, 0, 50, N'Normal', 0, 0, 7, 815)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1856, N'air_clean - id0', 20, 90, 72, 0, 58, N'Flame', 0, 0, 13, 1658)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1857, N'ground_late - id0', 1, 80, 1, 0, 1, N'Coin', 0, 0, 13, 814)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1858, N'ground_clean - id0', 25, 90, 73, 0, 70, N'Flame', 0, 0, 13, 814)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1859, N'misfire - id0', 25, 361, 100, 0, 20, N'Flame', 0, 0, 0, 813)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1860, N'id0', 6, 361, 100, 0, 30, N'Normal', 0, 0, 0, 812)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1861, N'id0', 6, 361, 25, 0, 5, N'Flame', 0, 0, 0, 816)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1862, N'id0', 6, 69, 50, 0, 65, N'Normal', 0, 0, 0, 811)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1863, N'id0', 11, 45, 80, 0, 70, N'Normal', 0, 0, 0, 809)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1864, N'id0', 5, 78, 100, 142, 0, N'Normal', 0, 0, 0, 808)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1865, N'id0', 10, 280, 16, 0, 50, N'Normal', 0, 0, 0, 807)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1866, N'id0', 3, 80, 100, 30, 0, N'Electric', 0, 0, 0, 806)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1867, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 805)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1868, N'slow - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 805)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1869, N'front - id0', 7, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1794)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1870, N'back - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1793)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1871, N'id0', 14, 270, 100, 0, 10, N'Normal', 0, 0, 9, 803)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1872, N'id0', 12, 90, 70, 0, 100, N'Normal', 0, 0, 0, 810)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1873, N'ang_up - id0', 10, 361, 100, 0, 6, N'Normal', 0, 0, 0, 1642)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1874, N'hit1 - id0', 3, 83, 100, 20, 0, N'Normal', 0, 0, 3, 1504)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1875, N'hit3 - id0', 5, 361, 100, 0, 10, N'Normal', 0, 0, 4, 1506)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1876, N'hit1 - id0', 17, 90, 80, 0, 40, N'Normal', 0, 0, 9, 782)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1877, N'id0', 17, 110, 98, 0, 35, N'Normal', 0, 0, 9, 799)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1878, N'ang_down - id0', 12, 45, 135, 0, 20, N'Slash', 0, 0, 7, 801)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1879, N'ang_side - id0', 13, 55, 135, 0, 20, N'Slash', 0, 0, 7, 801)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1880, N'ang_up - id0', 14, 65, 135, 0, 20, N'Slash', 0, 0, 7, 801)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1881, N'id2', 9, 80, 80, 0, 10, N'Normal', 0, 0, 6, 820)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1882, N'id1', 9, 80, 80, 0, 10, N'Normal', 0, 0, 6, 820)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1883, N'id0', 9, 80, 80, 0, 10, N'Normal', 0, 0, 6, 820)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1884, N'id2', 9, 100, 123, 0, 30, N'Normal', 0, 0, 6, 802)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1885, N'hit2 - id0', 2, 83, 100, 20, 0, N'Normal', 0, 0, 2, 1505)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1886, N'id1', 9, 100, 125, 0, 30, N'Normal', 0, 0, 6, 802)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1887, N'ang_down - id0', 10, 361, 100, 1, 2, N'Normal', 0, 0, 0, 1647)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1888, N'ang_side - id0', 10, 361, 100, 0, 2, N'Normal', 0, 0, 6, 819)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1889, N'ang_up - id0', 10, 361, 100, 0, 2, N'Normal', 0, 0, 0, 1646)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1890, N'hit6 - id0', 2, 361, 100, 0, 2, N'Normal', 0, 0, 0, 818)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1891, N'hit5 - id0', 2, 361, 100, 0, 2, N'Normal', 0, 0, 0, 818)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1892, N'hit4 - id0', 2, 361, 100, 0, 2, N'Normal', 0, 0, 0, 818)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1893, N'hit3 - id0', 2, 361, 100, 0, 2, N'Normal', 0, 0, 0, 818)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1894, N'hit2 - id0', 2, 361, 100, 0, 2, N'Normal', 0, 0, 0, 818)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1895, N'hit1 - id0', 2, 361, 100, 0, 2, N'Normal', 0, 0, 0, 818)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1896, N'id0', 9, 100, 127, 0, 30, N'Normal', 0, 0, 6, 802)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1897, N'ang_side - id0', 9, 361, 100, 0, 6, N'Normal', 0, 0, 6, 846)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1898, N'ang_down - id0', 8, 361, 100, 1, 6, N'Normal', 0, 0, 0, 1643)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1899, N'id0', 8, 96, 125, 0, 26, N'Normal', 0, 0, 5, 847)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1900, N'id3', 20, 361, 70, 0, 80, N'Slash', 0, 0, 10, 830)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1901, N'id2', 14, 361, 70, 0, 60, N'Slash', 0, 0, 10, 830)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1902, N'id1', 14, 361, 70, 0, 60, N'Slash', 0, 0, 10, 830)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1903, N'id0', 14, 361, 70, 0, 60, N'Slash', 0, 0, 10, 830)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1904, N'id3', 10, 30, 40, 0, 50, N'Slash', 0, 0, 6, 829)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1905, N'id2', 8, 30, 40, 0, 20, N'Slash', 0, 0, 6, 829)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1906, N'id1', 8, 30, 40, 0, 25, N'Slash', 0, 0, 6, 829)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1907, N'id0', 9, 30, 40, 0, 40, N'Slash', 0, 0, 6, 829)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1908, N'clean - id0', 10, 85, 120, 0, 40, N'Slash', 0, 0, 6, 828)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1909, N'id0', 8, 70, 100, 100, 0, N'Normal', 0, 0, 10, 831)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1910, N'early - id0', 9, 110, 120, 0, 40, N'Slash', 0, 0, 6, 828)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1911, N'id2', 9, 361, 70, 0, 30, N'Slash', 0, 0, 6, 827)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1912, N'id1', 9, 361, 70, 0, 30, N'Slash', 0, 0, 6, 827)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1913, N'id0', 9, 361, 70, 0, 30, N'Slash', 0, 0, 6, 827)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1914, N'id3', 12, 110, 55, 0, 70, N'Slash', 0, 0, 7, 826)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1915, N'id2', 9, 361, 60, 0, 35, N'Normal', 0, 0, 7, 826)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1916, N'id1', 9, 361, 60, 0, 35, N'Normal', 0, 0, 7, 826)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1917, N'id0', 11, 110, 55, 0, 70, N'Slash', 0, 0, 7, 826)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1918, N'hit2 - id0', 4, 361, 50, 0, 20, N'Slash', 0, 0, 4, 1489)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1919, N'hit1 - id0', 4, 361, 50, 0, 20, N'Slash', 0, 0, 4, 1488)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1920, N'id3', 13, 361, 70, 0, 60, N'Slash', 0, 0, 7, 827)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1921, N'id3', 7, 361, 35, 0, 90, N'Slash', 0, 0, 5, 824)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1922, N'id1', 8, 70, 100, 100, 0, N'Normal', 0, 0, 10, 831)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1923, N'id3', 18, 90, 80, 0, 60, N'Slash', 0, 0, 10, 831)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1924, N'id0', 13, 290, 70, 0, 40, N'Slash', 0, 0, 7, 837)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1925, N'id3', 9, 361, 70, 0, 20, N'Slash', 0, 0, 7, 837)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1926, N'id2', 9, 361, 70, 0, 30, N'Slash', 0, 0, 7, 837)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1927, N'id1', 10, 80, 70, 0, 40, N'Slash', 0, 0, 7, 837)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1928, N'id0', 13, 90, 70, 0, 40, N'Normal', 0, 0, 7, 836)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1929, N'id3', 9, 80, 70, 0, 18, N'Slash', 0, 0, 7, 836)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1930, N'id2', 9, 80, 70, 0, 20, N'Slash', 0, 0, 7, 836)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1931, N'id1', 10, 80, 70, 0, 30, N'Slash', 0, 0, 7, 836)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1932, N'id3', 13, 361, 70, 0, 30, N'Slash', 0, 0, 6, 835)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1933, N'id2', 15, 90, 80, 0, 30, N'Slash', 0, 0, 10, 831)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1934, N'id2', 9, 361, 70, 0, 10, N'Slash', 0, 0, 6, 835)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1935, N'id0', 10, 361, 70, 0, 30, N'Slash', 0, 0, 6, 835)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1936, N'id3', 13, 67, 70, 0, 42, N'Slash', 0, 0, 7, 834)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1937, N'id2', 9, 361, 70, 0, 20, N'Slash', 0, 0, 7, 834)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1938, N'id1', 9, 361, 70, 0, 20, N'Slash', 0, 0, 7, 834)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1939, N'id0', 10, 361, 70, 0, 30, N'Slash', 0, 0, 7, 834)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1940, N'hit2 - id0', 10, 361, 80, 0, 50, N'Slash', 0, 0, 6, 833)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1941, N'hit1 - id0', 4, 100, 40, 0, 30, N'Slash', 0, 0, 6, 833)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1942, N'hit2 - id0', 11, 75, 72, 0, 70, N'Slash', 0, 0, 9, 832)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1943, N'hit1 - id0', 11, 75, 72, 0, 70, N'Slash', 0, 0, 9, 832)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1944, N'id1', 9, 361, 70, 0, 25, N'Slash', 0, 0, 6, 835)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1945, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1785)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1946, N'id2', 7, 361, 35, 0, 90, N'Slash', 0, 0, 5, 824)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1947, N'id0', 7, 361, 35, 0, 90, N'Slash', 0, 0, 5, 824)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1948, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1777)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1949, N'id1', 11, 55, 100, 0, 0, N'Normal', 0, 0, 6, 855)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1950, N'id0', 11, 55, 100, 0, 0, N'Normal', 0, 0, 6, 855)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1951, N'late - id0', 9, 361, 100, 0, 7, N'Normal', 0, 0, 6, 854)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1952, N'clean - id0', 11, 361, 100, 0, 10, N'Normal', 0, 0, 6, 854)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1953, N'id1', 15, 280, 70, 0, 30, N'Normal', 0, 0, 8, 853)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1954, N'id0', 15, 280, 70, 0, 30, N'Normal', 0, 0, 8, 853)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1955, N'late - id0', 8, 361, 100, 0, 15, N'Normal', 0, 0, 7, 852)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1956, N'clean - id0', 12, 361, 100, 0, 20, N'Normal', 0, 0, 7, 852)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1957, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1777)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1958, N'hit2 - id0', 10, 361, 75, 0, 35, N'Normal', 0, 0, 9, 851)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1959, N'id0', 15, 83, 97, 0, 32, N'Normal', 0, 0, 8, 850)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1960, N'ang_down - id0', 17, 361, 95, 0, 25, N'Flame', 0, 0, 10, 849)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1961, N'ang_side - id0', 18, 361, 95, 0, 25, N'Flame', 0, 0, 10, 849)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1962, N'ang_up - id0', 19, 361, 95, 0, 25, N'Flame', 0, 0, 10, 849)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1963, N'id2', 9, 80, 80, 0, 10, N'Normal', 0, 0, 6, 848)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1964, N'id1', 9, 80, 80, 0, 10, N'Normal', 0, 0, 6, 848)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1965, N'id0', 8, 80, 80, 0, 10, N'Normal', 0, 0, 6, 848)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1966, N'id2', 8, 96, 120, 0, 26, N'Normal', 0, 0, 5, 847)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1967, N'id1', 8, 96, 122, 0, 26, N'Normal', 0, 0, 5, 847)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1968, N'hit1 - id0', 16, 361, 75, 0, 40, N'Normal', 0, 0, 9, 851)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1969, N'id1', 7, 361, 35, 0, 90, N'Slash', 0, 0, 5, 824)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1970, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1778)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1971, N'slow - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 857)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1972, N'air - id0', 7, 361, 90, 0, 20, N'Slash', 0, 0, 7, 1661)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1973, N'ground - id0', 13, 361, 70, 0, 80, N'Slash', 0, 0, 7, 841)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1974, N'hit4_down_5 - id0', 5, 361, 130, 0, 20, N'Slash', 0, 0, 0, 1990)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1975, N'hit4_down_1_4 - id0', 3, 80, 40, 0, 2, N'Slash', 0, 0, 0, 1990)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1976, N'hit4_side - id0', 14, 361, 120, 0, 15, N'Slash', 0, 0, 0, 1988)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1977, N'hit4_up - id0', 10, 80, 130, 0, 40, N'Slash', 0, 0, 0, 1989)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1978, N'hit3_down - id0', 12, 270, 100, 0, 50, N'Slash', 0, 0, 0, 1986)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1979, N'hit3_side - id0', 10, 361, 160, 0, 0, N'Slash', 0, 0, 0, 1984)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1980, N'hit3_up - id0', 6, 80, 60, 0, 60, N'Slash', 0, 0, 0, 1985)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1981, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1778)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1982, N'hit2_down - id0', 5, 105, 100, 0, 16, N'Slash', 0, 0, 0, 1982)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1983, N'hit1 - id0', 4, 85, 25, 0, 55, N'Slash', 0, 0, 0, 843)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1984, N'fully_charged - id0', 28, 361, 100, 0, 30, N'Slash', 0, 0, 5, 862)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1985, N'uncharged - id0', 7, 361, 100, 0, 30, N'Slash', 0, 0, 5, 862)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1986, N'id0', 6, 90, 30, 0, 75, N'Normal', 0, 0, 0, 844)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1987, N'id0', 8, 90, 72, 0, 70, N'Normal', 0, 0, 0, 861)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1988, N'id0', 12, 45, 65, 0, 80, N'Normal', 0, 0, 0, 860)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1989, N'id0', 9, 45, 65, 0, 60, N'Normal', 0, 0, 0, 859)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1990, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 858)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1991, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 857)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1992, N'hit2_up - id0', 5, 90, 40, 0, 30, N'Slash', 0, 0, 0, 1983)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1993, N'mid - id0', 13, 90, 110, 0, 30, N'Normal', 0, 0, 10, 974)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1994, N'late - id0', 7, 40, 48, 0, 5, N'Normal', 0, 0, 10, 974)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1995, N'hits1_6 - id0', 2, 170, 30, 0, 70, N'Electric', 0, 0, 3, 975)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1996, N'clean - id0', 14, 115, 80, 0, 40, N'Normal', 0, 0, 8, 884)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1997, N'id2', 8, 361, 100, 0, 30, N'Electric', 0, 0, 5, 1494)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1998, N'id1', 8, 361, 100, 0, 30, N'Electric', 0, 0, 5, 1494)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (1999, N'id0', 7, 361, 100, 0, 30, N'Electric', 0, 0, 5, 1494)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2000, N'landing - id0', 12, 80, 20, 0, 60, N'Normal', 0, 0, 8, 1556)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2001, N'air - id0', 14, 290, 80, 0, 50, N'Darkness', 0, 0, 8, 1556)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2002, N'ground - id0', 15, 361, 85, 0, 60, N'Darkness', 0, 0, 8, 881)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2003, N'release - id0', 15, 361, 82, 0, 40, N'Electric', 0, 0, 0, 880)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2004, N'hits1_4 - id0', 1, 361, 100, 0, 60, N'Electric', 0, 0, 0, 880)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2005, N'downpunch - id0', 16, 70, 65, 0, 50, N'Darkness', 0, 0, 9, 879)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2006, N'detector_air - id0', 0, 361, 0, 0, 0, N'Inert', 0, 0, 9, 1555)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2007, N'uppercut - id0', 17, 105, 69, 0, 60, N'Darkness', 0, 0, 9, 879)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2008, N'detector_ground - id0', 0, 361, 0, 0, 0, N'Inert', 0, 0, 9, 879)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2009, N'air - id0', 30, 361, 100, 0, 40, N'Darkness', 0, 0, 17, 878)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2010, N'ground - id0', 30, 361, 100, 0, 30, N'Darkness', 0, 0, 17, 878)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2011, N'id0', 8, 88, 40, 0, 80, N'Normal', 0, 0, 0, 877)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2012, N'id0', 8, 90, 40, 0, 100, N'Normal', 0, 0, 0, 876)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2013, N'id0', 8, 68, 40, 0, 100, N'Normal', 0, 0, 0, 875)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2014, N'id0', 8, 68, 40, 0, 100, N'Normal', 0, 0, 0, 874)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2015, N'late - id0', 10, 110, 60, 0, 25, N'Normal', 0, 0, 8, 884)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2016, N'ang_up - id0', 14, 361, 100, 0, 20, N'Normal', 0, 0, 0, 1638)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2017, N'ang_side - id0', 13, 361, 100, 0, 20, N'Normal', 0, 0, 7, 906)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2018, N'ang_down - id0', 12, 361, 100, 0, 20, N'Normal', 0, 0, 0, 1639)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2019, N'id1', 16, 361, 100, 0, 10, N'Normal', 0, 0, 9, 934)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2020, N'id0', 16, 361, 100, 0, 30, N'Normal', 0, 0, 9, 934)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2021, N'id2', 17, 361, 80, 0, 60, N'Normal', 0, 0, 9, 933)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2022, N'id1', 17, 361, 80, 0, 60, N'Normal', 0, 0, 9, 933)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2023, N'id0', 17, 361, 80, 0, 60, N'Normal', 0, 0, 9, 933)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2024, N'hit2 - id0', 12, 361, 100, 0, 50, N'Normal', 0, 0, 7, 932)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2025, N'hit1 - id0', 12, 55, 100, 0, 30, N'Normal', 0, 0, 7, 932)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2026, N'hit2 - id0', 14, 120, 110, 0, 60, N'Normal', 0, 0, 8, 931)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2027, N'hit1 - id0', 8, 160, 100, 90, 0, N'Normal', 0, 0, 8, 931)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2028, N'id0', 8, 361, 100, 0, 20, N'Normal', 0, 0, 0, 873)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2029, N'hit2 - id0', 19, 90, 80, 0, 40, N'Normal', 0, 0, 11, 930)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2030, N'ang_down - id0', 20, 60, 80, 0, 40, N'Darkness', 0, 0, 11, 929)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2031, N'ang_side - id0', 22, 70, 83, 0, 40, N'Darkness', 0, 0, 11, 929)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2032, N'ang_up - id0', 24, 80, 85, 0, 40, N'Darkness', 0, 0, 11, 929)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2033, N'id2', 12, 60, 100, 0, 30, N'Normal', 0, 0, 7, 907)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2034, N'id1', 12, 70, 100, 0, 30, N'Normal', 0, 0, 7, 907)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2035, N'id0', 12, 80, 100, 0, 30, N'Normal', 0, 0, 7, 907)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2036, N'id2', 27, 361, 80, 0, 110, N'Flame', 0, 0, 14, 926)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2037, N'id1', 27, 361, 80, 0, 110, N'Flame', 0, 0, 14, 926)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2038, N'id0', 27, 361, 80, 0, 110, N'Flame', 0, 0, 14, 926)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2039, N'hit1 - id0', 22, 90, 80, 0, 50, N'Normal', 0, 0, 11, 930)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2040, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 872)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2041, N'fast - id0', 8, 361, 50, 0, 80, N'Normal', 0, 0, 0, 871)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2042, N'slow - id0', 8, 361, 50, 0, 80, N'Normal', 0, 0, 0, 871)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2043, N'id2', 10, 361, 100, 0, 10, N'Normal', 0, 0, 6, 901)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2044, N'id1', 10, 361, 100, 0, 10, N'Normal', 0, 0, 6, 901)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2045, N'id0', 10, 361, 100, 0, 10, N'Normal', 0, 0, 6, 901)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2046, N'id0', 9, 120, 30, 0, 70, N'Normal', 0, 0, 6, 900)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2047, N'inf - id0', 3, 70, 100, 18, 0, N'Normal', 0, 0, 0, 1626)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2048, N'hit1 - id0', 3, 83, 100, 20, 0, N'Normal', 0, 0, 3, 1493)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2049, N'air_part_3 - id0', 1, 361, 100, 0, 40, N'Normal', 0, 0, 0, 898)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2050, N'air_part_2 - id0', 1, 361, 100, 0, 40, N'Normal', 0, 0, 0, 898)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2051, N'air_part_1 - id0', 1, 361, 100, 0, 40, N'Normal', 0, 0, 0, 898)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2052, N'id3', 10, 361, 100, 0, 10, N'Normal', 0, 0, 6, 901)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2053, N'ground_part_3 - id0', 1, 361, 80, 0, 30, N'Normal', 0, 0, 0, 898)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2054, N'ground_part_1 - id0', 1, 361, 80, 0, 30, N'Normal', 0, 0, 0, 898)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2055, N'id0', 6, 80, 80, 0, 50, N'Normal', 0, 0, 4, 897)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2056, N'number_9 - id0', 32, 361, 80, 0, 100, N'Normal', 0, 0, 0, 896)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2057, N'number_8 - id0', 4, 80, 100, 70, 0, N'Freezing', 0, 0, 0, 896)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2058, N'number_7 - id0', 14, 361, 50, 0, 30, N'Normal', 0, 0, 0, 896)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2059, N'number_6 - id0', 12, 20, 80, 0, 30, N'Flame', 0, 0, 0, 896)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2060, N'number_5 - id0', 3, 75, 80, 0, 30, N'Electric', 0, 0, 0, 896)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2061, N'number_4 - id0', 8, 40, 40, 0, 50, N'Slash', 0, 0, 0, 896)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2062, N'number_3 - id0', 6, 140, 50, 0, 45, N'Normal', 0, 0, 0, 896)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2063, N'ground_part_2 - id0', 1, 361, 80, 0, 30, N'Normal', 0, 0, 0, 898)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2064, N'id2', 16, 361, 100, 0, 10, N'Normal', 0, 0, 9, 934)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2065, N'id0', 9, 100, 127, 0, 30, N'Normal', 0, 0, 6, 902)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2066, N'id2', 9, 100, 123, 0, 30, N'Normal', 0, 0, 6, 902)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2067, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1722)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2068, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1722)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2069, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1721)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2070, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1721)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2071, N'landing - id0', 6, 40, 30, 0, 50, N'Normal', 0, 0, 8, 869)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2072, N'hit2 - id0', 9, 90, 100, 0, 55, N'Normal', 0, 0, 6, 868)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2073, N'hit1 - id0', 7, 94, 100, 0, 12, N'Normal', 0, 0, 6, 868)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2074, N'landing - id0', 3, 68, 60, 0, 80, N'Slash', 0, 0, 4, 867)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2075, N'late - id0', 6, 361, 80, 0, 10, N'Normal', 0, 0, 9, 866)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2076, N'id1', 9, 100, 125, 0, 30, N'Normal', 0, 0, 6, 902)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2077, N'clean - id0', 16, 361, 80, 0, 30, N'Normal', 0, 0, 9, 866)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2078, N'id3', 16, 80, 90, 0, 60, N'Normal', 0, 0, 9, 885)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2079, N'id2', 16, 80, 90, 0, 60, N'Normal', 0, 0, 9, 885)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2080, N'id1', 10, 20, 50, 0, 10, N'Normal', 0, 0, 9, 885)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2081, N'id0', 10, 20, 50, 0, 10, N'Normal', 0, 0, 9, 885)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2082, N'id0', 18, 83, 96, 0, 40, N'Normal', 0, 0, 10, 904)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2083, N'late - id0', 6, 55, 100, 0, 44, N'Flame', 0, 0, 10, 886)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2084, N'clean - id0', 18, 55, 100, 0, 44, N'Flame', 0, 0, 10, 886)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2085, N'id1', 9, 361, 40, 0, 80, N'Normal', 0, 0, 7, 903)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2086, N'id0', 12, 85, 100, 0, 65, N'Normal', 0, 0, 7, 903)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2087, N'id0', 16, 361, 100, 0, 20, N'Normal', 0, 0, 9, 883)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2088, N'clean - id0', 13, 361, 100, 0, 35, N'Normal', 0, 0, 7, 935)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2089, N'mid - id0', 12, 30, 80, 0, 30, N'Normal', 0, 0, 7, 935)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2090, N'late - id0', 8, 0, 70, 0, 20, N'Normal', 0, 0, 7, 935)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2091, N'id0', 8, 361, 70, 0, 30, N'Slash', 0, 0, 5, 916)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2092, N'hit2 - id0', 8, 361, 80, 0, 50, N'Slash', 0, 0, 5, 915)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2093, N'hit1 - id0', 4, 100, 40, 0, 30, N'Slash', 0, 0, 5, 915)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2094, N'hit2 - id0', 16, 75, 68, 0, 42, N'Slash', 0, 0, 11, 914)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2095, N'hit1 - id0', 21, 75, 70, 0, 42, N'Slash', 0, 0, 11, 914)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2096, N'hit5 - id0', 10, 90, 90, 0, 73, N'Flame', 0, 0, 6, 913)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2097, N'hits1_4 - id0', 2, 98, 100, 120, 0, N'Flame', 0, 0, 6, 913)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2098, N'id3', 12, 361, 65, 0, 30, N'Normal', 0, 0, 10, 912)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2099, N'id2', 20, 361, 65, 0, 80, N'Slash', 0, 0, 10, 912)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2100, N'id1', 8, 361, 70, 0, 30, N'Slash', 0, 0, 5, 916)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2101, N'id1', 20, 361, 65, 0, 80, N'Slash', 0, 0, 10, 912)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2102, N'id3', 6, 80, 40, 0, 70, N'Normal', 0, 0, 7, 911)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2103, N'id2', 12, 80, 40, 0, 90, N'Slash', 0, 0, 7, 911)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2104, N'id1', 12, 80, 40, 0, 90, N'Slash', 0, 0, 7, 911)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2105, N'id0', 10, 80, 40, 0, 90, N'Slash', 0, 0, 7, 911)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2106, N'clean - id0', 8, 85, 120, 0, 35, N'Slash', 0, 0, 6, 910)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2107, N'early - id0', 8, 110, 120, 0, 35, N'Slash', 0, 0, 6, 910)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2108, N'id3', 7, 361, 70, 0, 30, N'Normal', 0, 0, 7, 909)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2109, N'id2', 12, 361, 70, 0, 60, N'Slash', 0, 0, 7, 909)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2110, N'id1', 12, 361, 70, 0, 60, N'Slash', 0, 0, 7, 909)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2111, N'id0', 20, 361, 65, 0, 80, N'Slash', 0, 0, 10, 912)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2112, N'id0', 10, 361, 70, 0, 60, N'Slash', 0, 0, 7, 909)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2113, N'id2', 8, 361, 70, 0, 30, N'Slash', 0, 0, 5, 916)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2114, N'id0', 9, 361, 70, 0, 30, N'Slash', 0, 0, 6, 917)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2115, N'id0', 5, 117, 45, 0, 70, N'Normal', 0, 0, 0, 924)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2116, N'id0', 5, 45, 45, 0, 70, N'Normal', 0, 0, 0, 923)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2117, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 922)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2118, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 921)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2119, N'slow - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 921)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2120, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1834)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2121, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1834)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2122, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1833)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2123, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1833)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2124, N'id3', 5, 361, 70, 0, 10, N'Normal', 0, 0, 5, 916)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2125, N'id0', 6, 90, 70, 0, 40, N'Normal', 0, 0, 6, 919)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2126, N'id2', 9, 270, 70, 0, 40, N'Slash', 0, 0, 6, 919)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2127, N'id1', 9, 361, 70, 0, 40, N'Slash', 0, 0, 6, 919)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2128, N'id0', 6, 80, 70, 0, 10, N'Normal', 0, 0, 6, 918)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2129, N'id3', 9, 80, 70, 0, 20, N'Slash', 0, 0, 6, 918)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2130, N'id2', 9, 80, 70, 0, 20, N'Slash', 0, 0, 6, 918)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2131, N'id1', 9, 80, 70, 0, 20, N'Slash', 0, 0, 6, 918)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2132, N'id3', 6, 361, 70, 0, 10, N'Normal', 0, 0, 6, 917)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2133, N'id2', 9, 361, 70, 0, 30, N'Slash', 0, 0, 6, 917)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2134, N'id1', 9, 361, 70, 0, 30, N'Slash', 0, 0, 6, 917)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2135, N'id3', 9, 270, 70, 0, 40, N'Slash', 0, 0, 6, 919)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2136, N'number_2 - id0', 4, 361, 40, 0, 10, N'Normal', 0, 0, 0, 896)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2137, N'id3', 6, 361, 60, 0, 35, N'Normal', 0, 0, 7, 908)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2138, N'id1', 12, 110, 55, 0, 70, N'Slash', 0, 0, 7, 908)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2139, N'hit3_up_clean - id0', 10, 280, 60, 0, 80, N'Slash', 0, 0, 0, 1974)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2140, N'hit2_down - id1', 6, 80, 60, 0, 20, N'Slash', 0, 0, 0, 1971)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2141, N'hit2_up - id0', 6, 96, 30, 0, 50, N'Slash', 0, 0, 0, 1972)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2142, N'hit1 - id2', 5, 96, 25, 0, 40, N'Slash', 0, 0, 0, 945)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2143, N'fully_charged - id0', 50, 361, 83, 0, 50, N'Flame', 0, 0, 0, 944)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2144, N'uncharged - id0', 6, 361, 110, 0, 40, N'Flame', 0, 0, 0, 944)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2145, N'id0', 7, 100, 36, 0, 75, N'Normal', 0, 0, 0, 943)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2146, N'id0', 3, 90, 105, 0, 70, N'Normal', 0, 0, 0, 942)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2147, N'id0', 4, 135, 130, 0, 30, N'Normal', 0, 0, 0, 941)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2148, N'hit3_up_late - id0', 7, 60, 60, 0, 60, N'Slash', 0, 0, 0, 1974)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2149, N'id0', 4, 45, 105, 0, 45, N'Normal', 0, 0, 0, 940)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2150, N'fast - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 938)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2151, N'slow - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 938)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2152, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1730)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2153, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1730)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2154, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1729)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2155, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1729)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2156, N'id2', 22, 270, 100, 0, 50, N'Electric', 0, 0, 11, 936)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2157, N'id1', 22, 270, 100, 0, 50, N'Electric', 0, 0, 11, 936)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2158, N'id0', 22, 270, 100, 0, 50, N'Electric', 0, 0, 11, 936)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2159, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 939)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2160, N'id2', 12, 110, 55, 0, 70, N'Slash', 0, 0, 7, 908)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2161, N'hit3_side - id0', 10, 361, 110, 0, 50, N'Slash', 0, 0, 0, 1973)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2162, N'hit3_down_hit4 - id0', 5, 64, 100, 0, 70, N'Flame', 0, 0, 0, 1976)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2163, N'id0', 12, 110, 55, 0, 70, N'Slash', 0, 0, 7, 908)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2164, N'id3', 3, 361, 60, 0, 5, N'Normal', 0, 0, 4, 1519)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2165, N'id2', 6, 361, 60, 0, 30, N'Slash', 0, 0, 4, 1519)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2166, N'id1', 6, 361, 60, 0, 30, N'Slash', 0, 0, 4, 1519)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2167, N'id0', 5, 361, 60, 0, 30, N'Slash', 0, 0, 4, 1519)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2168, N'id3', 1, 361, 70, 0, 30, N'Flame', 0, 0, 0, 927)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2169, N'id2', 1, 361, 90, 0, 30, N'Flame', 0, 0, 0, 927)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2170, N'id1', 1, 361, 90, 0, 30, N'Flame', 0, 0, 0, 927)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2171, N'id0', 1, 361, 90, 0, 30, N'Flame', 0, 0, 0, 927)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2172, N'hit3_down_hits1_3 - id0', 3, 90, 100, 30, 0, N'Flame', 0, 0, 0, 1976)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2173, N'hits5_7 - id0', 1, 84, 100, 100, 0, N'Flame', 0, 0, 0, 946)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2174, N'hit1 - id0', 5, 84, 100, 200, 0, N'Flame', 0, 0, 0, 946)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2175, N'id3', 5, 60, 60, 0, 60, N'Normal', 0, 0, 0, 928)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2176, N'id2', 7, 60, 60, 0, 60, N'Slash', 0, 0, 0, 928)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2177, N'id1', 7, 60, 60, 0, 60, N'Slash', 0, 0, 0, 928)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2178, N'id0', 7, 60, 60, 0, 60, N'Slash', 0, 0, 0, 928)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2179, N'hit4_down_hit5 - id0', 5, 361, 110, 0, 30, N'Flame', 0, 0, 0, 1977)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2180, N'hit4_down_hits1_4 - id0', 3, 80, 40, 0, 2, N'Flame', 0, 0, 0, 1977)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2181, N'hit4_side - id0', 13, 361, 135, 0, 35, N'Flame', 0, 0, 0, 1977)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2182, N'hit4_up - id0', 13, 40, 130, 0, 22, N'Flame', 0, 0, 0, 1978)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2183, N'hits2_4 - id0', 2, 84, 100, 160, 0, N'Flame', 0, 0, 0, 946)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2184, N'number_1 - id0', 2, 361, 0, 0, 0, N'Normal', 0, 0, 0, 896)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2185, N'sausage - id0', 4, 70, 50, 0, 20, N'Normal', 0, 0, 0, 895)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2186, N'id0', 4, 80, 20, 0, 120, N'Normal', 0, 0, 0, 894)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2187, N'id0', 5, 55, 30, 0, 100, N'Normal', 0, 0, 0, 968)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2188, N'id0', 3, 361, 100, 30, 0, N'Normal', 0, 0, 0, 966)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2189, N'fast - id0', 6, 361, 100, 90, 0, N'Normal', 0, 0, 0, 965)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2190, N'slow - id0', 6, 361, 100, 90, 0, N'Normal', 0, 0, 0, 965)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2191, N'front_hit2 - id0', 8, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1746)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2192, N'front_hit1 - id0', 8, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1746)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2193, N'back_hit2 - id0', 8, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1745)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2194, N'back_hit1 - id0', 8, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1745)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2195, N'id3', 2, 30, 100, 0, 10, N'Normal', 0, 0, 2, 963)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2196, N'id0', 11, 90, 25, 0, 130, N'Normal', 0, 0, 0, 990)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2197, N'id2', 2, 30, 100, 0, 10, N'Normal', 0, 0, 2, 963)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2198, N'id0', 2, 270, 100, 0, 20, N'Normal', 0, 0, 2, 963)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2199, N'id1', 12, 90, 100, 0, 30, N'Normal', 0, 0, 7, 962)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2200, N'id2', 12, 361, 100, 0, 10, N'Normal', 0, 0, 7, 961)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2201, N'id1', 12, 361, 100, 0, 10, N'Normal', 0, 0, 7, 961)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2202, N'id0', 12, 361, 100, 0, 10, N'Normal', 0, 0, 7, 961)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2203, N'late - id0', 7, 361, 80, 0, 10, N'Normal', 0, 0, 7, 960)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2204, N'clean - id0', 12, 361, 100, 0, 10, N'Normal', 0, 0, 7, 960)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2205, N'late - id0', 9, 361, 80, 0, 10, N'Normal', 0, 0, 7, 959)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2206, N'clean - id0', 12, 361, 70, 0, 10, N'Normal', 0, 0, 7, 959)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2207, N'id1', 2, 270, 100, 0, 20, N'Normal', 0, 0, 2, 963)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2208, N'id3', 12, 0, 66, 0, 34, N'Normal', 0, 0, 7, 958)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2209, N'id0', 10, 135, 25, 0, 90, N'Normal', 0, 0, 0, 1010)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2210, N'ground_hit1 - id0', 2, 100, 100, 0, 130, N'Normal', 0, 0, 2, 1013)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2211, N'explosion - id0', 4, 361, 45, 0, 10, N'Flame', 0, 0, 7, 1017)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2212, N'bomb - id0', 4, 361, 45, 0, 10, N'Flame', 0, 0, 7, 1017)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2213, N'Super - id0', 12, 361, 100, 0, 30, N'Flame', 0, 0, 13, 1016)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2214, N'homing - id0', 5, 0, 20, 0, 24, N'Flame', 0, 0, 13, 1016)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2215, N'lvl_7 - id0', 25, 361, 72, 0, 50, N'Electric', 0, 0, 23, 1015)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2216, N'lvl_6 - id0', 21, 361, 66, 0, 36, N'Electric', 0, 0, 23, 1015)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2217, N'lvl_5 - id0', 18, 361, 62, 0, 32, N'Electric', 0, 0, 23, 1015)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2218, N'lvl_4 - id0', 14, 361, 58, 0, 28, N'Electric', 0, 0, 23, 1015)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2219, N'lvl_3 - id0', 11, 361, 54, 0, 24, N'Electric', 0, 0, 23, 1015)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2220, N'id0', 2, 80, 45, 0, 100, N'Normal', 0, 0, 0, 991)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2221, N'lvl_2 - id0', 8, 361, 50, 0, 20, N'Electric', 0, 0, 23, 1015)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2222, N'lvl_0 - id0', 3, 361, 42, 0, 14, N'Electric', 0, 0, 23, 1015)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2223, N'id1', 4, 361, 40, 0, 15, N'Electric', 0, 0, 0, 1014)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2224, N'id0', 4, 361, 40, 0, 15, N'Electric', 0, 0, 0, 1014)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2225, N'air_hit12 - id0', 1, 70, 100, 80, 0, N'Electric', 0, 0, 2, 1566)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2226, N'air_hits4_11 - id0', 1, 140, 0, 0, 25, N'Normal', 0, 0, 2, 1566)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2227, N'air_hits1_3 - id0', 1, 140, 0, 0, 25, N'Normal', 0, 0, 2, 1566)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2228, N'ground_hit13 - id0', 1, 70, 100, 80, 0, N'Electric', 0, 0, 2, 1013)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2229, N'ground_hits5_12 - id0', 1, 110, 100, 0, 70, N'Normal', 0, 0, 2, 1013)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2230, N'ground_hits2_4 - id0', 1, 105, 100, 0, 110, N'Normal', 0, 0, 2, 1013)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2231, N'lvl_1 - id0', 5, 361, 46, 0, 16, N'Electric', 0, 0, 23, 1015)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2232, N'hit1 - id0', 3, 361, 100, 0, 0, N'Normal', 0, 0, 3, 1520)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2233, N'id2', 12, 0, 66, 0, 34, N'Normal', 0, 0, 7, 958)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2234, N'id0', 12, 0, 66, 0, 34, N'Normal', 0, 0, 7, 958)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2235, N'id0', 2, 45, 110, 0, 45, N'Electric', 0, 0, 0, 985)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2236, N'id0', 3, 80, 100, 30, 0, N'Electric', 0, 0, 0, 984)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2237, N'slow - id1', 6, 361, 100, 100, 0, N'Normal', 0, 0, 0, 983)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2238, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1826)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2239, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1826)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2240, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1825)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2241, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1825)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2242, N'landing - id0', 4, 361, 100, 0, 10, N'Normal', 0, 0, 0, 981)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2243, N'landing - id0', 4, 361, 100, 30, 0, N'Electric', 0, 0, 7, 980)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2244, N'id0', 9, 135, 50, 0, 75, N'Electric', 0, 0, 0, 986)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2245, N'air - id0', 12, 361, 100, 20, 0, N'Electric', 0, 0, 7, 980)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2246, N'part_2 - id0', 4, 0, 60, 0, 60, N'Normal', 0, 0, 3, 979)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2247, N'part_1 - id0', 4, 80, 60, 0, 100, N'Normal', 0, 0, 3, 979)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2248, N'late - id0', 9, 361, 100, 0, 20, N'Normal', 0, 0, 7, 978)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2249, N'clean - id0', 12, 361, 100, 0, 20, N'Normal', 0, 0, 7, 978)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2250, N'id1', 2, 361, 100, 30, 0, N'Electric', 0, 0, 2, 977)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2251, N'id0', 2, 361, 100, 30, 0, N'Electric', 0, 0, 2, 977)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2252, N'late - id0', 9, 361, 100, 0, 0, N'Normal', 0, 0, 7, 976)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2253, N'clean - id0', 12, 361, 100, 0, 18, N'Normal', 0, 0, 7, 976)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2254, N'hit7 - id0', 3, 70, 170, 0, 70, N'Electric', 0, 0, 3, 975)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2255, N'part_3 - id0', 4, 130, 60, 0, 80, N'Normal', 0, 0, 3, 979)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2256, N'id1', 12, 0, 66, 0, 34, N'Normal', 0, 0, 7, 958)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2257, N'id0', 5, 90, 45, 0, 90, N'Electric', 0, 0, 0, 987)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2258, N'ground - id0', 10, 20, 120, 0, 30, N'Normal', 0, 0, 0, 988)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2259, N'id1', 15, 90, 110, 0, 20, N'Normal', 0, 0, 8, 957)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2260, N'id0', 14, 90, 110, 0, 20, N'Normal', 0, 0, 8, 957)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2261, N'late - id0', 13, 361, 105, 0, 6, N'Normal', 0, 0, 9, 956)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2262, N'clean - id0', 17, 361, 118, 0, 10, N'Normal', 0, 0, 9, 956)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2263, N'id2', 10, 20, 30, 0, 40, N'Normal', 0, 0, 6, 955)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2264, N'id1', 10, 20, 30, 0, 40, N'Normal', 0, 0, 6, 955)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2265, N'id0', 10, 20, 30, 0, 40, N'Normal', 0, 0, 6, 955)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2266, N'late - id0', 8, 88, 120, 0, 40, N'Normal', 0, 0, 6, 954)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2267, N'clean - id0', 9, 96, 120, 0, 40, N'Normal', 0, 0, 6, 954)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2268, N'id0', 5, 80, 38, 0, 60, N'Electric', 0, 0, 0, 970)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2269, N'id1', 10, 361, 100, 0, 8, N'Normal', 0, 0, 6, 953)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2270, N'late - id0', 8, 361, 100, 0, 8, N'Normal', 0, 0, 7, 952)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2271, N'clean - id0', 12, 361, 100, 0, 16, N'Normal', 0, 0, 7, 952)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2272, N'hit2 - id0', 3, 361, 50, 0, 16, N'Normal', 0, 0, 3, 1496)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2273, N'hit1 - id0', 3, 361, 50, 0, 8, N'Normal', 0, 0, 3, 1495)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2274, N'id0', 28, 361, 120, 0, 78, N'Flame', 0, 0, 0, 950)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2275, N'id0', 0, 361, 100, 0, 0, N'Sleep', 0, 0, 0, 967)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2276, N'id1', 13, 120, 75, 0, 52, N'Normal', 0, 0, 0, 969)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2277, N'id0', 13, 90, 75, 0, 52, N'Normal', 0, 0, 0, 969)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2278, N'air - id0', 10, 90, 102, 0, 30, N'Normal', 0, 0, 0, 1660)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2279, N'id0', 10, 361, 100, 0, 8, N'Normal', 0, 0, 6, 953)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2280, N'id1', 15, 270, 100, 0, 10, N'Normal', 0, 0, 9, 803)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2281, N'hit2 - id0', 7, 361, 100, 0, 15, N'Normal', 0, 0, 5, 1521)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2282, N'late - id0', 10, 361, 100, 0, 10, N'Normal', 0, 0, 8, 1019)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2283, N'id1', 14, 75, 108, 0, 26, N'Normal', 0, 0, 8, 1006)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2284, N'id0', 14, 75, 108, 0, 26, N'Normal', 0, 0, 8, 1006)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2285, N'id2', 16, 361, 94, 0, 32, N'Normal', 0, 0, 9, 1005)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2286, N'id1', 16, 361, 94, 0, 32, N'Normal', 0, 0, 9, 1005)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2287, N'id0', 16, 361, 94, 0, 32, N'Normal', 0, 0, 9, 1005)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2288, N'id2', 10, 28, 100, 100, 0, N'Normal', 0, 0, 6, 1004)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2289, N'id1', 10, 28, 100, 100, 0, N'Normal', 0, 0, 6, 1004)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2290, N'id0', 10, 28, 100, 100, 0, N'Normal', 0, 0, 6, 1004)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2291, N'id2', 10, 100, 40, 0, 72, N'Normal', 0, 0, 6, 1003)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2292, N'hit1 - id0', 14, 30, 75, 0, 50, N'Normal', 0, 0, 8, 1007)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2293, N'id1', 10, 100, 40, 0, 72, N'Normal', 0, 0, 6, 1003)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2294, N'ang_down - id0', 11, 80, 80, 0, 40, N'Normal', 0, 0, 0, 1649)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2295, N'ang_side - id0', 12, 80, 80, 0, 40, N'Normal', 0, 0, 7, 1002)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2296, N'ang_up - id0', 13, 80, 80, 0, 40, N'Normal', 0, 0, 0, 1648)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2297, N'id1', 9, 361, 100, 0, 15, N'Normal', 0, 0, 6, 1001)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2298, N'id0', 9, 361, 100, 0, 15, N'Normal', 0, 0, 6, 1001)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2299, N'hit2 - id0', 5, 361, 120, 0, 8, N'Normal', 0, 0, 4, 1526)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2300, N'hit1 - id0', 3, 361, 50, 0, 8, N'Normal', 0, 0, 3, 1525)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2301, N'id0', 10, 70, 40, 0, 45, N'Normal', 0, 0, 0, 999)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2302, N'stars - id0', 1, 361, 50, 0, 50, N'Normal', 0, 0, 0, 998)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2303, N'id0', 10, 100, 40, 0, 72, N'Normal', 0, 0, 6, 1003)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2304, N'ground - id0', 14, 80, 96, 0, 46, N'Normal', 0, 0, 0, 998)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2305, N'hit2 - id0', 12, 30, 75, 0, 50, N'Normal', 0, 0, 8, 1007)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2306, N'late - id0', 10, 361, 100, 0, 0, N'Normal', 0, 0, 8, 1008)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2307, N'id0', 5, 90, 43, 0, 65, N'Normal', 0, 0, 0, 893)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2308, N'id0', 6, 45, 66, 0, 40, N'Normal', 0, 0, 0, 892)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2309, N'id0', 6, 45, 66, 0, 40, N'Normal', 0, 0, 0, 891)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2310, N'throw - id0', 7, 361, 100, 0, 0, N'Normal', 0, 0, 0, 890)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2311, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 889)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2312, N'fast - id0', 6, 361, 100, 100, 0, N'Normal', 0, 0, 0, 888)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2313, N'slow - id0', 12, 361, 100, 100, 0, N'Normal', 0, 0, 0, 888)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2314, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1858)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2315, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1858)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2316, N'clean - id0', 14, 361, 100, 0, 15, N'Normal', 0, 0, 8, 1008)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2317, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1857)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2318, N'id1', 4, 270, 90, 0, 5, N'Normal', 0, 0, 3, 905)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2319, N'id0', 4, 270, 90, 0, 5, N'Normal', 0, 0, 3, 905)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2320, N'id1', 13, 90, 100, 0, 25, N'Normal', 0, 0, 7, 948)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2321, N'id0', 13, 90, 100, 0, 25, N'Normal', 0, 0, 7, 948)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2322, N'hit4 - id0', 4, 60, 100, 0, 40, N'Normal', 0, 0, 5, 989)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2323, N'hit3 - id0', 5, 60, 100, 0, 10, N'Normal', 0, 0, 5, 989)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2324, N'hit2 - id0', 6, 60, 100, 0, 10, N'Normal', 0, 0, 5, 989)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2325, N'hit1 - id0', 7, 60, 100, 0, 10, N'Normal', 0, 0, 5, 989)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2326, N'id0', 17, 270, 100, 0, 30, N'Normal', 0, 0, 9, 949)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2327, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1857)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2328, N'clean - id1', 14, 361, 100, 0, 10, N'Normal', 0, 0, 8, 1019)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2329, N'air - id0', 16, 80, 98, 0, 50, N'Normal', 0, 0, 0, 1568)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2330, N'ground - id0', 4, 80, 70, 0, 43, N'Normal', 0, 0, 0, 997)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2331, N'hit5 - id0', 6, 80, 120, 0, 50, N'Flame', 0, 0, 4, 1025)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2332, N'hit4 - id0', 5, 85, 50, 0, 30, N'Flame', 0, 0, 4, 1025)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2333, N'hit3 - id0', 4, 90, 50, 0, 25, N'Flame', 0, 0, 4, 1025)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2334, N'hit2 - id0', 4, 120, 50, 0, 35, N'Flame', 0, 0, 4, 1025)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2335, N'hit1 - id0', 4, 130, 50, 0, 50, N'Flame', 0, 0, 4, 1025)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2336, N'ang_down - id0', 13, 361, 104, 0, 30, N'Normal', 0, 0, 8, 1024)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2337, N'ang_side - id0', 14, 361, 104, 0, 30, N'Normal', 0, 0, 8, 1024)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2338, N'ang_up - id0', 15, 361, 104, 0, 30, N'Normal', 0, 0, 8, 1024)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2339, N'id2', 14, 100, 60, 0, 80, N'Flame', 0, 0, 8, 1023)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2340, N'hit1 - id0', 16, 120, 50, 0, 110, N'Normal', 0, 0, 9, 1026)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2341, N'id1', 14, 100, 60, 0, 80, N'Flame', 0, 0, 8, 1023)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2342, N'id3', 12, 361, 100, 0, 40, N'Normal', 0, 0, 7, 1022)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2343, N'id2', 12, 361, 100, 0, 40, N'Normal', 0, 0, 7, 1022)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2344, N'id1', 13, 270, 100, 0, 40, N'Normal', 0, 0, 7, 1022)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2345, N'id0', 13, 270, 100, 0, 40, N'Normal', 0, 0, 7, 1022)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2346, N'ang_down - id0', 9, 361, 100, 0, 10, N'Normal', 0, 0, 0, 1653)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2347, N'ang_side - id0', 10, 361, 100, 0, 10, N'Normal', 0, 0, 6, 1021)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2348, N'ang_up - id0', 11, 361, 100, 0, 10, N'Normal', 0, 0, 0, 1652)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2349, N'late - id0', 9, 60, 105, 0, 22, N'Normal', 0, 0, 7, 1020)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2350, N'clean - id0', 13, 60, 105, 0, 22, N'Normal', 0, 0, 7, 1020)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2351, N'id0', 14, 100, 60, 0, 80, N'Flame', 0, 0, 8, 1023)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2352, N'air - id0', 4, 80, 70, 0, 43, N'Normal', 0, 0, 0, 1659)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2353, N'hit2 - id0', 15, 120, 40, 0, 90, N'Normal', 0, 0, 9, 1026)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2354, N'hit5 - id0', 5, 361, 100, 0, 20, N'Flame', 0, 0, 4, 1027)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2355, N'id0', 6, 361, 100, 0, 30, N'Normal', 0, 0, 0, 996)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2356, N'id0', 6, 80, 20, 0, 80, N'Normal', 0, 0, 0, 995)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2357, N'id0', 7, 90, 45, 0, 100, N'Normal', 0, 0, 0, 994)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2358, N'id0', 8, 140, 42, 0, 50, N'Normal', 0, 0, 0, 993)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2359, N'id0', 9, 42, 45, 0, 50, N'Normal', 0, 0, 0, 992)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2360, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 1009)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2361, N'fast - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1011)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2362, N'slow - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1011)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2363, N'front_hit2 - id0', 6, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1842)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2364, N'hits1_4 - id0', 5, 85, 100, 0, 20, N'Flame', 0, 0, 4, 1027)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2365, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1842)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2366, N'back_hit1 - id0', 8, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1841)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2367, N'id1', 16, 270, 100, 0, 30, N'Normal', 0, 0, 9, 1012)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2368, N'id0', 16, 270, 100, 0, 30, N'Normal', 0, 0, 9, 1012)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2369, N'hit6 - id0', 4, 361, 120, 0, 40, N'Normal', 0, 0, 3, 1029)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2370, N'hits2_5 - id0', 1, 80, 100, 30, 0, N'Normal', 0, 0, 3, 1029)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2371, N'hit1 - id0', 3, 90, 100, 30, 0, N'Normal', 0, 0, 3, 1029)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2372, N'id2', 14, 361, 100, 0, 42, N'Normal', 0, 0, 8, 1028)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2373, N'id1', 10, 361, 100, 0, 30, N'Normal', 0, 0, 8, 1028)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2374, N'id0', 10, 361, 100, 0, 30, N'Normal', 0, 0, 8, 1028)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2375, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1841)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2376, N'id0', 5, 97, 130, 0, 60, N'Normal', 0, 0, 0, 1031)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2377, N'id2', 16, 270, 100, 0, 10, N'Normal', 0, 0, 9, 803)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2378, N'id0', 9, 361, 100, 0, 0, N'Normal', 0, 0, 7, 1032)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2379, N'id0', 6, 361, 100, 0, 30, N'Normal', 0, 0, 0, 1048)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2380, N'id0', 6, 80, 40, 0, 70, N'Normal', 0, 0, 0, 1047)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2381, N'id0', 5, 88, 28, 0, 110, N'Normal', 0, 0, 0, 1046)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2382, N'id0', 7, 60, 30, 0, 80, N'Normal', 0, 0, 0, 1045)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2383, N'id0', 5, 45, 60, 0, 70, N'Normal', 0, 0, 0, 1044)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2384, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 1043)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2385, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1050)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2386, N'slow - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1050)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2387, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1738)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2388, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1738)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2389, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1737)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2390, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1737)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2391, N'id1', 9, 361, 110, 36, 0, N'Normal', 0, 0, 6, 1040)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2392, N'id0', 9, 361, 110, 36, 0, N'Normal', 0, 0, 6, 1040)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2393, N'late - id0', 7, 70, 140, 0, 10, N'Normal', 0, 0, 6, 1039)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2394, N'clean - id0', 9, 70, 140, 0, 10, N'Normal', 0, 0, 6, 1039)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2395, N'id1', 11, 361, 100, 0, 30, N'Normal', 0, 0, 7, 1038)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2396, N'id0', 12, 361, 110, 0, 30, N'Normal', 0, 0, 7, 1038)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2397, N'id2', 9, 70, 100, 0, 40, N'Normal', 0, 0, 6, 1037)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2398, N'ground - id0', 27, 361, 102, 0, 30, N'Flame', 0, 0, 0, 1049)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2399, N'air - id0', 27, 361, 102, 0, 40, N'Flame', 0, 0, 0, 1540)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2400, N'detector_ground - id0', 0, 361, 0, 0, 0, N'Inert', 0, 0, 0, 1071)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2401, N'uppercut - id0', 7, 90, 80, 0, 78, N'Flame', 0, 0, 0, 1071)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2402, N'id0', 13, 361, 80, 0, 50, N'Normal', 0, 0, 7, 1097)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2403, N'ang_down - id0', 10, 361, 100, 0, 0, N'Normal', 0, 0, 0, 1629)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2404, N'ang_side - id0', 11, 361, 100, 0, 10, N'Normal', 0, 0, 6, 1096)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2405, N'ang_up - id0', 12, 361, 100, 0, 10, N'Normal', 0, 0, 0, 1628)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2406, N'late - id0', 7, 361, 50, 0, 10, N'Normal', 0, 0, 6, 1074)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2407, N'clean - id0', 10, 361, 90, 0, 22, N'Normal', 0, 0, 6, 1074)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2408, N'inf - id0', 1, 361, 70, 0, 0, N'Normal', 0, 0, 0, 1624)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2409, N'hit3_late - id0', 6, 361, 100, 0, 0, N'Normal', 0, 0, 5, 1480)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2410, N'hit3_clean - id0', 8, 361, 100, 0, 20, N'Normal', 0, 0, 5, 1480)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2411, N'id1', 10, 70, 100, 0, 40, N'Normal', 0, 0, 6, 1037)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2412, N'hit2 - id0', 3, 80, 100, 20, 0, N'Normal', 0, 0, 3, 1479)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2413, N'landing - id0', 9, 80, 20, 0, 80, N'Normal', 0, 0, 0, 1485)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2414, N'air_late - id1', 11, 361, 60, 0, 40, N'Flame', 0, 0, 0, 1485)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2415, N'air_mid - id1', 13, 361, 65, 0, 40, N'Flame', 0, 0, 0, 1485)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2416, N'air_clean - id1', 15, 361, 70, 0, 40, N'Flame', 0, 0, 0, 1485)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2417, N'ground_late - id0', 9, 90, 50, 0, 50, N'Flame', 0, 0, 0, 1072)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2418, N'ground_mid - id0', 12, 80, 60, 0, 50, N'Flame', 0, 0, 0, 1072)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2419, N'ground_clean - id0', 15, 361, 70, 0, 50, N'Flame', 0, 0, 0, 1072)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2420, N'downpunch - id0', 7, 270, 70, 0, 60, N'Flame', 0, 0, 0, 1071)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2421, N'detector_air - id0', 0, 361, 0, 0, 0, N'Inert', 0, 0, 0, 1541)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2422, N'hit1 - id0', 2, 80, 100, 20, 0, N'Normal', 0, 0, 2, 1478)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2423, N'id0', 11, 270, 100, 0, 40, N'Normal', 0, 0, 6, 1037)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2424, N'id1', 8, 361, 100, 0, 20, N'Normal', 0, 0, 5, 1036)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2425, N'id0', 8, 361, 100, 0, 20, N'Normal', 0, 0, 5, 1036)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2426, N'id0', 8, 120, 50, 0, 80, N'Normal', 0, 0, 0, 1063)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2427, N'id0', 8, 65, 100, 0, 40, N'Normal', 0, 0, 0, 1062)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2428, N'lvl_7 - id0', 25, 361, 71, 0, 46, N'Electric', 0, 0, 0, 1061)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2429, N'lvl_6 - id0', 21, 361, 66, 0, 36, N'Electric', 0, 0, 0, 1061)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2430, N'lvl_5 - id0', 18, 361, 62, 0, 32, N'Electric', 0, 0, 0, 1061)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2431, N'lvl_4 - id0', 14, 361, 58, 0, 28, N'Electric', 0, 0, 0, 1061)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2432, N'lvl_3 - id0', 11, 361, 54, 0, 24, N'Electric', 0, 0, 0, 1061)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2433, N'lvl_2 - id0', 8, 361, 50, 0, 20, N'Electric', 0, 0, 0, 1061)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2434, N'lvl_1 - id0', 5, 361, 46, 0, 16, N'Electric', 0, 0, 0, 1061)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2435, N'id0', 10, 90, 70, 0, 70, N'Normal', 0, 0, 0, 1064)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2436, N'lvl_0 - id0', 3, 361, 42, 0, 14, N'Electric', 0, 0, 0, 1061)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2437, N'air - id0', 6, 361, 20, 0, 10, N'Electric', 0, 0, 0, 1060)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2438, N'ground - id0', 7, 361, 20, 0, 10, N'Electric', 0, 0, 0, 1059)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2439, N'air - id0', 6, 361, 20, 0, 10, N'Electric', 0, 0, 0, 1059)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2440, N'id0', 3, 80, 50, 0, 80, N'Normal', 0, 0, 0, 1058)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2441, N'id0', 1, 70, 70, 0, 20, N'Electric', 0, 0, 0, 1057)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2442, N'id0', 6, 361, 25, 0, 5, N'Flame', 0, 0, 0, 1056)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2443, N'id0', 6, 361, 25, 0, 5, N'Flame', 0, 0, 0, 1055)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2444, N'id0', 1, 70, 50, 0, 8, N'Slash', 0, 0, 0, 1054)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2445, N'id0', 2, 60, 50, 0, 12, N'Flame', 0, 0, 0, 1093)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2446, N'ground - id0', 7, 361, 20, 0, 10, N'Electric', 0, 0, 0, 1060)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2447, N'id1', 13, 361, 80, 0, 50, N'Normal', 0, 0, 7, 1097)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2448, N'id0', 7, 90, 45, 0, 40, N'Normal', 0, 0, 0, 1065)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2449, N'clean - id0', 4, 70, 130, 0, 5, N'Normal', 0, 0, 0, 1067)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2450, N'id1', 12, 361, 110, 0, 50, N'Normal', 0, 0, 6, 1035)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2451, N'id0', 12, 361, 110, 0, 50, N'Normal', 0, 0, 6, 1035)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2452, N'id1', 11, 83, 128, 0, 50, N'Normal', 0, 0, 6, 1034)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2453, N'id0', 11, 83, 128, 0, 50, N'Normal', 0, 0, 6, 1034)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2454, N'id1', 10, 361, 105, 0, 40, N'Normal', 0, 0, 8, 1041)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2455, N'id0', 14, 361, 105, 0, 40, N'Normal', 0, 0, 8, 1041)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2456, N'id1', 5, 70, 100, 0, 30, N'Normal', 0, 0, 4, 1051)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2457, N'id0', 5, 70, 100, 0, 30, N'Normal', 0, 0, 4, 1051)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2458, N'hit7 - id0', 7, 90, 100, 0, 40, N'Normal', 0, 0, 5, 1052)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2459, N'shot - id0', 5, 361, 50, 0, 5, N'Freezing', 0, 0, 0, 1066)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2460, N'hits1_6 - id0', 1, 95, 20, 0, 15, N'Normal', 0, 0, 5, 1052)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2461, N'id0', 8, 361, 100, 0, 26, N'Normal', 0, 0, 5, 1053)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2462, N'id1', 9, 80, 40, 0, 90, N'Normal', 0, 0, 6, 1070)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2463, N'id0', 9, 80, 40, 0, 90, N'Normal', 0, 0, 6, 1070)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2464, N'hit2 - id0', 4, 45, 100, 30, 0, N'Normal', 0, 0, 3, 1535)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2465, N'hit1 - id0', 2, 45, 100, 0, 0, N'Normal', 0, 0, 2, 1534)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2466, N'late - id0', 1, 361, 25, 0, 5, N'Freezing', 0, 0, 2, 1068)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2467, N'mid - id0', 2, 70, 130, 0, 5, N'Freezing', 0, 0, 2, 1068)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2468, N'clean - id0', 3, 70, 320, 0, 5, N'Freezing', 0, 0, 2, 1068)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2469, N'late - id0', 2, 70, 130, 0, 5, N'Normal', 0, 0, 0, 1067)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2470, N'id1', 8, 361, 100, 0, 26, N'Normal', 0, 0, 5, 1053)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2471, N'id0', 12, 80, 75, 0, 25, N'Normal', 0, 0, 7, 1098)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2472, N'id1', 12, 70, 75, 0, 25, N'Normal', 0, 0, 7, 1098)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2473, N'id2', 12, 60, 75, 0, 25, N'Normal', 0, 0, 7, 1098)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2474, N'hit1 - id0', 10, 75, 100, 40, 0, N'Slash', 0, 0, 6, 1084)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2475, N'id3', 7, 70, 50, 0, 80, N'Slash', 0, 0, 6, 1083)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2476, N'id2', 9, 280, 50, 0, 80, N'Slash', 0, 0, 6, 1083)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2477, N'id1', 10, 280, 50, 0, 80, N'Slash', 0, 0, 6, 1083)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2478, N'id0', 10, 280, 50, 0, 80, N'Slash', 0, 0, 6, 1083)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2479, N'id3', 8, 70, 130, 0, 20, N'Slash', 0, 0, 5, 1082)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2480, N'id2', 8, 85, 124, 0, 20, N'Slash', 0, 0, 5, 1082)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2481, N'id1', 8, 85, 126, 0, 20, N'Slash', 0, 0, 5, 1082)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2482, N'id0', 8, 85, 128, 0, 20, N'Slash', 0, 0, 5, 1082)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2483, N'hit2 - id0', 12, 361, 120, 0, 30, N'Slash', 0, 0, 6, 1084)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2484, N'id3', 10, 361, 100, 0, 2, N'Slash', 0, 0, 7, 1081)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2485, N'id1', 11, 361, 100, 0, 5, N'Slash', 0, 0, 7, 1081)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2486, N'id0', 12, 361, 100, 0, 5, N'Slash', 0, 0, 7, 1081)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2487, N'id3', 10, 361, 100, 0, 10, N'Slash', 0, 0, 0, 1080)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2488, N'id2', 10, 361, 100, 0, 10, N'Slash', 0, 0, 0, 1080)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2489, N'id1', 10, 361, 100, 0, 10, N'Slash', 0, 0, 0, 1080)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2490, N'id0', 11, 361, 100, 0, 10, N'Slash', 0, 0, 0, 1080)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2491, N'inf - id0', 1, 0, 40, 0, 15, N'Slash', 0, 0, 2, 1530)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2492, N'hit3 - id0', 5, 361, 100, 0, 10, N'Slash', 0, 0, 4, 1529)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2493, N'hit2 - id0', 2, 361, 60, 0, 10, N'Slash', 0, 0, 2, 1528)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2494, N'id2', 10, 361, 100, 0, 2, N'Slash', 0, 0, 7, 1081)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2495, N'hit1 - id0', 3, 361, 60, 0, 10, N'Slash', 0, 0, 3, 1527)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2496, N'hit1 - id0', 3, 98, 100, 23, 40, N'Slash', 0, 0, 6, 1085)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2497, N'hit3_clean - id0', 7, 100, 70, 0, 70, N'Slash', 0, 0, 6, 1085)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2498, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1198)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2499, N'slow - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1198)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2500, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1866)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2501, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1866)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2502, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1865)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2503, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1865)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2504, N'late - id0', 17, 70, 100, 0, 40, N'Slash', 0, 0, 9, 1091)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2505, N'early - id0', 14, 70, 100, 0, 40, N'Slash', 0, 0, 9, 1091)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2506, N'id2', 15, 80, 85, 0, 25, N'Slash', 0, 0, 8, 1090)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2507, N'hit2 - id0', 2, 90, 100, 28, 0, N'Slash', 0, 0, 6, 1085)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2508, N'id1', 15, 80, 85, 0, 25, N'Slash', 0, 0, 8, 1090)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2509, N'hit2 - id0', 7, 361, 100, 0, 15, N'Normal', 0, 0, 5, 1089)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2510, N'hit1 - id0', 7, 361, 100, 0, 0, N'Normal', 0, 0, 5, 1089)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2511, N'hit2 - id0', 8, 76, 90, 0, 0, N'Slash', 0, 0, 7, 1088)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2512, N'hit1 - id0', 12, 361, 100, 0, 5, N'Slash', 0, 0, 7, 1088)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2513, N'late - id0', 8, 361, 100, 0, 10, N'Normal', 0, 0, 7, 1087)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2514, N'clean - id0', 12, 361, 100, 0, 15, N'Normal', 0, 0, 7, 1087)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2515, N'hit2 - id0', 12, 30, 90, 0, 25, N'Slash', 0, 0, 7, 1086)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2516, N'hit1 - id0', 13, 30, 90, 0, 30, N'Slash', 0, 0, 7, 1086)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2517, N'hit3_late - id0', 8, 30, 70, 0, 50, N'Slash', 0, 0, 6, 1085)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2518, N'id0', 15, 80, 85, 0, 25, N'Slash', 0, 0, 8, 1090)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2519, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 1114)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2520, N'id0', 2, 110, 70, 0, 40, N'Flame', 0, 0, 0, 1078)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2521, N'late - id0', 7, 75, 30, 0, 55, N'Normal', 0, 0, 0, 1077)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2522, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1681)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2523, N'id2', 16, 290, 100, 0, 40, N'Normal', 0, 0, 9, 1106)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2524, N'id1', 16, 270, 100, 0, 40, N'Normal', 0, 0, 9, 1106)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2525, N'id0', 16, 270, 100, 0, 40, N'Normal', 0, 0, 9, 1106)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2526, N'late - id0', 8, 0, 70, 0, 6, N'Normal', 0, 0, 7, 1105)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2527, N'mid - id0', 12, 30, 80, 0, 8, N'Normal', 0, 0, 7, 1105)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2528, N'clean - id0', 13, 361, 100, 0, 10, N'Normal', 0, 0, 7, 1105)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2529, N'late - id0', 8, 361, 100, 0, 20, N'Normal', 0, 0, 8, 1104)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2530, N'clean - id0', 14, 361, 100, 0, 20, N'Normal', 0, 0, 8, 1104)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2531, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1681)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2532, N'late - id0', 6, 361, 80, 0, 35, N'Normal', 0, 0, 10, 1103)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2533, N'hit2 - id0', 7, 361, 100, 0, 40, N'Normal', 0, 0, 5, 1102)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2534, N'hit1 - id0', 6, 82, 100, 40, 0, N'Normal', 0, 0, 5, 1102)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2535, N'hit2 - id0', 16, 361, 100, 0, 20, N'Normal', 0, 0, 10, 1101)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2536, N'hit1 - id0', 18, 361, 100, 0, 30, N'Normal', 0, 0, 10, 1101)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2537, N'hit2 - id0', 13, 90, 128, 0, 30, N'Normal', 0, 0, 7, 1100)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2538, N'hit1 - id0', 8, 90, 100, 80, 0, N'Normal', 0, 0, 7, 1100)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2539, N'ang_down - id0', 19, 361, 100, 0, 24, N'Flame', 0, 0, 10, 1099)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2540, N'ang_side - id0', 20, 361, 100, 0, 24, N'Flame', 0, 0, 10, 1099)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2541, N'ang_up - id0', 21, 361, 100, 0, 24, N'Flame', 0, 0, 10, 1099)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2542, N'clean - id0', 18, 32, 100, 0, 24, N'Electric', 0, 0, 10, 1103)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2543, N'return - id0', 2, 90, 30, 0, 40, N'Normal', 0, 0, 0, 1077)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2544, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1682)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2545, N'slow - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1108)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2546, N'clean - id0', 11, 70, 30, 0, 55, N'Normal', 0, 0, 0, 1077)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2547, N'id0', 1, 80, 30, 0, 45, N'Flame', 0, 0, 0, 1076)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2548, N'id1', 5, 361, 40, 0, 40, N'Slash', 0, 0, 0, 1075)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2549, N'id0', 5, 361, 40, 0, 40, N'Slash', 0, 0, 0, 1075)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2550, N'air_hit5 - id0', 3, 361, 180, 0, 40, N'Slash', 0, 0, 0, 1569)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2551, N'air_hit4 - id0', 2, 88, 100, 68, 0, N'Slash', 0, 0, 0, 1569)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2552, N'air_hit3 - id0', 2, 88, 100, 70, 0, N'Slash', 0, 0, 0, 1569)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2553, N'air_hit2 - id0', 2, 88, 100, 72, 0, N'Slash', 0, 0, 0, 1569)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2554, N'air_hit1 - id0', 3, 88, 100, 80, 0, N'Slash', 0, 0, 0, 1569)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2555, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1682)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2556, N'ground_last_hit - id0', 3, 80, 100, 0, 60, N'Slash', 0, 0, 0, 1092)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2557, N'id0', 6, 361, 100, 0, 30, N'Normal', 0, 0, 0, 1094)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2558, N'id0', 7, 65, 34, 0, 75, N'Normal', 0, 0, 0, 1113)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2559, N'id0', 3, 85, 105, 0, 70, N'Normal', 0, 0, 0, 1095)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2560, N'id0', 4, 135, 130, 0, 30, N'Normal', 0, 0, 0, 1112)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2561, N'id0', 4, 45, 105, 0, 45, N'Normal', 0, 0, 0, 1111)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2562, N'release - id0', 12, 361, 82, 0, 40, N'Flame', 0, 0, 0, 1110)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2563, N'hold - id1', 6, 0, 50, 0, 70, N'Normal', 0, 0, 0, 1110)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2564, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 1109)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2565, N'fast - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1108)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2566, N'ground_loop - id0', 1, 173, 40, 0, 80, N'Slash', 0, 0, 0, 1092)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2567, N'id0', 3, 361, 100, 0, 0, N'Normal', 0, 0, 0, 1199)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2568, N'fast - id0', 6, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1115)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2569, N'front_hit2_late - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1754)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2570, N'hit1 - id0', 8, 80, 120, 0, 10, N'Normal', 0, 0, 5, 1125)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2571, N'id2', 7, 74, 100, 0, 40, N'Normal', 0, 0, 5, 1124)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2572, N'id1', 7, 74, 100, 0, 40, N'Normal', 0, 0, 5, 1124)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2573, N'id0', 7, 74, 100, 0, 40, N'Normal', 0, 0, 5, 1124)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2574, N'late - id0', 7, 361, 100, 0, 15, N'Normal', 0, 0, 6, 1123)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2575, N'clean - id0', 10, 80, 100, 0, 34, N'Slash', 0, 0, 6, 1123)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2576, N'inf - id0', 1, 80, 80, 0, 10, N'Normal', 0, 0, 2, 1524)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2577, N'hit2 - id0', 3, 70, 100, 0, 0, N'Slash', 0, 0, 3, 1523)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2578, N'hit1 - id0', 4, 70, 100, 0, 0, N'Slash', 0, 0, 3, 1522)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2579, N'id0', 12, 90, 60, 0, 80, N'Flame', 0, 0, 0, 1121)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2580, N'id3', 3, 0, 34, 0, 24, N'Slash', 0, 0, 0, 1120)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2581, N'id2', 3, 0, 34, 0, 24, N'Slash', 0, 0, 0, 1120)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2582, N'id1', 3, 70, 34, 0, 24, N'Slash', 0, 0, 0, 1120)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2583, N'id0', 3, 0, 34, 0, 24, N'Slash', 0, 0, 0, 1120)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2584, N'id0', 3, 361, 30, 0, 6, N'Slash', 0, 0, 0, 1119)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2585, N'id1', 3, 60, 30, 0, 8, N'Slash', 0, 0, 0, 1119)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2586, N'id2', 3, 70, 30, 0, 14, N'Slash', 0, 0, 0, 1119)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2587, N'id3', 5, 80, 30, 0, 35, N'Electric', 0, 0, 0, 1119)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2588, N'id0', 2, 120, 42, 0, 80, N'Electric', 0, 0, 0, 1118)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2589, N'hit2 - id0', 4, 80, 140, 0, 10, N'Normal', 0, 0, 5, 1125)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2590, N'id0', 8, 70, 80, 0, 35, N'Normal', 0, 0, 5, 1126)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2591, N'id1', 8, 90, 80, 0, 35, N'Normal', 0, 0, 5, 1126)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2592, N'hit1 - id0', 5, 78, 100, 60, 0, N'Normal', 0, 0, 6, 1127)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2593, N'slow - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1177)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2594, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1850)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2595, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1850)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2596, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1849)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2597, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1849)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2598, N'id1', 11, 80, 90, 0, 30, N'Normal', 0, 0, 6, 1135)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2599, N'id0', 11, 80, 90, 0, 30, N'Normal', 0, 0, 6, 1135)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2600, N'late - id0', 9, 70, 120, 0, 10, N'Normal', 0, 0, 7, 1133)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2601, N'clean - id0', 12, 80, 120, 0, 15, N'Normal', 0, 0, 7, 1133)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2602, N'id0', 11, 90, 50, 0, 80, N'Normal', 0, 0, 0, 1117)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2603, N'late - id0', 6, 361, 100, 0, 0, N'Normal', 0, 0, 8, 1132)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2604, N'id0', 13, 25, 100, 0, 0, N'Normal', 0, 0, 7, 1131)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2605, N'late - id0', 9, 361, 100, 0, 0, N'Normal', 0, 0, 8, 1130)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2606, N'clean - id0', 14, 361, 100, 0, 0, N'Normal', 0, 0, 8, 1130)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2607, N'hit3 - id0', 10, 50, 80, 0, 35, N'Normal', 0, 0, 7, 1129)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2608, N'hit2 - id0', 10, 50, 80, 0, 35, N'Normal', 0, 0, 7, 1129)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2609, N'hit1 - id0', 13, 40, 80, 0, 35, N'Normal', 0, 0, 7, 1129)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2610, N'hit2 - id0', 13, 88, 100, 0, 38, N'Slash', 0, 0, 9, 1128)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2611, N'hit1 - id0', 17, 90, 105, 0, 50, N'Slash', 0, 0, 9, 1128)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2612, N'hit2 - id0', 10, 361, 70, 0, 50, N'Normal', 0, 0, 6, 1127)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2613, N'clean - id0', 8, 361, 100, 0, 0, N'Normal', 0, 0, 8, 1132)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2614, N'id0', 11, 45, 60, 0, 80, N'Normal', 0, 0, 0, 1134)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2615, N'id0', 12, 45, 50, 0, 70, N'Normal', 0, 0, 0, 1136)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2616, N'id0', 3, 80, 100, 30, 0, N'Electric', 0, 0, 0, 1155)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2617, N'id3', 8, 270, 80, 0, 20, N'Normal', 0, 0, 5, 1145)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2618, N'id2', 8, 270, 80, 0, 20, N'Normal', 0, 0, 5, 1145)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2619, N'id1', 7, 80, 80, 0, 20, N'Normal', 0, 0, 5, 1145)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2620, N'id0', 7, 270, 80, 0, 20, N'Normal', 0, 0, 5, 1145)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2621, N'id1', 11, 70, 105, 0, 65, N'Electric', 0, 0, 6, 1144)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2622, N'id0', 11, 70, 105, 0, 65, N'Electric', 0, 0, 6, 1144)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2623, N'id2', 11, 361, 88, 0, 50, N'Normal', 0, 0, 7, 1143)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2624, N'id1', 12, 361, 88, 0, 50, N'Slash', 0, 0, 7, 1143)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2625, N'id0', 13, 110, 88, 0, 50, N'Slash', 0, 0, 7, 1143)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2626, N'hits1_4 - id0', 1, 160, 100, 40, 0, N'Normal', 0, 0, 8, 1146)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2627, N'late - id0', 8, 90, 70, 0, 20, N'Electric', 0, 0, 7, 1142)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2628, N'hit3 - id0', 2, 361, 100, 0, 10, N'Electric', 0, 0, 2, 1531)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2629, N'hits1_2 - id0', 2, 361, 100, 0, 10, N'Electric', 0, 0, 2, 1531)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2630, N'id0', 1, 70, 60, 0, 40, N'Flame', 0, 0, 0, 1140)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2631, N'air_hit2 - id0', 4, 361, 100, 120, 0, N'Flame', 0, 0, 0, 1662)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2632, N'air_hit1 - id0', 4, 80, 100, 120, 0, N'Slash', 0, 0, 0, 1662)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2633, N'ground_hit2 - id0', 4, 361, 100, 120, 0, N'Flame', 0, 0, 0, 1139)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2634, N'ground_hit1 - id0', 4, 80, 100, 120, 0, N'Slash', 0, 0, 0, 1139)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2635, N'hit6 - id0', 5, 361, 100, 0, 50, N'Slash', 0, 0, 4, 1138)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2636, N'hits1_5 - id0', 1, 10, 40, 0, 12, N'Slash', 0, 0, 4, 1138)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2637, N'clean - id0', 13, 90, 70, 0, 70, N'Electric', 0, 0, 7, 1142)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2638, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1177)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2639, N'hit5 - id0', 14, 361, 98, 0, 50, N'Electric', 0, 0, 8, 1146)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2640, N'hits7_11 - id0', 1, 90, 100, 16, 0, N'Electric', 0, 0, 5, 1147)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2641, N'fast - id0', 6, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1137)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2642, N'slow - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1137)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2643, N'front_hit2 - id0', 8, 361, 50, 0, 70, N'Normal', 0, 0, 0, 1874)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2644, N'front_hit1 - id0', 6, 361, 50, 0, 70, N'Normal', 0, 0, 0, 1874)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2645, N'back_hit2 - id0', 6, 361, 50, 0, 70, N'Normal', 0, 0, 0, 1873)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2646, N'back_hit1 - id0', 6, 361, 50, 0, 70, N'Normal', 0, 0, 0, 1873)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2647, N'id1', 7, 275, 80, 0, 0, N'Normal', 0, 0, 5, 1153)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2648, N'id0', 8, 275, 100, 0, 5, N'Normal', 0, 0, 5, 1153)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2649, N'id0', 13, 90, 120, 0, 0, N'Flame', 0, 0, 7, 1152)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2650, N'hits1_6 - id0', 1, 90, 100, 16, 0, N'Electric', 0, 0, 5, 1147)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2651, N'id2', 20, 361, 96, 0, 30, N'Electric', 0, 0, 10, 1151)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2652, N'id0', 10, 361, 80, 0, 0, N'Normal', 0, 0, 10, 1151)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2653, N'id2', 20, 361, 96, 0, 30, N'Electric', 0, 0, 10, 1150)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2654, N'id1', 10, 361, 80, 0, 0, N'Normal', 0, 0, 10, 1150)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2655, N'id0', 10, 361, 80, 0, 0, N'Normal', 0, 0, 10, 1150)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2656, N'hit6 - id0', 5, 361, 130, 0, 40, N'Normal', 0, 0, 4, 1149)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2657, N'hits1_5 - id0', 2, 130, 100, 70, 0, N'Normal', 0, 0, 4, 1149)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2658, N'hit2 - id0', 11, 30, 80, 0, 20, N'Normal', 0, 0, 6, 1148)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2659, N'hit1 - id0', 11, 30, 90, 0, 20, N'Normal', 0, 0, 6, 1148)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2660, N'hit12 - id0', 5, 90, 210, 0, 20, N'Electric', 0, 0, 5, 1147)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2661, N'id1', 10, 361, 80, 0, 0, N'Normal', 0, 0, 10, 1151)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2662, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 1158)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2663, N'id0', 2, 45, 140, 0, 40, N'Normal', 0, 0, 0, 1180)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2664, N'id0', 2, 135, 140, 0, 40, N'Normal', 0, 0, 0, 1181)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2665, N'late - id0', 6, 88, 118, 0, 40, N'Normal', 0, 0, 5, 1165)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2666, N'clean - id0', 8, 92, 118, 0, 40, N'Normal', 0, 0, 5, 1165)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2667, N'id1', 11, 361, 100, 0, 8, N'Normal', 0, 0, 6, 1164)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2668, N'id0', 11, 361, 100, 0, 8, N'Normal', 0, 0, 6, 1164)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2669, N'late - id0', 5, 105, 66, 0, 50, N'Flame', 0, 0, 5, 1163)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2670, N'clean - id0', 8, 105, 66, 0, 70, N'Flame', 0, 0, 5, 1163)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2671, N'inf - id0', 1, 65, 50, 0, 8, N'Normal', 0, 0, 2, 1499)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2672, N'hit2 - id0', 4, 70, 50, 0, 8, N'Normal', 0, 0, 3, 1498)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2673, N'hit1 - id0', 3, 361, 50, 0, 8, N'Normal', 0, 0, 3, 1497)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2674, N'id0', 10, 20, 30, 0, 40, N'Normal', 0, 0, 6, 1166)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2675, N'spit_star - id0', 18, 361, 30, 0, 60, N'Normal', 0, 0, 0, 1161)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2676, N'pan - id0', 5, 10, 30, 0, 60, N'Flame', 0, 0, 0, 1160)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2677, N'id2', 1, 361, 100, 0, 0, N'Grab', 0, 0, 0, 1159)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2678, N'id1', 1, 361, 100, 0, 0, N'Grab', 0, 0, 0, 1159)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2679, N'id0', 1, 361, 100, 0, 0, N'Grab', 0, 0, 0, 1159)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2680, N'lvl_7 - id0', 25, 361, 80, 0, 50, N'Darkness', 0, 0, 0, 1176)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2681, N'lvl_6 - id0', 20, 361, 75, 0, 45, N'Darkness', 0, 0, 0, 1176)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2682, N'lvl_5 - id0', 17, 361, 70, 0, 40, N'Darkness', 0, 0, 0, 1176)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2683, N'lvl_4 - id0', 14, 361, 65, 0, 35, N'Darkness', 0, 0, 0, 1176)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2684, N'lvl_3 - id0', 11, 361, 60, 0, 30, N'Darkness', 0, 0, 0, 1176)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2685, N'sausage - id0', 4, 70, 50, 0, 20, N'Normal', 0, 0, 0, 1160)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2686, N'lvl_2 - id0', 8, 361, 55, 0, 25, N'Darkness', 0, 0, 0, 1176)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2687, N'id1', 10, 20, 30, 0, 40, N'Normal', 0, 0, 6, 1166)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2688, N'late - id0', 13, 75, 96, 0, 18, N'Normal', 0, 0, 8, 1167)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2689, N'front_hit2_clean - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1754)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2690, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1754)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2691, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1753)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2692, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1753)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2693, N'landing - id0', 2, 361, 100, 60, 0, N'Normal', 0, 0, 0, 1175)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2694, N'hits1_6 - id0', 3, 270, 100, 0, 30, N'Normal', 0, 0, 3, 1174)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2695, N'id1', 15, 361, 100, 0, 30, N'Normal', 0, 0, 8, 1173)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2696, N'late - id0', 10, 361, 100, 0, 0, N'Normal', 0, 0, 8, 1172)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2697, N'clean - id0', 14, 361, 100, 0, 10, N'Normal', 0, 0, 8, 1172)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2698, N'clean - id0', 15, 361, 96, 0, 24, N'Normal', 0, 0, 8, 1167)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2699, N'hit3 - id0', 8, 361, 130, 0, 30, N'Normal', 0, 0, 5, 1171)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2700, N'hit1 - id0', 5, 60, 70, 0, 30, N'Normal', 0, 0, 5, 1171)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2701, N'id0', 12, 361, 80, 0, 10, N'Normal', 0, 0, 7, 1170)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2702, N'id3', 14, 28, 80, 0, 20, N'Normal', 0, 0, 8, 1169)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2703, N'id2', 14, 28, 80, 0, 20, N'Normal', 0, 0, 8, 1169)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2704, N'id1', 14, 76, 100, 0, 30, N'Normal', 0, 0, 8, 1169)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2705, N'id0', 14, 76, 100, 0, 30, N'Normal', 0, 0, 8, 1169)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2706, N'late - id0', 13, 50, 50, 0, 10, N'Normal', 0, 0, 8, 1168)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2707, N'mid - id0', 14, 88, 100, 0, 20, N'Normal', 0, 0, 8, 1168)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2708, N'clean - id0', 15, 75, 118, 0, 30, N'Slash', 0, 0, 8, 1168)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2709, N'hit2 - id0', 5, 60, 70, 0, 30, N'Normal', 0, 0, 5, 1171)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2710, N'slow - id0', 6, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1115)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2711, N'lvl_1 - id0', 5, 361, 50, 0, 20, N'Darkness', 0, 0, 0, 1176)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2712, N'air_charging - id0', 2, 80, 100, 0, 20, N'Electric', 0, 0, 0, 1176)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2713, N'air_hits1_5 - id0', 4, 110, 100, 40, 0, N'Normal', 0, 0, 12, 1558)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2714, N'ground - id0', 16, 60, 50, 0, 50, N'Normal', 0, 0, 12, 1190)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2715, N'id3', 3, 361, 0, 0, 0, N'Normal', 0, 0, 0, 1189)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2716, N'id2', 3, 361, 0, 0, 0, N'Normal', 0, 0, 0, 1189)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2717, N'id1', 3, 361, 0, 0, 0, N'Normal', 0, 0, 0, 1189)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2718, N'id0', 3, 361, 0, 0, 0, N'Normal', 0, 0, 0, 1189)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2719, N'id3', 3, 361, 100, 5, 0, N'Normal', 0, 0, 0, 1188)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2720, N'id2', 3, 361, 100, 5, 0, N'Normal', 0, 0, 0, 1188)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2721, N'id1', 3, 361, 100, 5, 0, N'Normal', 0, 0, 0, 1188)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2722, N'air_hits6_10 - id0', 2, 110, 100, 30, 0, N'Normal', 0, 0, 12, 1190)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2723, N'id0', 3, 361, 100, 5, 0, N'Normal', 0, 0, 0, 1188)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2724, N'id0', 1, 80, 30, 0, 45, N'Flame', 0, 0, 0, 1186)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2725, N'hammer - id0', 9, 80, 60, 0, 80, N'Normal', 0, 0, 0, 1185)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2726, N'id0', 5, 361, 50, 0, 5, N'Freezing', 0, 0, 0, 1185)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2727, N'id3', 3, 0, 34, 0, 24, N'Slash', 0, 0, 0, 1184)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2728, N'id2', 3, 0, 34, 0, 24, N'Slash', 0, 0, 0, 1184)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2729, N'id1', 3, 70, 34, 0, 24, N'Slash', 0, 0, 0, 1184)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2730, N'id0', 3, 0, 34, 0, 24, N'Slash', 0, 0, 0, 1184)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2731, N'id0', 3, 80, 50, 0, 70, N'Normal', 0, 0, 0, 1183)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2732, N'id0', 2, 88, 30, 0, 90, N'Normal', 0, 0, 0, 1182)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2733, N'id0', 8, 361, 25, 0, 5, N'Normal', 0, 0, 0, 1187)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2734, N'lvl_0 - id0', 3, 361, 45, 0, 15, N'Darkness', 0, 0, 0, 1176)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2735, N'wave - id0', 6, 361, 30, 0, 60, N'Slash', 0, 0, 0, 1191)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2736, N'ground - id0', 23, 361, 102, 0, 30, N'Flame', 0, 0, 0, 1193)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2737, N'ground_charging - id0', 2, 80, 100, 0, 20, N'Electric', 0, 0, 0, 1176)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2738, N'charged - id0', 50, 361, 83, 0, 50, N'Flame', 0, 0, 0, 1178)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2739, N'uncharged - id0', 6, 361, 110, 0, 40, N'Flame', 0, 0, 0, 1178)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2740, N'charged - id0', 28, 361, 100, 0, 40, N'Slash', 0, 0, 0, 1197)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2741, N'uncharged - id0', 7, 361, 100, 0, 40, N'Slash', 0, 0, 0, 1197)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2742, N'air - id0', 10, 90, 102, 0, 30, N'Normal', 0, 0, 0, 1179)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2743, N'ground - id0', 10, 20, 120, 0, 30, N'Normal', 0, 0, 0, 1179)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2744, N'hit6 - id0', 5, 361, 100, 0, 50, N'Slash', 0, 0, 0, 1196)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2745, N'hits1_5 - id0', 1, 10, 40, 0, 12, N'Slash', 0, 0, 0, 1196)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2746, N'id0', 18, 70, 55, 0, 65, N'Normal', 0, 0, 0, 1192)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2747, N'air_charged_clean - id0', 27, 361, 90, 0, 10, N'Normal', 0, 0, 0, 1195)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2748, N'air_uncharged_clean - id0', 10, 361, 100, 0, 15, N'Normal', 0, 0, 0, 1195)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2749, N'air_uncharged_early - id0', 12, 80, 100, 0, 15, N'Normal', 0, 0, 0, 1195)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2750, N'ground_charged_clean - id0', 30, 361, 90, 0, 10, N'Normal', 0, 0, 0, 1195)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2751, N'ground_charged_early - id0', 18, 80, 90, 0, 40, N'Normal', 0, 0, 0, 1195)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2752, N'ground_uncharged_clean - id0', 10, 361, 100, 0, 15, N'Normal', 0, 0, 0, 1195)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2753, N'ground_uncharged_early - id0', 12, 80, 100, 0, 15, N'Normal', 0, 0, 0, 1195)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2754, N'air - id0', 30, 361, 100, 0, 40, N'Darkness', 0, 0, 0, 1194)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2755, N'ground - id0', 30, 361, 100, 0, 30, N'Darkness', 0, 0, 0, 1194)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2756, N'air - id0', 23, 361, 102, 0, 40, N'Flame', 0, 0, 0, 1193)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2757, N'air_charged_early - id0', 16, 80, 90, 0, 40, N'Normal', 0, 0, 0, 1195)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2758, N'id0', 3, 55, 110, 0, 25, N'Normal', 0, 0, 0, 1200)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2759, N'id0', 3, 130, 110, 0, 24, N'Normal', 0, 0, 0, 1306)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2760, N'id0', 2, 90, 230, 0, 18, N'Normal', 0, 0, 0, 1307)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2761, N'ang_down - id0', 13, 361, 100, 0, 31, N'Normal', 0, 0, 0, 1637)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2762, N'ang_side - id0', 14, 361, 100, 0, 25, N'Normal', 0, 0, 8, 1206)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2763, N'ang_up - id0', 15, 361, 100, 0, 29, N'Normal', 0, 0, 0, 1636)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2764, N'late - id0', 8, 80, 30, 0, 80, N'Normal', 0, 0, 6, 1205)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2765, N'clean - id0', 11, 80, 30, 0, 120, N'Normal', 0, 0, 6, 1205)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2766, N'hit2 - id0', 6, 361, 110, 0, 30, N'Slash', 0, 0, 4, 1533)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2767, N'hit1 - id0', 5, 83, 100, 20, 0, N'Slash', 0, 0, 4, 1532)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2768, N'id0', 2, 60, 50, 0, 12, N'Flame', 0, 0, 0, 1203)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2769, N'landing - id0', 8, 76, 72, 0, 60, N'Normal', 0, 0, 0, 1202)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2770, N'air - id0', 21, 76, 72, 0, 45, N'Normal', 0, 0, 0, 1537)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2771, N'ground - id0', 21, 76, 72, 0, 45, N'Normal', 0, 0, 0, 1202)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2772, N'air_hits7_11 - id0', 2, 84, 20, 0, 50, N'Slash', 0, 0, 3, 1538)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2773, N'air_hits2_6 - id0', 3, 84, 20, 0, 50, N'Slash', 0, 0, 3, 1538)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2774, N'air_hit1 - id0', 10, 80, 60, 0, 80, N'Normal', 0, 0, 3, 1538)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2775, N'ground_hits7_11 - id0', 3, 70, 50, 0, 50, N'Slash', 0, 0, 3, 1201)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2776, N'ground_hits2_6 - id0', 5, 90, 50, 0, 80, N'Slash', 0, 0, 3, 1201)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2777, N'ground_hit1 - id0', 13, 80, 80, 0, 90, N'Normal', 0, 0, 3, 1201)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2778, N'unknown7 - id1', 5, 0, 16, 0, 50, N'Normal', 0, 0, 7, 1218)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2779, N'unknown6 - id0', 10, 361, 100, 0, 60, N'Normal', 0, 0, 7, 1218)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2780, N'id0', 13, 100, 120, 0, 40, N'Slash', 0, 0, 7, 1207)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2781, N'id1', 13, 100, 120, 0, 40, N'Slash', 0, 0, 7, 1207)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2782, N'hit1 - id0', 13, 361, 100, 0, 15, N'Slash', 0, 0, 7, 1208)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2783, N'hit2 - id0', 10, 361, 100, 0, 12, N'Slash', 0, 0, 7, 1208)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2784, N'slow - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1219)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2785, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1674)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2786, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1674)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2787, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1673)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2788, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1673)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2789, N'landing - id0', 2, 20, 30, 0, 58, N'Slash', 0, 0, 3, 1216)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2790, N'hits1_9 - id0', 3, 80, 100, 10, 0, N'Slash', 0, 0, 3, 1216)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2791, N'id0', 17, 85, 100, 0, 50, N'Normal', 0, 0, 9, 1215)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2792, N'late - id0', 9, 361, 80, 0, 25, N'Slash', 0, 0, 7, 1214)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2793, N'unknown5 - id1', 5, 0, 16, 0, 50, N'Normal', 0, 0, 7, 1218)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2794, N'clean - id0', 13, 24, 80, 0, 25, N'Slash', 0, 0, 7, 1214)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2795, N'id1', 12, 361, 80, 0, 50, N'Normal', 0, 0, 8, 1213)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2796, N'id0', 14, 361, 80, 0, 50, N'Normal', 0, 0, 8, 1213)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2797, N'id0', 13, 361, 80, 0, 20, N'Normal', 0, 0, 7, 1212)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2798, N'hit7 - id0', 10, 90, 140, 0, 40, N'Slash', 0, 0, 6, 1211)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2799, N'hits1_6 - id0', 2, 150, 50, 0, 40, N'Slash', 0, 0, 6, 1211)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2800, N'hit2 - id0', 12, 74, 100, 0, 60, N'Normal', 0, 0, 10, 1210)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2801, N'hit1 - id0', 20, 90, 86, 0, 40, N'Slash', 0, 0, 10, 1210)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2802, N'id1', 24, 60, 100, 0, 30, N'Normal', 0, 0, 12, 1209)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2803, N'id0', 24, 361, 100, 0, 30, N'Normal', 0, 0, 12, 1209)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2804, N'id2', 11, 361, 80, 0, 50, N'Normal', 0, 0, 8, 1213)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2805, N'unknown4 - id0', 11, 361, 100, 0, 60, N'Normal', 0, 0, 7, 1218)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2806, N'unknown3 - id1', 5, 0, 20, 0, 50, N'Normal', 0, 0, 7, 1218)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2807, N'unknown2 - id0', 11, 30, 20, 0, 50, N'Normal', 0, 0, 7, 1218)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2808, N'hit2 - id0', 5, 361, 100, 0, 10, N'Normal', 0, 0, 5, 1230)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2809, N'hit1 - id0', 7, 361, 100, 0, 10, N'Normal', 0, 0, 5, 1230)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2810, N'late - id0', 9, 361, 100, 0, 0, N'Normal', 0, 0, 7, 1229)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2811, N'clean - id0', 12, 361, 100, 0, 10, N'Normal', 0, 0, 7, 1229)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2812, N'id3', 12, 361, 65, 0, 20, N'Normal', 0, 0, 8, 1228)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2813, N'id2', 12, 361, 65, 0, 20, N'Normal', 0, 0, 8, 1228)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2814, N'id1', 15, 25, 65, 0, 20, N'Normal', 0, 0, 8, 1228)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2815, N'id0', 15, 25, 65, 0, 20, N'Normal', 0, 0, 8, 1228)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2816, N'late - id0', 13, 361, 100, 0, 10, N'Normal', 0, 0, 10, 1227)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2817, N'hit3 - id0', 6, 361, 100, 0, 10, N'Normal', 0, 0, 5, 1230)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2818, N'clean - id0', 18, 80, 112, 0, 30, N'Normal', 0, 0, 10, 1227)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2819, N'clean - id0', 15, 361, 105, 0, 10, N'Normal', 0, 0, 8, 1226)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2820, N'id2', 10, 90, 125, 0, 25, N'Normal', 0, 0, 6, 1225)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2821, N'id1', 10, 80, 125, 0, 25, N'Normal', 0, 0, 6, 1225)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2822, N'id0', 10, 70, 125, 0, 25, N'Normal', 0, 0, 6, 1225)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2823, N'id3', 9, 80, 140, 0, 18, N'Normal', 0, 0, 7, 1224)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2824, N'id2', 9, 80, 140, 0, 18, N'Normal', 0, 0, 7, 1224)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2825, N'id1', 9, 84, 140, 0, 18, N'Normal', 0, 0, 7, 1224)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2826, N'id0', 12, 110, 140, 0, 18, N'Normal', 0, 0, 7, 1224)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2827, N'id2', 9, 361, 100, 0, 0, N'Normal', 0, 0, 6, 1223)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2828, N'late - id0', 12, 361, 100, 0, 2, N'Normal', 0, 0, 8, 1226)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2829, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1219)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2830, N'hit4 - id0', 4, 361, 100, 0, 10, N'Normal', 0, 0, 5, 1230)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2831, N'clean - id0', 15, 361, 100, 0, 0, N'Normal', 0, 0, 8, 1231)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2832, N'unknown1 - id1', 5, 361, 100, 0, 0, N'Normal', 0, 0, 7, 1218)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2833, N'bite - id0', 4, 80, 15, 0, 140, N'Slash', 0, 0, 7, 1218)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2834, N'slash - id2', 12, 80, 90, 0, 80, N'Slash', 0, 0, 7, 1218)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2835, N'id0', 6, 361, 100, 0, 30, N'Normal', 0, 0, 0, 1220)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2836, N'id0', 1, 270, 40, 0, 150, N'Normal', 0, 0, 0, 1239)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2837, N'id0', 2, 90, 110, 0, 75, N'Normal', 0, 0, 0, 1221)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2838, N'id0', 2, 56, 85, 0, 80, N'Normal', 0, 0, 0, 1238)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2839, N'id0', 3, 45, 130, 0, 35, N'Normal', 0, 0, 0, 1237)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2840, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 1236)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2841, N'hit5 - id0', 3, 361, 100, 0, 50, N'Normal', 0, 0, 5, 1230)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2842, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1235)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2843, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1714)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2844, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1714)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2845, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1713)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2846, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1713)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2847, N'id1', 2, 290, 100, 30, 0, N'Normal', 0, 0, 3, 1233)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2848, N'id0', 3, 290, 100, 30, 0, N'Normal', 0, 0, 3, 1233)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2849, N'hit2 - id0', 13, 85, 116, 0, 40, N'Normal', 0, 0, 7, 1232)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2850, N'hit1 - id0', 5, 92, 120, 30, 0, N'Normal', 0, 0, 7, 1232)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2851, N'late - id0', 9, 361, 100, 0, 0, N'Normal', 0, 0, 8, 1231)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2852, N'slow - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1235)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2853, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 1241)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2854, N'id0', 10, 45, 50, 0, 60, N'Normal', 0, 0, 0, 1261)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2855, N'id0', 10, 45, 50, 0, 60, N'Normal', 0, 0, 0, 1242)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2856, N'hit1 - id0', 6, 83, 100, 20, 0, N'Darkness', 0, 0, 4, 1510)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2857, N'id0', 1, 361, 100, 0, 100, N'Stun', 0, 0, 0, 1251)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2858, N'lvl_7 - id0', 25, 361, 70, 0, 50, N'Darkness', 0, 0, 0, 1250)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2859, N'id0', 4, 90, 50, 0, 60, N'Normal', 0, 0, 0, 1249)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2860, N'id0', 2, 90, 230, 0, 24, N'Normal', 0, 0, 0, 1248)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2861, N'id0', 3, 130, 110, 0, 24, N'Normal', 0, 0, 0, 1247)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2862, N'id0', 3, 55, 110, 0, 25, N'Normal', 0, 0, 0, 1246)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2863, N'id0', 3, 361, 100, 0, 0, N'Normal', 0, 0, 0, 1245)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2864, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1244)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2865, N'inf - id0', 2, 70, 70, 0, 0, N'Darkness', 0, 0, 2, 1511)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2866, N'slow - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1244)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2867, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1762)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2868, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1761)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2869, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1761)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2870, N'late - id0', 19, 65, 80, 0, 50, N'Slash', 0, 0, 11, 1260)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2871, N'early - id0', 22, 65, 80, 0, 50, N'Slash', 0, 0, 11, 1260)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2872, N'id2', 16, 80, 85, 0, 25, N'Slash', 0, 0, 9, 1262)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2873, N'id1', 16, 80, 85, 0, 25, N'Slash', 0, 0, 9, 1262)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2874, N'id0', 16, 80, 85, 0, 25, N'Slash', 0, 0, 9, 1262)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2875, N'hit2 - id0', 7, 361, 100, 0, 15, N'Normal', 0, 0, 5, 1281)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2876, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Slash', 0, 0, 0, 1762)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2877, N'hit1 - id0', 7, 361, 100, 0, 0, N'Normal', 0, 0, 5, 1281)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2878, N'clean - id0', 9, 80, 60, 0, 80, N'Darkness', 0, 0, 6, 1253)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2879, N'ang_up - id0', 10, 361, 100, 0, 20, N'Slash', 0, 0, 0, 1634)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2880, N'id1', 11, 361, 100, 0, 0, N'Normal', 0, 0, 7, 1032)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2881, N'id2', 13, 361, 100, 0, 0, N'Normal', 0, 0, 7, 1032)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2882, N'id1', 14, 84, 100, 0, 40, N'Darkness', 0, 0, 8, 1282)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2883, N'id0', 14, 84, 100, 0, 40, N'Darkness', 0, 0, 8, 1282)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2884, N'landing - id0', 4, 361, 70, 0, 60, N'Electric', 0, 0, 3, 1033)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2885, N'hit9 - id0', 4, 361, 80, 0, 70, N'Electric', 0, 0, 3, 1033)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2886, N'hits1_8 - id0', 2, 160, 100, 20, 20, N'Electric', 0, 0, 3, 1033)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2887, N'id1', 15, 361, 103, 0, 20, N'Darkness', 0, 0, 8, 1259)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2888, N'id0', 15, 361, 103, 0, 20, N'Darkness', 0, 0, 8, 1259)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2889, N'late - id0', 6, 80, 60, 0, 40, N'Darkness', 0, 0, 6, 1253)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2890, N'hit7 - id0', 10, 90, 118, 0, 40, N'Darkness', 0, 0, 6, 1258)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2891, N'id1', 20, 361, 75, 0, 21, N'Darkness', 0, 0, 10, 1257)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2892, N'id0', 12, 361, 80, 0, 30, N'Darkness', 0, 0, 10, 1257)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2893, N'id2', 5, 80, 80, 0, 40, N'Normal', 0, 0, 6, 1256)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2894, N'id1', 8, 80, 80, 0, 40, N'Normal', 0, 0, 6, 1256)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2895, N'id0', 9, 80, 80, 0, 40, N'Normal', 0, 0, 6, 1256)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2896, N'late - id0', 10, 78, 114, 0, 60, N'Normal', 0, 0, 6, 1255)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2897, N'clean - id0', 10, 110, 115, 0, 0, N'Normal', 0, 0, 6, 1255)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2898, N'ang_down - id0', 10, 361, 100, 0, 20, N'Slash', 0, 0, 0, 1635)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2899, N'ang_side - id0', 10, 361, 100, 0, 20, N'Slash', 0, 0, 6, 1254)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2900, N'hits1_6 - id0', 1, 95, 100, 40, 0, N'Darkness', 0, 0, 6, 1258)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2901, N'id1', 9, 361, 100, 0, 0, N'Normal', 0, 0, 6, 1223)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2902, N'hit2 - id0', 8, 361, 90, 0, 0, N'Slash', 0, 0, 7, 1263)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2903, N'late - id0', 7, 361, 100, 0, 10, N'Normal', 0, 0, 6, 1280)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2904, N'inf - id0', 1, 0, 40, 0, 15, N'Slash', 0, 0, 2, 1503)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2905, N'hit3 - id0', 6, 361, 100, 0, 10, N'Slash', 0, 0, 4, 1502)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2906, N'hit2 - id0', 3, 361, 60, 0, 10, N'Slash', 0, 0, 3, 1501)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2907, N'hit1 - id0', 5, 361, 60, 0, 10, N'Slash', 0, 0, 4, 1500)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2908, N'id0', 4, 70, 60, 0, 60, N'Flame', 0, 0, 0, 1271)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2909, N'return - id0', 3, 70, 26, 0, 25, N'Normal', 0, 0, 0, 1270)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2910, N'late - id0', 6, 65, 30, 0, 55, N'Slash', 0, 0, 0, 1270)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2911, N'clean - id0', 8, 70, 30, 0, 55, N'Slash', 0, 0, 0, 1270)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2912, N'id0', 1, 70, 50, 0, 8, N'Slash', 0, 0, 0, 1269)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2913, N'id3', 9, 90, 100, 0, 10, N'Slash', 0, 0, 7, 1273)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2914, N'id1', 6, 361, 40, 0, 30, N'Slash', 0, 0, 0, 1268)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2915, N'air_hit5 - id0', 4, 361, 160, 0, 40, N'Slash', 0, 0, 8, 1559)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2916, N'air_hit4 - id0', 2, 90, 100, 46, 0, N'Slash', 0, 0, 8, 1559)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2917, N'air_hit3 - id0', 2, 90, 100, 58, 0, N'Slash', 0, 0, 8, 1559)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2918, N'air_hit2 - id0', 2, 90, 100, 64, 0, N'Slash', 0, 0, 8, 1559)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2919, N'air_hit1 - id0', 4, 90, 100, 72, 0, N'Slash', 0, 0, 8, 1559)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2920, N'ground_late - id0', 5, 0, 100, 0, 60, N'Slash', 0, 0, 8, 1266)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2921, N'ground_clean - id0', 15, 361, 95, 0, 32, N'Slash', 0, 0, 8, 1266)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2922, N'id0', 0, 50, 30, 0, 75, N'Normal', 0, 0, 0, 1265)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2923, N'id0', 2, 70, 100, 120, 0, N'Normal', 0, 0, 0, 1264)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2924, N'id1', 6, 361, 40, 0, 30, N'Slash', 0, 0, 0, 1267)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2925, N'hit1 - id0', 13, 361, 100, 0, 5, N'Slash', 0, 0, 7, 1263)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2926, N'id0', 12, 80, 100, 0, 10, N'Slash', 0, 0, 7, 1273)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2927, N'id2', 11, 60, 100, 0, 10, N'Slash', 0, 0, 7, 1273)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2928, N'clean - id0', 9, 361, 100, 0, 15, N'Normal', 0, 0, 6, 1280)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2929, N'hit2 - id0', 11, 75, 90, 0, 20, N'Slash', 0, 0, 9, 1279)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2930, N'hit1 - id0', 13, 75, 90, 0, 26, N'Slash', 0, 0, 9, 1279)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2931, N'hit3 - id0', 10, 80, 80, 0, 90, N'Slash', 0, 0, 8, 1278)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2932, N'hit2 - id0', 2, 90, 100, 30, 0, N'Slash', 0, 0, 8, 1278)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2933, N'hit1 - id0', 4, 98, 100, 26, 40, N'Slash', 0, 0, 8, 1278)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2934, N'hit2 - id0', 18, 65, 100, 0, 30, N'Slash', 0, 0, 9, 1277)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2935, N'hit1 - id0', 13, 361, 83, 0, 30, N'Slash', 0, 0, 9, 1277)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2936, N'id3', 11, 280, 50, 0, 80, N'Slash', 0, 0, 6, 1276)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2937, N'id1', 11, 70, 100, 0, 10, N'Slash', 0, 0, 7, 1273)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2938, N'id2', 11, 280, 50, 0, 80, N'Slash', 0, 0, 6, 1276)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2939, N'id0', 11, 80, 50, 0, 80, N'Slash', 0, 0, 6, 1276)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2940, N'id3', 9, 85, 123, 0, 30, N'Slash', 0, 0, 6, 1275)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2941, N'id2', 9, 85, 124, 0, 30, N'Slash', 0, 0, 6, 1275)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2942, N'id1', 9, 85, 130, 0, 30, N'Slash', 0, 0, 6, 1275)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2943, N'id0', 9, 95, 122, 0, 30, N'Slash', 0, 0, 6, 1275)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2944, N'id3', 13, 361, 90, 0, 2, N'Slash', 0, 0, 6, 1274)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2945, N'id2', 14, 361, 90, 0, 2, N'Slash', 0, 0, 6, 1274)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2946, N'id1', 15, 361, 90, 0, 5, N'Slash', 0, 0, 6, 1274)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2947, N'id0', 14, 361, 90, 0, 5, N'Slash', 0, 0, 6, 1274)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2948, N'id1', 11, 280, 50, 0, 80, N'Slash', 0, 0, 6, 1276)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2949, N'id0', 9, 361, 100, 0, 0, N'Normal', 0, 0, 6, 1223)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2950, N'late - id0', 5, 72, 90, 0, 20, N'Normal', 0, 0, 5, 1222)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2951, N'clean - id0', 7, 72, 90, 0, 35, N'Normal', 0, 0, 5, 1222)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2952, N'id0', 12, 110, 80, 0, 30, N'Reverse', 0, 0, 7, 1295)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2953, N'id0', 6, 361, 100, 0, 30, N'Normal', 0, 0, 0, 1294)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2954, N'id0', 6, 40, 26, 0, 65, N'Normal', 0, 0, 0, 1293)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2955, N'id0', 7, 90, 30, 0, 90, N'Normal', 0, 0, 0, 1292)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2956, N'id0', 8, 55, 50, 0, 80, N'Normal', 0, 0, 0, 1291)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2957, N'id0', 8, 55, 50, 0, 80, N'Normal', 0, 0, 0, 1290)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2958, N'id0', 7, 361, 45, 0, 60, N'Normal', 0, 0, 0, 1289)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2959, N'id0', 9, 90, 50, 0, 70, N'Normal', 0, 0, 0, 1288)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2960, N'id0', 11, 45, 65, 0, 60, N'Normal', 0, 0, 0, 1287)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2961, N'id1', 10, 110, 80, 0, 30, N'Reverse', 0, 0, 7, 1295)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2962, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 1286)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2963, N'slow - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1285)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2964, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1698)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2965, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1698)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2966, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1697)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2967, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1697)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2968, N'id2', 13, 270, 90, 0, 20, N'Normal', 0, 0, 9, 1304)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2969, N'id1', 13, 270, 90, 0, 20, N'Normal', 0, 0, 9, 1304)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2970, N'id0', 16, 270, 90, 0, 38, N'Normal', 0, 0, 9, 1304)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2971, N'id0', 14, 90, 90, 0, 32, N'Normal', 0, 0, 8, 1323)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2972, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1285)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2973, N'late - id0', 9, 361, 100, 0, 0, N'Normal', 0, 0, 7, 1305)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2974, N'id2', 10, 110, 80, 0, 30, N'Reverse', 0, 0, 7, 1295)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2975, N'hits2_3 - id0', 2, 74, 100, 140, 0, N'Coin', 0, 0, 4, 1296)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2976, N'clean - id0', 10, 361, 95, 0, 20, N'Normal', 0, 0, 6, 1303)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2977, N'ang_down - id0', 7, 361, 100, 0, 9, N'Normal', 0, 0, 0, 1645)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2978, N'ang_side - id0', 8, 361, 100, 0, 10, N'Normal', 0, 0, 5, 1301)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2979, N'ang_up - id0', 9, 361, 100, 0, 11, N'Normal', 0, 0, 0, 1644)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2980, N'late - id0', 8, 85, 50, 0, 60, N'Normal', 0, 0, 6, 1300)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2981, N'clean - id0', 9, 80, 30, 0, 70, N'Normal', 0, 0, 6, 1300)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2982, N'hit3 - id0', 6, 361, 100, 0, 18, N'Normal', 0, 0, 4, 1492)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2983, N'hit2 - id0', 3, 83, 100, 30, 0, N'Normal', 0, 0, 3, 1491)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2984, N'hit1 - id0', 4, 83, 100, 30, 0, N'Normal', 0, 0, 3, 1490)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2985, N'hit1 - id0', 5, 70, 100, 150, 0, N'Coin', 0, 0, 4, 1296)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2986, N'id0', 8, 361, 25, 0, 5, N'Normal', 0, 0, 0, 1298)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2987, N'air_hit4 - id0', 1, 100, 0, 1, 50, N'Normal', 0, 0, 3, 1546)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2988, N'air_hits2_3 - id0', 2, 160, 0, 1, 40, N'Normal', 0, 0, 3, 1546)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2989, N'air_hit1 - id0', 3, 140, 0, 40, 0, N'Normal', 0, 0, 3, 1546)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2990, N'ground_hit5 - id0', 4, 361, 120, 0, 75, N'Normal', 0, 0, 3, 1297)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2991, N'ground_hit4 - id0', 3, 100, 0, 5, 40, N'Normal', 0, 0, 3, 1297)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2992, N'ground_hits2_3 - id0', 2, 180, 0, 5, 40, N'Normal', 0, 0, 3, 1297)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2993, N'ground_hit1 - id0', 3, 140, 0, 40, 0, N'Normal', 0, 0, 3, 1297)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2994, N'hit6 - id0', 3, 80, 160, 0, 40, N'Coin', 0, 0, 4, 1296)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2995, N'hits4_5 - id0', 2, 72, 100, 90, 0, N'Coin', 0, 0, 4, 1296)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2996, N'air_hit5 - id0', 4, 361, 120, 0, 80, N'Normal', 0, 0, 3, 1546)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2997, N'late - id0', 8, 100, 122, 0, 30, N'Normal', 0, 0, 6, 1303)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2998, N'clean - id0', 13, 361, 100, 0, 10, N'Normal', 0, 0, 7, 1305)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (2999, N'early - id0', 16, 361, 100, 0, 20, N'Normal', 0, 0, 9, 1322)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3000, N'hit1 - id0', 4, 361, 100, 0, 0, N'Normal', 0, 0, 3, 1486)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3001, N'hit2 - id0', 11, 84, 100, 110, 30, N'Normal', 0, 0, 6, 1312)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3002, N'hit1 - id0', 11, 84, 100, 110, 20, N'Normal', 0, 0, 6, 1312)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3003, N'air_hits6_8 - id0', 2, 361, 100, 0, 0, N'Normal', 0, 0, 7, 1544)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3004, N'air_hits2_5 - id0', 5, 361, 70, 0, 20, N'Normal', 0, 0, 7, 1544)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3005, N'air_hit1 - id0', 10, 361, 80, 0, 40, N'Normal', 0, 0, 7, 1544)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3006, N'ground_hits4_5 - id0', 3, 361, 90, 0, 10, N'Normal', 0, 0, 7, 1311)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3007, N'ground_hits2_3 - id0', 8, 361, 70, 0, 50, N'Normal', 0, 0, 7, 1311)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3008, N'ground_hit1 - id0', 12, 361, 100, 0, 60, N'Normal', 0, 0, 7, 1311)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3009, N'hit2 - id0', 6, 361, 100, 0, 0, N'Normal', 0, 0, 4, 1487)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3010, N'air - id0', 10, 270, 100, 100, 0, N'Normal', 0, 0, 4, 1543)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3011, N'air_fullcharge_late - id0', 27, 361, 90, 0, 10, N'Normal', 0, 0, 15, 1545)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3012, N'air_fullcharge_early - id0', 16, 80, 90, 0, 40, N'Normal', 0, 0, 15, 1545)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3013, N'air_uncharged_late - id0', 10, 361, 100, 0, 15, N'Normal', 0, 0, 15, 1545)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3014, N'air_uncharged_early - id0', 12, 80, 100, 0, 15, N'Normal', 0, 0, 15, 1545)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3015, N'ground_fullcharge_late - id0', 30, 361, 90, 0, 10, N'Normal', 0, 0, 15, 1309)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3016, N'ground_fullcharge_early - id0', 18, 80, 90, 0, 40, N'Normal', 0, 0, 15, 1309)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3017, N'ground_uncharged_clean - id0', 10, 361, 100, 0, 15, N'Normal', 0, 0, 15, 1309)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3018, N'ground_uncharged_early - id0', 12, 80, 100, 0, 15, N'Normal', 0, 0, 15, 1309)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3019, N'id0', 4, 90, 50, 0, 60, N'Normal', 0, 0, 0, 1308)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3020, N'ground - id0', 5, 270, 100, 100, 0, N'Bury', 0, 0, 4, 1310)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3021, N'clean - id0', 16, 270, 80, 0, 50, N'Normal', 0, 0, 9, 1322)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3022, N'clean - id0', 11, 100, 15, 0, 115, N'Normal', 0, 0, 6, 1314)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3023, N'ang_up - id0', 11, 361, 100, 0, 10, N'Normal', 0, 0, 0, 1640)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3024, N'late - id0', 10, 361, 100, 0, 0, N'Normal', 0, 0, 7, 1321)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3025, N'clean - id0', 12, 361, 100, 0, 0, N'Normal', 0, 0, 7, 1321)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3026, N'id3', 14, 98, 100, 0, 35, N'Normal', 0, 0, 9, 1320)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3027, N'id2', 14, 98, 100, 0, 35, N'Normal', 0, 0, 9, 1320)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3028, N'id1', 16, 115, 100, 0, 35, N'Normal', 0, 0, 9, 1320)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3029, N'id0', 16, 115, 100, 0, 35, N'Normal', 0, 0, 9, 1320)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3030, N'id1', 18, 90, 93, 0, 40, N'Normal', 0, 0, 10, 1319)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3031, N'id0', 18, 90, 93, 0, 40, N'Normal', 0, 0, 10, 1319)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3032, N'id3', 18, 361, 100, 0, 18, N'Normal', 0, 0, 11, 1318)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3033, N'late - id0', 9, 100, 100, 120, 0, N'Normal', 0, 0, 6, 1314)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3034, N'id2', 19, 361, 100, 0, 18, N'Normal', 0, 0, 11, 1318)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3035, N'id0', 20, 361, 94, 0, 22, N'Normal', 0, 0, 11, 1318)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3036, N'id2', 7, 40, 80, 0, 10, N'Normal', 0, 0, 5, 1317)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3037, N'id1', 7, 40, 80, 0, 10, N'Normal', 0, 0, 5, 1317)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3038, N'id0', 7, 40, 80, 0, 10, N'Normal', 0, 0, 5, 1317)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3039, N'id2', 11, 100, 115, 0, 40, N'Normal', 0, 0, 6, 1316)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3040, N'id1', 10, 100, 110, 0, 40, N'Normal', 0, 0, 6, 1316)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3041, N'id0', 9, 100, 105, 0, 40, N'Normal', 0, 0, 6, 1316)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3042, N'ang_down - id0', 9, 361, 100, 0, 10, N'Normal', 0, 0, 0, 1641)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3043, N'ang_side - id0', 10, 361, 100, 0, 10, N'Normal', 0, 0, 6, 1315)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3044, N'id1', 21, 361, 94, 0, 22, N'Normal', 0, 0, 11, 1318)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3045, N'id2', 14, 55, 100, 0, 0, N'Normal', 0, 0, 8, 947)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3046, N'id0', 9, 150, 82, 0, 20, N'Normal', 0, 0, 6, 1325)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3047, N'id2', 9, 150, 82, 0, 20, N'Normal', 0, 0, 6, 1325)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3048, N'clean - id0', 12, 290, 100, 0, 10, N'Normal', 0, 0, 7, 1335)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3049, N'hit2 - id0', 10, 70, 120, 0, 22, N'Normal', 0, 0, 6, 1334)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3050, N'hit1 - id0', 6, 90, 20, 0, 40, N'Slash', 0, 0, 6, 1334)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3051, N'late - id0', 9, 361, 100, 0, 0, N'Normal', 0, 0, 8, 1333)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3052, N'clean - id0', 15, 361, 100, 0, 0, N'Normal', 0, 0, 8, 1333)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3053, N'hit5 - id0', 3, 361, 100, 0, 50, N'Normal', 0, 0, 6, 1332)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3054, N'hit4 - id0', 5, 361, 100, 0, 10, N'Normal', 0, 0, 6, 1332)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3055, N'hit3 - id0', 7, 361, 100, 0, 10, N'Normal', 0, 0, 6, 1332)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3056, N'hit2 - id0', 8, 361, 100, 0, 10, N'Normal', 0, 0, 6, 1332)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3057, N'late - id0', 9, 290, 100, 0, 20, N'Normal', 0, 0, 7, 1335)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3058, N'hit1 - id0', 9, 361, 100, 0, 10, N'Normal', 0, 0, 6, 1332)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3059, N'clean - id0', 12, 361, 100, 0, 10, N'Normal', 0, 0, 7, 1331)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3060, N'id3', 13, 80, 70, 0, 20, N'Normal', 0, 0, 9, 1330)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3061, N'id2', 13, 80, 70, 0, 20, N'Normal', 0, 0, 9, 1330)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3062, N'id1', 16, 25, 70, 0, 20, N'Normal', 0, 0, 9, 1330)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3063, N'id0', 16, 25, 70, 0, 20, N'Normal', 0, 0, 9, 1330)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3064, N'late - id0', 12, 361, 100, 0, 10, N'Normal', 0, 0, 8, 1329)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3065, N'clean - id0', 14, 95, 100, 0, 25, N'Normal', 0, 0, 8, 1329)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3066, N'late - id0', 14, 361, 105, 0, 10, N'Normal', 0, 0, 9, 1328)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3067, N'clean - id0', 17, 361, 90, 0, 40, N'Normal', 0, 0, 9, 1328)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3068, N'late - id0', 9, 361, 100, 0, 0, N'Normal', 0, 0, 7, 1331)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3069, N'id2', 13, 75, 125, 0, 25, N'Slash', 0, 0, 7, 1327)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3070, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1705)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3071, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1706)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3072, N'inf - id0', 1, 78, 80, 0, 10, N'Normal', 0, 0, 0, 1625)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3073, N'hit2 - id0', 4, 70, 100, 0, 0, N'Normal', 0, 0, 3, 1482)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3074, N'hit1 - id0', 4, 70, 100, 0, 0, N'Normal', 0, 0, 3, 1481)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3075, N'air - id0', 7, 80, 60, 0, 68, N'Slash', 0, 0, 0, 1554)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3076, N'ground - id0', 7, 80, 40, 0, 68, N'Slash', 0, 0, 0, 1283)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3077, N'id3', 3, 361, 0, 0, 0, N'Normal', 0, 0, 0, 1324)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3078, N'id2', 3, 361, 0, 0, 0, N'Normal', 0, 0, 0, 1324)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3079, N'id1', 3, 361, 0, 0, 0, N'Normal', 0, 0, 0, 1324)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3080, N'id0', 3, 361, 0, 0, 0, N'Normal', 0, 0, 0, 1324)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3081, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1705)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3082, N'id0', 5, 0, 100, 80, 0, N'Electric', 0, 0, 5, 1284)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3083, N'chargeup - id0', 2, 70, 40, 0, 40, N'Flame', 0, 0, 0, 1343)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3084, N'id0', 1, 270, 40, 0, 150, N'Normal', 0, 0, 0, 1342)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3085, N'id0', 2, 90, 110, 0, 75, N'Normal', 0, 0, 0, 1341)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3086, N'id0', 2, 56, 85, 0, 80, N'Normal', 0, 0, 0, 1340)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3087, N'id0', 3, 45, 135, 0, 35, N'Normal', 0, 0, 0, 1339)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3088, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 1338)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3089, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1337)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3090, N'slow - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1337)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3091, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1706)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3092, N'launch - id0', 14, 80, 60, 0, 60, N'Flame', 0, 0, 0, 1343)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3093, N'id1', 9, 150, 82, 0, 20, N'Normal', 0, 0, 6, 1325)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3094, N'id1', 13, 75, 125, 0, 25, N'Slash', 0, 0, 7, 1327)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3095, N'id1', 9, 90, 120, 0, 30, N'Normal', 0, 0, 6, 1344)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3096, N'front_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1690)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3097, N'front_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1690)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3098, N'back_hit2 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1689)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3099, N'back_hit1 - id0', 6, 361, 50, 0, 80, N'Normal', 0, 0, 0, 1689)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3100, N'hits1_7 - id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 3, 1353)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3101, N'id1', 10, 55, 100, 0, 0, N'Normal', 0, 0, 6, 1352)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3102, N'id0', 10, 55, 100, 0, 0, N'Normal', 0, 0, 6, 1352)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3103, N'late - id0', 7, 361, 100, 0, 20, N'Normal', 0, 0, 5, 1351)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3104, N'clean - id0', 8, 28, 65, 0, 43, N'Normal', 0, 0, 5, 1351)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3105, N'slow - id0', 10, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1355)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3106, N'id1', 16, 60, 100, 0, 40, N'Normal', 0, 0, 9, 1350)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3107, N'late - id0', 14, 361, 100, 0, 20, N'Normal', 0, 0, 8, 1349)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3108, N'clean - id0', 10, 50, 100, 0, 20, N'Normal', 0, 0, 8, 1349)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3109, N'hit2 - id0', 15, 361, 75, 0, 40, N'Normal', 0, 0, 10, 1348)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3110, N'hit1 - id0', 18, 361, 75, 0, 45, N'Normal', 0, 0, 10, 1348)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3111, N'late - id0', 13, 76, 95, 0, 35, N'Normal', 0, 0, 9, 1326)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3112, N'clean - id0', 16, 83, 95, 0, 35, N'Normal', 0, 0, 9, 1326)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3113, N'ang_down - id0', 18, 361, 97, 0, 30, N'Electric', 0, 0, 10, 1345)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3114, N'ang_side - id0', 19, 361, 97, 0, 30, N'Electric', 0, 0, 10, 1345)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3115, N'ang_up - id0', 20, 361, 97, 0, 30, N'Electric', 0, 0, 10, 1345)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3116, N'id0', 17, 60, 100, 0, 50, N'Normal', 0, 0, 9, 1350)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3117, N'id0', 13, 75, 125, 0, 25, N'Slash', 0, 0, 7, 1327)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3118, N'fast - id0', 8, 361, 100, 90, 0, N'Normal', 0, 0, 0, 1355)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3119, N'id0', 9, 45, 72, 0, 60, N'Normal', 0, 0, 0, 1357)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3120, N'id0', 9, 97, 120, 0, 30, N'Normal', 0, 0, 6, 1344)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3121, N'id2', 9, 361, 100, 0, 0, N'Normal', 0, 0, 6, 1346)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3122, N'id1', 9, 361, 100, 0, 0, N'Normal', 0, 0, 6, 1346)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3123, N'id0', 9, 361, 100, 0, 0, N'Normal', 0, 0, 6, 1346)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3124, N'late - id1', 6, 72, 90, 0, 20, N'Normal', 0, 0, 6, 1365)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3125, N'clean - id1', 9, 72, 90, 0, 35, N'Normal', 0, 0, 6, 1365)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3126, N'inf - id0', 1, 80, 80, 0, 10, N'Normal', 0, 0, 0, 1627)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3127, N'hit2 - id0', 4, 50, 100, 0, 0, N'Normal', 0, 0, 3, 1484)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3128, N'hit1 - id0', 4, 70, 100, 0, 0, N'Normal', 0, 0, 3, 1483)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3129, N'id0', 3, 80, 100, 30, 0, N'Normal', 0, 0, 0, 1356)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3130, N'air - id0', 7, 270, 70, 0, 70, N'Slash', 0, 0, 0, 1550)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3131, N'id3', 3, 361, 100, 5, 0, N'Normal', 0, 0, 0, 1363)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3132, N'id2', 3, 361, 100, 5, 0, N'Normal', 0, 0, 0, 1363)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3133, N'id1', 3, 361, 100, 5, 0, N'Normal', 0, 0, 0, 1363)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3134, N'id0', 3, 361, 100, 5, 0, N'Normal', 0, 0, 0, 1363)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3135, N'id0', 8, 84, 50, 0, 110, N'Electric', 0, 0, 5, 1362)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3136, N'launch - id0', 16, 80, 60, 0, 80, N'Flame', 0, 0, 9, 1361)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3137, N'id0', 6, 90, 40, 0, 75, N'Normal', 0, 0, 0, 1360)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3138, N'id0', 8, 90, 80, 0, 70, N'Normal', 0, 0, 0, 1359)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3139, N'id0', 12, 45, 72, 0, 80, N'Normal', 0, 0, 0, 1358)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3140, N'ground - id0', 7, 65, 60, 0, 74, N'Slash', 0, 0, 0, 1364)
GO
INSERT [dbo].[Hitbox] ([Id], [Name], [Damage], [Angle], [KnockbackGrowth], [SetKnockback], [BaseKnockback], [Effect], [HitlagAttacker], [HitlagDefender], [Shieldstun], [MoveId]) VALUES (3141, N'id0', 6, 120, 60, 0, 65, N'Normal', 0, 0, 0, 1366)
GO
SET IDENTITY_INSERT [dbo].[Hitbox] OFF
GO
SET IDENTITY_INSERT [dbo].[Move] ON 
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (698, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 52, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (699, N'Forward throw', N'fthrow', NULL, NULL, 52, NULL, NULL, NULL, 30, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (700, N'Back throw', N'bthrow', NULL, NULL, 52, NULL, NULL, NULL, 30, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (701, N'Up throw', N'uthrow', NULL, NULL, 55, NULL, NULL, NULL, 30, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (702, N'Down throw', N'dthrow', NULL, NULL, 49, NULL, NULL, NULL, 30, 6, 33, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (703, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 44, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (704, N'beamsword', N'beamsword', NULL, NULL, 0, NULL, NULL, NULL, 44, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (705, N'bob_omb', N'bob_omb', NULL, NULL, 0, NULL, NULL, NULL, 44, 4, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (706, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 30, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (707, N'mr_saturn', N'mr_saturn', NULL, NULL, 0, NULL, NULL, NULL, 44, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (708, N'Peach Parasol', N'upb', 30, NULL, 40, 0, NULL, NULL, 44, 4, 29, N'frame data refers to peach rising, 11 hits total (no info on %s). can fast fall as soon as frame 56', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (709, N'Vegetable', N'downb', NULL, NULL, 29, 0, NULL, NULL, 44, 4, 29, N'data refers to the turnip pull. will update this with all projectiles damage soon', NULL, 29, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (710, N'Dashattack', N'dattack', NULL, NULL, 37, 36, NULL, NULL, 44, 2, 20, N'weak hit frames 9-20 and can also do 8% damage (with 5 frames shieldstun)', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (711, N'Toad', N'neutralb', NULL, NULL, 64, 0, NULL, NULL, 44, 4, 30, N'when hit, invincible for 8 frames. 1st sport released on that 8th frame. lasts 78 frames total. 7 hits of 3% damage', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (713, N'Forward Tilt', N'ftilt', NULL, NULL, 41, 37, NULL, NULL, 44, 1, 13, N'weak hit frames 8-13', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (714, N'Up Tilt', N'utilt', NULL, NULL, 39, 37, NULL, NULL, 44, 1, 13, N'', NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (715, N'Peach Bomber', N'sideb', 33, NULL, 46, 0, NULL, NULL, 44, 4, 31, N'additional 27 frames of lag if you don''t land. if hit, 28 frames of lag from time of hit', NULL, 21, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (716, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 30, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (718, N'Down Air', N'dair', 28, 14, 59, 0, 20, 28, 30, 3, 28, NULL, NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (719, N'PK Thunder', N'upb', 30, NULL, 193, 0, NULL, NULL, 30, 4, 139, N'frame data refers to maxmimum time thunder can be active. 54 frames endlag once thunder is gone if it didnt hit ness. if it did, ness hitbox active frames 1-36, 70 total frames, strong hit active frames 1-12. ', NULL, 19, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (720, N'PK Flash', N'neutralb', NULL, NULL, 109, 0, NULL, NULL, 30, 4, 77, N'minimum total is 109 frames, maximum is 217. damage increases based on charge time', NULL, 64, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (721, N'PK Fire', N'sideb', NULL, NULL, 69, 0, NULL, NULL, 30, 4, 40, N'burning hits last 100 frames', NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (723, N'Dashattack', N'dattack', NULL, NULL, 41, 40, NULL, NULL, 30, 2, 22, N'3 hitboxes, strong one at frame 8, weak ones at frame 15 and 22', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (724, N'Forward Tilt', N'ftilt', NULL, NULL, 34, 0, NULL, NULL, 30, 1, 11, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (725, N'Up Tilt', N'utilt', NULL, NULL, 39, 32, NULL, NULL, 30, 1, 9, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (726, N'Down Tilt', N'dtilt', NULL, NULL, 13, 0, NULL, NULL, 30, 1, 5, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (727, N'Forward Smash', N'fsmash', NULL, NULL, 49, 0, NULL, NULL, 30, 2, 17, NULL, NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (728, N'usmash_charge', N'usmash_charge', NULL, NULL, 0, NULL, NULL, NULL, 30, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (729, N'Up Smash', N'usmash', NULL, NULL, 49, 49, NULL, NULL, 30, 2, 31, N'weak hit frames 15-31', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (730, N'dsmash_charge', N'dsmash_charge', NULL, NULL, 0, NULL, NULL, NULL, 30, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (731, N'Down Smash', N'dsmash', NULL, NULL, 61, 59, NULL, NULL, 30, 2, 31, N'weak hit frames 13-31, can also do 7% damage', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (732, N'Neutral Air', N'nair', 22, 11, 39, 0, 5, 26, 30, 3, 23, N'weak hit frames 13-23', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (733, N'Forward Air', N'fair', 18, 9, 41, 40, 8, 29, 30, 3, 24, N'5 weak hits (can also do 3% damage) frames 8-10, 11-13, 14-16, 17-19, and 20-22. Strong hit frames 23-24', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (734, N'Back Air', N'bair', 18, 9, 39, 36, 10, 24, 30, 3, 19, N'weak hit frames 12-19 with 6 frames shield stun', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (735, N'Up Air', N'uair', 18, 9, 45, 42, 8, 26, 30, 3, 11, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (736, N'Down Tilt', N'dtilt', NULL, NULL, 27, 26, NULL, NULL, 44, 1, 13, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (737, N'Forward Smash', N'fsmash', NULL, NULL, 47, NULL, NULL, NULL, 44, 2, 18, NULL, NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (738, N'Up Smash', N'usmash', NULL, NULL, 44, 0, NULL, NULL, 44, 2, 22, N'weak hit has 5 frames shield stun. can also do 15% and 8 frames shield stun', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (739, N'Down Smash', N'dsmash', NULL, NULL, 39, 0, NULL, NULL, 44, 2, 26, N'six hitboxes (yes, SIX) EACH do 14% or 12% damage...', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (740, N'Up Smash', N'usmash', NULL, NULL, 43, 41, NULL, NULL, 29, 2, 11, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (741, N'Down Smash', N'dsmash', NULL, NULL, 54, 0, NULL, NULL, 29, 2, 13, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (742, N'Neutral Air', N'nair', 12, 6, 39, 0, 3, 34, 29, 3, 28, N'weak hit frames 11-28', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (743, N'Forward Air', N'fair', 15, 7, 39, 0, 10, 37, 29, 3, 28, N'5 hits do 2% each, frames 10-12, 14-16, 18-20, 22-24, 26-28', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (744, N'Back Air', N'bair', 18, 9, 59, 0, 4, 49, 29, 3, 37, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (745, N'Up Air', N'uair', 18, 9, 27, 0, 4, 17, 29, 3, 9, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (746, N'Down Air', N'dair', 26, 13, 57, 48, 1, 38, 29, 3, 26, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (748, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 29, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (749, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 29, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (750, N'Forward throw', N'fthrow', NULL, NULL, 43, NULL, NULL, NULL, 29, 6, 29, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (751, N'Back throw', N'bthrow', NULL, NULL, 49, NULL, NULL, NULL, 29, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (752, N'Up throw', N'uthrow', NULL, NULL, 43, NULL, NULL, NULL, 29, 6, 19, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (753, N'Down throw', N'dthrow', NULL, NULL, 47, NULL, NULL, NULL, 29, 6, 19, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (754, N'Skull Bash', N'sideb', NULL, NULL, 70, 0, NULL, NULL, 43, 4, 40, N'data refers to lunge. charge time can be between 14-90 frames. damage increases based on charge time', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (755, N'Quick Attack', N'upb', 24, NULL, 149, 0, NULL, NULL, 43, 4, 0, N'hits active frames 13-18 on first jump, 27-31 on second. first jump lasts 68 frames, second lasts 81', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (756, N'Thunder', N'downb', NULL, NULL, 109, 0, NULL, NULL, 43, 4, 49, N'data refers to pikachu standing still and being hit. thunder will last until frame 104 if not hit. hitbox hits pikachu at 40 standing still and 51 while falling. hitbox lasts frames 1-9, 60 total', NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (757, N'Forward Smash', N'fsmash', NULL, NULL, 49, 0, NULL, NULL, 29, 2, 36, N'6 weak hits lasting 3 frames each and one final hit lasting 3 frames (34-36)', NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (758, N'Down throw', N'dthrow', NULL, NULL, 42, NULL, NULL, NULL, 48, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (759, N'Down Tilt', N'dtilt', NULL, NULL, 21, 19, NULL, NULL, 29, 1, 9, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (760, N'Forward Tilt', N'ftilt', NULL, NULL, 29, 0, NULL, NULL, 29, 1, 14, N'angled up does one more %, angled down does one less', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (761, N'Neutral Air', N'nair', 17, 8, 49, 42, 3, 35, 44, 3, 23, N'weak hit frames 7-23, can also do 10% damage (and has 6 frames shield stun)', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (762, N'Forward Air', N'fair', 25, 12, 54, 51, 16, 38, 44, 3, 20, NULL, NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (763, N'Back Air', N'bair', 15, 7, 44, 38, 6, 22, 44, 3, 22, N'weak hit frames 10-22 with 6 frames shield stun', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (764, N'Up Air', N'uair', 15, 7, 35, 34, 7, 21, 44, 3, 11, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (765, N'Down Air', N'dair', 15, 7, 39, 0, 12, 39, 44, 3, 31, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (767, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 44, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (768, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 44, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (769, N'Forward throw', N'fthrow', NULL, NULL, 33, NULL, NULL, NULL, 44, 6, 14, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (770, N'Back throw', N'bthrow', NULL, NULL, 49, NULL, NULL, NULL, 44, 6, 20, NULL, NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (771, N'Up throw', N'uthrow', NULL, NULL, 49, NULL, NULL, NULL, 44, 6, 24, NULL, NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (772, N'Down throw', N'dthrow', NULL, NULL, 64, NULL, NULL, NULL, 44, 6, 42, NULL, NULL, 34, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (773, N'Skull Bash', N'sideb', 30, NULL, 70, 0, NULL, NULL, 29, 4, 40, N'data refers to lunge. charging takes anywhere between 14-161 frames. 34 frames of endlag on hit. damage increases based on charge and travel distance', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (774, N'Thunder', N'downb', NULL, NULL, 109, 0, NULL, NULL, 29, 4, 49, N'data refers to pichu standiung still and being hit. thunder will last frames 20-84, will hit pichuj at 40 (and stop) if standing still, 53 if falling. when hit, hitbox lasts frames 1-9 with 60 frames endlag', NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (775, N'Thunder Jolt', N'neutralb', NULL, NULL, 57, 0, NULL, NULL, 29, 4, 117, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (777, N'Dashattack', N'dattack', NULL, NULL, 49, 0, NULL, NULL, 29, 2, 16, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (778, N'Up Tilt', N'utilt', NULL, NULL, 23, 0, NULL, NULL, 29, 1, 14, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (779, N'Up throw', N'uthrow', NULL, NULL, 44, NULL, NULL, NULL, 48, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (780, N'Back throw', N'bthrow', NULL, NULL, 44, NULL, NULL, NULL, 48, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (781, N'Forward throw', N'fthrow', NULL, NULL, 31, NULL, NULL, NULL, 48, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (782, N'Down Smash', N'dsmash', NULL, NULL, 37, 0, NULL, NULL, 40, 2, 15, N'front hit frames 5-6, back hit frames 14-15', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (783, N'Neutral Air', N'nair', 15, 7, 45, 0, 3, 35, 40, 3, 31, N'weak hit frames 7-31 with 5 frames shield stun', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (784, N'Forward Air', N'fair', 25, 12, 34, 33, 2, 19, 40, 3, 10, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (785, N'Back Air', N'bair', 15, 7, 28, 0, 6, 18, 40, 3, 17, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (786, N'Up Air', N'uair', 15, 7, 33, 30, 2, 15, 40, 3, 7, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (787, N'Down Air', N'dair', 18, 9, 32, 29, 6, 23, 40, 3, 14, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (789, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 40, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (790, N'Taunt', N'taunt', NULL, NULL, 70, NULL, NULL, NULL, 40, 0, 45, NULL, NULL, 45, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (791, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 40, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (792, N'Forward throw', N'fthrow', NULL, NULL, 27, NULL, NULL, NULL, 40, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (793, N'Back throw', N'bthrow', NULL, NULL, 66, NULL, NULL, NULL, 40, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (794, N'Up throw', N'uthrow', NULL, NULL, 39, NULL, NULL, NULL, 40, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (795, N'Down throw', N'dthrow', NULL, NULL, 39, NULL, NULL, NULL, 40, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (796, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 38, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (797, N'Cape', N'sideb', NULL, NULL, 35, 0, NULL, NULL, 38, 4, 14, N'reflects frames 6-33', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (798, N'Super Jump Punch', N'upb', NULL, NULL, 37, 0, NULL, NULL, 38, 4, 24, N'12 hitboxes, first 5% damage, then ten 1% damage, then a final 3% damage hitbox.', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (799, N'Up Smash', N'usmash', NULL, NULL, 39, 0, NULL, NULL, 40, 2, 11, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (800, N'Mario Tornado', N'downb', NULL, NULL, 79, 0, NULL, NULL, 38, 4, 39, N'9 hitboxes, first does 2%, next seven do 1%, last one is the strong hit', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (801, N'Forward Smash', N'fsmash', NULL, NULL, 41, 0, NULL, NULL, 40, 2, 13, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (802, N'Up Tilt', N'utilt', NULL, NULL, 29, 0, NULL, NULL, 40, 1, 12, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (803, N'Down Air', N'dair', 28, 14, 57, 47, 6, 44, 32, 3, 21, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (805, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 32, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (806, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 32, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (807, N'Confusion', N'sideb', NULL, NULL, 55, 0, NULL, NULL, 32, 4, 15, N'reflects frames 12-27', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (808, N'Forward throw', N'fthrow', NULL, NULL, 74, NULL, NULL, NULL, 32, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (809, N'Back throw', N'bthrow', NULL, NULL, 49, NULL, NULL, NULL, 32, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (810, N'Up throw', N'uthrow', NULL, NULL, 69, NULL, NULL, NULL, 32, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (811, N'Down throw', N'dthrow', NULL, NULL, 49, NULL, NULL, NULL, 32, 6, 24, NULL, NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (812, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 40, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (813, N'Green Missile', N'sideb', NULL, NULL, 92, 0, NULL, NULL, 40, 4, 62, N'additional 41 frames of lag upon landing. misfire is the strong hitbox, regular hitbox does between 5%-26%, depending on charge ', NULL, 23, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (814, N'Super Jump Punch', N'upb', 40, NULL, 39, 0, NULL, NULL, 40, 4, 23, N'weak hitbox frames 6-23 and has 2 frames shieldstun. can grab edge as soon as frame 27', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (815, N'Luigi Cyclone', N'downb', NULL, NULL, 79, 0, NULL, NULL, 40, 4, 43, N'hits frame 6-29, 43. strong hit second. ', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (816, N'Fireball', N'neutralb', NULL, NULL, 46, 0, NULL, NULL, 40, 4, 67, N'fireball lasts 50 frames', NULL, 17, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (818, N'Dashattack', N'dattack', NULL, NULL, 63, 59, NULL, NULL, 40, 2, 37, N'hitboxes frames 4, 10, 16, 22, 29, 37', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (819, N'Forward Tilt', N'ftilt', NULL, NULL, 32, 32, NULL, NULL, 40, 1, 8, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (820, N'Down Tilt', N'dtilt', NULL, NULL, 34, 0, NULL, NULL, 40, 1, 8, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (821, N'Thunder Jolt', N'neutralb', NULL, NULL, 57, 0, NULL, NULL, 43, 4, 117, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (822, N'Fireball', N'neutralb', NULL, NULL, 43, 0, NULL, NULL, 38, 4, 89, N'fireball lasts 75 frames', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (823, N'Dashattack', N'dattack', NULL, NULL, 48, 38, NULL, NULL, 38, 2, 25, N'weak hit frames 10-25', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (824, N'Counter', N'downb', NULL, NULL, 59, 0, NULL, NULL, 48, 4, 29, N'when counter activates, hitbox active frames 14-20 (delayed by 1 frame if stronger move)', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (826, N'Dashattack', N'dattack', NULL, NULL, 49, 40, NULL, NULL, 48, 2, 15, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (827, N'Forward Tilt', N'ftilt', NULL, NULL, 35, 0, NULL, NULL, 48, 1, 10, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (828, N'Up Tilt', N'utilt', NULL, NULL, 39, 32, NULL, NULL, 48, 1, 12, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (829, N'Down Tilt', N'dtilt', NULL, NULL, 49, 20, NULL, NULL, 48, 1, 9, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (830, N'Forward Smash', N'fsmash', NULL, NULL, 49, 48, NULL, NULL, 48, 2, 13, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (831, N'Up Smash', N'usmash', NULL, NULL, 54, 46, NULL, NULL, 48, 2, 16, N'weak hit has half the shieldstun', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (832, N'Down Smash', N'dsmash', NULL, NULL, 64, 62, NULL, NULL, 48, 2, 22, N'active frame 5-7, 20-22, weak hit has 6 frames shieldstun', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (833, N'Neutral Air', N'nair', 15, 7, 49, 0, 6, 24, 48, 3, 21, N'active frame 6-7, 15-21, weakhit has half the shieldstun', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (834, N'Forward Air', N'fair', 15, 7, 33, 30, 1, 26, 48, 3, 7, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (835, N'Back Air', N'bair', 24, 12, 39, 35, 1, 31, 48, 3, 11, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (836, N'Up Air', N'uair', 15, 7, 45, 0, 5, 26, 48, 3, 8, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (837, N'Down Air', N'dair', 32, 16, 59, 0, 6, 47, 48, 3, 9, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (839, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 48, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (840, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 48, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (841, N'Dolphin Slash', N'upb', NULL, NULL, 39, 0, NULL, NULL, 48, 4, 11, N'strong hit frame 5, can do 10 or 13% damage. weak hit frames 6-11, does 7 or 6% damage', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (843, N'Sword Dance (1, Side)', N'sideb', NULL, NULL, 0, NULL, NULL, NULL, 48, 4, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (844, N'Down throw', N'dthrow', NULL, NULL, 39, NULL, NULL, NULL, 38, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (845, N'Down Air', N'dair', 23, 11, 38, 38, 6, 35, 38, 3, 32, N'8 hits each dealing 2% damage (frames 10-11, 13-14, 16-17, 19-20, 22-23, 25-26, 28-29, 31-32)', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (846, N'Forward Tilt', N'ftilt', NULL, NULL, 32, 0, NULL, NULL, 38, 1, 7, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (847, N'Up Tilt', N'utilt', NULL, NULL, 30, 30, NULL, NULL, 38, 1, 12, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (848, N'Down Tilt', N'dtilt', NULL, NULL, 34, 0, NULL, NULL, 38, 1, 8, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (849, N'Forward Smash', N'fsmash', NULL, NULL, 41, 0, NULL, NULL, 38, 2, 16, N'weak hit can also do 10% damage, has 6 frames shield stun', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (850, N'Up Smash', N'usmash', NULL, NULL, 39, 0, NULL, NULL, 38, 2, 11, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (851, N'Down Smash', N'dsmash', NULL, NULL, 37, 0, NULL, NULL, 38, 2, 14, N'front (strong) hit frames 5-6, weak (back) hit frame 14 with 7 frames shield stun, can also do 10% damage', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (852, N'Neutral Air', N'nair', 16, 8, 45, 0, 3, 35, 38, 3, 32, N'weak hit frames 7-32 with 5 frames shield stun', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (853, N'Forward Air', N'fair', 21, 10, 74, 60, 3, 42, 38, 3, 22, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (854, N'Back Air', N'bair', 15, 7, 28, 0, 6, 18, 38, 3, 17, N'weak hit frames 9-17', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (855, N'Up Air', N'uair', 15, 7, 33, 30, 2, 15, 38, 3, 9, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (857, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 38, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (858, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 38, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (859, N'Forward throw', N'fthrow', NULL, NULL, 27, NULL, NULL, NULL, 38, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (860, N'Back throw', N'bthrow', NULL, NULL, 66, NULL, NULL, NULL, 38, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (861, N'Up throw', N'uthrow', NULL, NULL, 39, NULL, NULL, NULL, 38, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (862, N'Shield Breaker', N'neutralb', NULL, NULL, 29, 0, NULL, NULL, 48, 4, 20, N'minimum charge time 11 frames, maximum 121. hitbox active frames 5-10 after releasing charge', NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (864, N'Dashattack', N'dattack', NULL, NULL, 49, 0, NULL, NULL, 43, 2, 16, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (865, N'Forward Tilt', N'ftilt', NULL, NULL, 29, 0, NULL, NULL, 43, 1, 14, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (866, N'Forward Air', N'fair', 25, 12, 44, 0, 3, 44, 31, 3, 32, N'weak hit frames 13-32, with 4 frames shieldstun', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (867, N'Back Air', N'bair', 18, NULL, 39, 0, 10, 39, 31, 3, 24, N'5 total hits, frame windows 10-12, 13-15, 16-18, 19-21, 22-24', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (868, N'Up Air', N'uair', 15, NULL, 39, 0, 7, 39, 31, 3, 22, N'weak hit frames 7-16, strong hit frames 21-22', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (869, N'Down Air', N'dair', 20, 10, 49, 0, 6, 49, 31, 3, 38, N'weak hit frames 13-38', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (871, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 31, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (872, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 31, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (873, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 31, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (874, N'Forward throw', N'fthrow', NULL, NULL, 27, NULL, NULL, NULL, 31, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (875, N'Back throw', N'bthrow', NULL, NULL, 66, NULL, NULL, NULL, 31, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (876, N'Up throw', N'uthrow', NULL, NULL, 39, NULL, NULL, NULL, 31, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (877, N'Down throw', N'dthrow', NULL, NULL, 39, NULL, NULL, NULL, 31, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (878, N'Warlock Punch', N'neutralb', NULL, NULL, 119, 117, NULL, NULL, 36, 4, 72, NULL, NULL, 70, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (879, N'Gerudo Dragon', N'sideb', NULL, NULL, 79, 0, NULL, NULL, 36, 4, 34, N'once side b collides with a player, the punch hitbox starts, active frames 3-7, with 25 frames endlag', NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (880, N'Dark Dive', N'upb', 30, NULL, 64, 0, NULL, NULL, 36, 4, 33, N'direction determined at frame 13. grabs edges as early as frame 45. if hits, 4 hits of 1% followed by a strong hit of 13% frames 3-25. ', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (881, N'Wizard''s Foot', N'downb', NULL, NULL, 77, 0, NULL, NULL, 36, 4, 34, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (883, N'Neutral Air', N'nair', 15, NULL, 44, 0, 3, 44, 31, 3, 29, NULL, NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (884, N'Dashattack', N'dattack', NULL, NULL, 39, 38, NULL, NULL, 36, 2, 16, N'weak hit frames 10-16 with 6 frames shield stun', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (885, N'Down Smash', N'dsmash', NULL, NULL, 34, 0, NULL, NULL, 31, 2, 19, N'shield stun for weak hit is 6 frames', NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (886, N'Forward Smash', N'fsmash', NULL, NULL, 44, 42, NULL, NULL, 31, 2, 33, N'non fire hitbox 14% damage, weak hit frames 17-33 with 4 frames shieldstun', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (888, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 41, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (889, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 41, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (890, N'Egg Lay', N'neutralb', NULL, NULL, 39, 0, NULL, NULL, 41, 4, 21, N'damage in egg is cut in half', NULL, 17, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (891, N'Forward throw', N'fthrow', NULL, NULL, 39, NULL, NULL, NULL, 41, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (892, N'Back throw', N'bthrow', NULL, NULL, 43, NULL, NULL, NULL, 41, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (893, N'Up throw', N'uthrow', NULL, NULL, 43, NULL, NULL, NULL, 41, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (894, N'Down throw', N'dthrow', NULL, NULL, 43, NULL, NULL, NULL, 41, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (895, N'Chef', N'neutralb', NULL, NULL, 49, 0, NULL, NULL, 31, 4, 21, N'pan hit is the strong hit, sausages are the weak hits. can throw more sausage every 20-34 frames. sausage lasts 80 frames total', NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (896, N'Judgement', N'sideb', NULL, NULL, 49, NULL, NULL, NULL, 31, 4, 29, N'The first hammer in a match cannot be a 1 or 2.
The second hammer in a match cannot be a 2.
Any number the hammer displays cannot be obtained again until after 2 more hammers.
A death (fall or SD) will reset the rules currently applied to #3.
So long as the forward B animation starts, it will count as the next number. In other words: If you input forward B on frame 1 and are hit on frame 2, it''ll still count as the number coming out.

9 Hitbox is smaller than the other hitboxes check https://i.fightcore.gg/mrgame&watch/sideb9.gif', NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (897, N'Fire', N'upb', 40, NULL, 39, 0, NULL, NULL, 31, 4, 37, NULL, NULL, 1, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (898, N'Oil Panic', N'downb', NULL, NULL, 49, 0, NULL, NULL, 31, 4, 37, N'percent damage is max damage game & watch can do. absorb stats: active frames 5-37, ends frame 49. will loop every 32 frames until b is let go', NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (900, N'Dashattack', N'dattack', NULL, NULL, 37, 0, NULL, NULL, 31, 2, 29, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (901, N'Forward Tilt', N'ftilt', NULL, NULL, 44, 42, NULL, NULL, 31, 1, 30, NULL, NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (902, N'Up Tilt', N'utilt', NULL, NULL, 0, 0, NULL, NULL, 31, 1, 29, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (903, N'Down Tilt', N'dtilt', NULL, NULL, 29, 26, NULL, NULL, 31, 1, 13, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (904, N'Up Smash', N'usmash', NULL, NULL, 44, 40, NULL, NULL, 31, 2, 28, NULL, NULL, 24, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (905, N'Down Air', N'dair', 26, 13, 59, 0, 16, 59, 41, 3, 46, N'15 hitboxes every other frame doing 4% damage each', NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (906, N'Forward Tilt', N'ftilt', NULL, NULL, 29, 0, NULL, NULL, 36, 1, 11, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (907, N'Down Tilt', N'dtilt', NULL, NULL, 35, 35, NULL, NULL, 36, 1, 12, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (908, N'Dashattack', N'dattack', NULL, NULL, 57, 40, NULL, NULL, 28, 2, 15, N'weak hit has 4 frames shield stun', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (909, N'Forward Tilt', N'ftilt', NULL, NULL, 40, 40, NULL, NULL, 28, 1, 13, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (910, N'Up Tilt', N'utilt', NULL, NULL, 45, 40, NULL, NULL, 28, 1, 13, N'can also do 8% or 9% damage. can only do 6% damage frames 10-13', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (911, N'Down Tilt', N'dtilt', NULL, NULL, 57, 20, NULL, NULL, 28, 1, 10, N'can also do 10% damage. weak hit has 4 frames shield stun', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (912, N'Forward Smash', N'fsmash', NULL, NULL, 57, 54, NULL, NULL, 28, 2, 14, N'weak hit has 7 frames shield stun', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (913, N'Up Smash', N'usmash', NULL, NULL, 62, 46, NULL, NULL, 28, 2, 26, N'5 weak hitboxes 2 frames each, ending in final strong hitbox frames 25-26', NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (914, N'Down Smash', N'dsmash', NULL, NULL, 74, 72, NULL, NULL, 28, 2, 26, N'front hit frames 6-8, can do 21% or 14% with 8 frames shield stun. back hit frames 24-26, can do 16% or 8% with 9 or 5 frames shieldstun', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (915, N'Neutral Air', N'nair', 20, 10, 57, 50, 7, 31, 28, 3, 20, N'weak hit frames 7-8 with 3 frames shield stun, strong hit frames 17-20 and can also do 6% damage', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (916, N'Forward Air', N'fair', 20, 10, 38, 35, 1, 29, 28, 3, 7, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (917, N'Back Air', N'bair', 24, 12, 45, 43, 1, 33, 28, 3, 10, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (918, N'Up Air', N'uair', 18, 9, 52, 49, 5, 29, 28, 3, 10, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (919, N'Down Air', N'dair', 32, 16, 68, 64, 7, 54, 28, 3, 10, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (921, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 28, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (922, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 28, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (923, N'Forward throw', N'fthrow', NULL, NULL, 31, NULL, NULL, NULL, 28, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (924, N'Back throw', N'bthrow', NULL, NULL, 44, NULL, NULL, NULL, 28, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (926, N'Up Tilt', N'utilt', NULL, NULL, 114, 113, NULL, NULL, 36, 1, 83, NULL, NULL, 81, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (927, N'Counter', N'downb', NULL, NULL, 59, 0, NULL, NULL, 28, 4, 20, N'this counter is damage based, no info for max/min damage. frame data refers to counter trigger', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (928, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 28, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (929, N'Forward Smash', N'fsmash', NULL, NULL, 66, 60, NULL, NULL, 36, 2, 24, NULL, NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (930, N'Up Smash', N'usmash', NULL, NULL, 54, 40, NULL, NULL, 36, 2, 29, N'strong hit frames 21-23, weak hit frames 26-29', NULL, 21, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (931, N'Down Smash', N'dsmash', NULL, NULL, 49, 47, NULL, NULL, 36, 2, 32, N'strong hit frames 29-32, weak hit frames 19-22 with 5 frames shieldstun', NULL, 19, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (932, N'Neutral Air', N'nair', 25, 12, 44, 0, 4, 25, 36, 3, 21, N'hitboxes frames 7-8, 20-21', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (933, N'Forward Air', N'fair', 25, 12, 44, 35, 7, 33, 36, 3, 19, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (934, N'Back Air', N'bair', 25, 12, 35, 29, 7, 18, 36, 3, 15, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (935, N'Up Air', N'uair', 25, 12, 33, 30, 1, 21, 36, 3, 16, N'hitboxes frames 6-10, 11-13, 14-16, hits can do damage between 6-13%, getting weaker over time', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (936, N'Down Air', N'dair', 35, 17, 44, 38, 4, 35, 36, 3, 20, NULL, NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (938, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 36, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (939, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 36, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (940, N'Forward throw', N'fthrow', NULL, NULL, 39, NULL, NULL, NULL, 36, 6, 17, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (941, N'Back throw', N'bthrow', NULL, NULL, 49, NULL, NULL, NULL, 36, 6, 19, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (942, N'Up throw', N'uthrow', NULL, NULL, 43, NULL, NULL, NULL, 36, 6, 28, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (943, N'Down throw', N'dthrow', NULL, NULL, 39, NULL, NULL, NULL, 36, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (944, N'Flare Blade', N'neutralb', NULL, NULL, 45, 0, NULL, NULL, 28, 4, 21, N'charge time between 11-211 frames, hit frames 5-10 from release of charge', NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (945, N'Double Edged Dance', N'sideb', NULL, NULL, 0, NULL, NULL, NULL, 28, 4, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (946, N'Blazer', N'upb', 30, NULL, 48, 0, NULL, NULL, 28, 4, 21, N'can grab ledge as soon as frame 32. ', NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (947, N'Up Air', N'uair', 20, 10, 37, 35, 4, 32, 32, 3, 11, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (948, N'Up Air', N'uair', 19, 9, 39, 39, 5, 32, 41, 3, 6, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (949, N'Forward Air', N'fair', 21, 10, 49, 44, 4, 35, 41, 3, 21, NULL, NULL, 19, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (950, N'Rest', N'downb', NULL, NULL, 249, 0, NULL, NULL, 47, 4, 1, N'invulnerable frames 1-26', NULL, 1, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (952, N'Dashattack', N'dattack', NULL, NULL, 39, 39, NULL, NULL, 47, 2, 14, N'weak hit frames 9-14', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (953, N'Forward Tilt', N'ftilt', NULL, NULL, 27, 0, NULL, NULL, 47, 1, 9, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (954, N'Up Tilt', N'utilt', NULL, NULL, 23, 0, NULL, NULL, 47, 1, 14, N'weak hit frames 10-14', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (955, N'Down Tilt', N'dtilt', NULL, NULL, 39, 30, NULL, NULL, 47, 1, 12, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (956, N'Forward Smash', N'fsmash', NULL, NULL, 44, 0, NULL, NULL, 47, 2, 20, N'weak hit frames 16-20', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (957, N'Up Smash', N'usmash', NULL, NULL, 54, 45, NULL, NULL, 47, 2, 10, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (958, N'Down Smash', N'dsmash', NULL, NULL, 54, 48, NULL, NULL, 47, 2, 10, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (959, N'Neutral Air', N'nair', 20, 10, 49, 0, 6, 28, 47, 3, 28, N'weak hit frames 8-28', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (960, N'Forward Air', N'fair', 20, 10, 39, 35, 7, 33, 47, 3, 22, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (961, N'Back Air', N'bair', 20, 10, 39, 31, 9, 24, 47, 3, 12, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (962, N'Up Air', N'uair', 20, 10, 39, 38, 9, 36, 47, 3, 12, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (963, N'Down Air', N'dair', 30, 15, 49, 0, 5, 41, 47, 3, 30, N'hitboxes frames 5-6, 8-9, 11-12, 14-15, 17-18, 20-21, 23-24, 26-27, 29-30', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (965, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 47, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (966, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 47, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (967, N'Sing', N'upb', NULL, NULL, 179, 0, NULL, NULL, 47, 4, 125, NULL, NULL, 28, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (968, N'Forward throw', N'fthrow', NULL, NULL, 35, NULL, NULL, NULL, 47, 6, 10, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (969, N'Pound', N'sideb', NULL, NULL, 45, 0, NULL, NULL, 47, 4, 27, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (970, N'Down throw', N'dthrow', NULL, NULL, 47, NULL, NULL, NULL, 43, 6, 19, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (971, N'Up Tilt', N'utilt', NULL, NULL, 23, 0, NULL, NULL, 43, 1, 14, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (972, N'Down Tilt', N'dtilt', NULL, NULL, 21, 19, NULL, NULL, 43, 1, 9, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (973, N'Forward Smash', N'fsmash', NULL, NULL, 49, 0, NULL, NULL, 43, 2, 23, N'strong hit frames 16-18, weaker hit (19% damage) frames 19-21, weakest hit frames 22-23', NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (974, N'Up Smash', N'usmash', NULL, NULL, 43, 41, NULL, NULL, 43, 2, 17, N'strong hit frames 8-10 (can also do 18% or 17% damage), weaker hit frames 11-13 with 7 frames shield stun, weakest hit frames 14-17 with 5 frames shield stun', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (975, N'Down Smash', N'dsmash', NULL, NULL, 54, 51, NULL, NULL, 43, 2, 25, N'Notes - 7 weak hitboxes lasting 2 frames each, and one final strong hitbox at frame 25', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (976, N'Neutral Air', N'nair', 15, 7, 39, 0, 3, 34, 43, 3, 28, N'weak hit frames 11-28', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (977, N'Forward Air', N'fair', 20, 10, 39, 0, 10, 37, 43, 3, 28, N'5 hitboxes of 2% damage each, frames 10-12, 14-16, 18-20, 22-24, 26-28', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (978, N'Back Air', N'bair', 30, 15, 59, 0, 4, 49, 43, 3, 37, N'weak hit frames 8-37', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (979, N'Up Air', N'uair', 26, 13, 27, 0, 3, 17, 43, 3, 8, N'angle depends on the timing of the hit (check info button on homepage for details)', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (980, N'Down Air', N'dair', 40, 20, 57, 48, 1, 38, 43, 3, 26, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (981, N'unknown_air', N'unknown_air', NULL, NULL, 0, NULL, NULL, NULL, 43, 3, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (983, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 43, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (984, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 43, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (985, N'Forward throw', N'fthrow', NULL, NULL, 43, NULL, NULL, NULL, 43, 6, 29, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (986, N'Back throw', N'bthrow', NULL, NULL, 49, NULL, NULL, NULL, 43, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (987, N'Up throw', N'uthrow', NULL, NULL, 43, NULL, NULL, NULL, 43, 6, 19, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (988, N'Neutral special', N'neutralb', NULL, NULL, 0, NULL, NULL, NULL, 47, 4, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (989, N'Back Air', N'bair', 15, 7, 39, 38, 10, 32, 41, 3, 30, N'4 total hits, frames 10-12, 16-18, 23-25, 28-30. Do 7%, 6%, 5%, 4% damage respectively ', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (990, N'Up throw', N'uthrow', NULL, NULL, 41, NULL, NULL, NULL, 47, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (991, N'Down throw', N'dthrow', NULL, NULL, 84, NULL, NULL, NULL, 47, 6, 75, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (992, N'Forward throw', N'fthrow', NULL, NULL, 41, NULL, NULL, NULL, 46, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (993, N'Back throw', N'bthrow', NULL, NULL, 41, NULL, NULL, NULL, 46, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (994, N'Up throw', N'uthrow', NULL, NULL, 41, NULL, NULL, NULL, 46, 6, 25, NULL, NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (995, N'Down throw', N'dthrow', NULL, NULL, 41, NULL, NULL, NULL, 46, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (996, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 41, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (997, N'Side special', N'sideb', NULL, NULL, 0, NULL, NULL, NULL, 41, 4, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (998, N'Yoshi Bomb', N'downb', NULL, NULL, 76, 0, NULL, NULL, 41, 4, 52, N'active frame 27-landing, plus 16 more frames of weak (star) hitboxes. 24 frames endlag upon landing', NULL, 27, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (999, N'Egg Throw', N'upb', NULL, NULL, 54, 0, NULL, NULL, 41, 4, 74, N'can grab edge after projectile is throw. egg explosion hitbox lasts 3 frames', NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1001, N'Dashattack', N'dattack', NULL, NULL, 43, 42, NULL, NULL, 41, 2, 23, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1002, N'Forward Tilt', N'ftilt', NULL, NULL, 29, 0, NULL, NULL, 41, 1, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1003, N'Up Tilt', N'utilt', NULL, NULL, 29, 0, NULL, NULL, 41, 1, 12, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1004, N'Down Tilt', N'dtilt', NULL, NULL, 23, 0, NULL, NULL, 41, 1, 10, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1005, N'Forward Smash', N'fsmash', NULL, NULL, 47, 44, NULL, NULL, 41, 2, 16, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1006, N'Up Smash', N'usmash', NULL, NULL, 43, 40, NULL, NULL, 41, 2, 15, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1007, N'Down Smash', N'dsmash', NULL, NULL, 49, 0, NULL, NULL, 41, 2, 22, N'strong (front) hit frames 6-8, weak hit frames 21-22', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1008, N'Neutral Air', N'nair', 15, 7, 47, 45, 3, 35, 41, 3, 33, N'weak hit frames 7-33', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1009, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 46, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1010, N'Back throw', N'bthrow', NULL, NULL, 49, NULL, NULL, NULL, 47, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1011, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 46, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1012, N'Down Air', N'dair', 15, 7, 54, 49, 3, 33, 46, 3, 22, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1013, N'Screw Attack', N'upb', 24, NULL, 49, 0, NULL, NULL, 46, 4, 33, N'invulnerable frames 1-5. 15 total hitboxes, first is strong hit, rest are weak hits', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1014, N'Air Grapple', N'zair', 30, NULL, 60, NULL, NULL, NULL, 46, 3, 28, N'Grab a wall: 9-29
Jumping from grabbing: 1-11 (depends on how far you are from the point of grapple, and whether you''re dangling)
Ladfallspeciallag: 4', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1015, N'Charge Shot', N'neutralb', NULL, NULL, 44, 0, NULL, NULL, 46, 4, 83, N'starts charging frame 14. can charge for 140 frames max. 8 frames of lag after stop charging. 2 frame startup if shot while chraging, 15 if a held charge. shot lasts 69 frames ', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1016, N'Homing Missle', N'sideb', NULL, NULL, 49, 0, NULL, NULL, 46, 4, 98, N'homing missle has 10 more frames of endlag, but lasts 35 frames longer and comes out 7 frames earlier with 7 franes shield stun (and is the weak hit)', NULL, 22, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1017, N'Bomb', N'downb', NULL, NULL, 53, 0, NULL, NULL, 46, 4, 83, N'bomb hitbox exists 73 frames, when activated hits for 11 frames. damage is split up between multipule hitboxes, no info on their indivudal percents however', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1019, N'Neutral Air', N'nair', 15, 7, 49, 40, 5, 34, 46, 3, 29, N'weak hit frames 9-29', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1020, N'Dashattack', N'dattack', NULL, NULL, 37, 0, NULL, NULL, 46, 2, 16, N'weak hit frames 10-16', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1021, N'Forward Tilt', N'ftilt', NULL, NULL, 31, 30, NULL, NULL, 46, 1, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1022, N'Up Tilt', N'utilt', NULL, NULL, 39, 35, NULL, NULL, 46, 1, 17, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1023, N'Down Tilt', N'dtilt', NULL, NULL, 39, 0, NULL, NULL, 46, 1, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1024, N'Forward Smash', N'fsmash', NULL, NULL, 43, 0, NULL, NULL, 46, 2, 13, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1025, N'Up Smash', N'usmash', NULL, NULL, 59, 58, NULL, NULL, 46, 2, 29, N'5 hits frames 12-14, 16-18, 20-22, 24-26, and 28-29. First 3 are weak hits, 4th hit does 5%, last hit is the strong hit', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1026, N'Down Smash', N'dsmash', NULL, NULL, 48, 45, NULL, NULL, 46, 2, 16, N'front (strong) hit frames 6-8, weak (back) hit frames 14-16', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1027, N'Forward Air', N'fair', 15, 7, 55, 50, 1, 46, 46, 3, 31, N'5 total hits 2 frames each, with 5 to 6 frames between each hit', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1028, N'Back Air', N'bair', 15, 7, 39, 37, 9, 30, 46, 3, 12, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1029, N'Up Air', N'uair', 15, 7, 39, 39, 5, 33, 46, 3, 24, N'7 hitboxes, first one does 3%, next 5 do 1%, last one does 4%', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1031, N'Up throw', N'uthrow', NULL, NULL, 44, NULL, NULL, NULL, 28, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1032, N'Back Air', N'bair', 28, 14, 31, 0, 3, 29, 32, 3, 15, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1033, N'Neutral Air', N'nair', 26, 13, 54, 45, 5, 43, 32, 3, 42, N'9 weak hits (can do 2% or 1% damage) followed by strong hit at frames 41-42. Weak hits last 2 frames each ', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1034, N'Up Smash', N'usmash', NULL, NULL, 49, 44, NULL, NULL, 42, 2, 18, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1035, N'Down Smash', N'dsmash', NULL, NULL, 39, 36, NULL, NULL, 42, 2, 11, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1036, N'Neutral Air', N'nair', 20, 10, 49, 46, 6, 29, 42, 3, 23, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1037, N'Forward Air', N'fair', 20, 10, 59, 55, 2, 55, 42, 3, 22, NULL, NULL, 19, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1038, N'Back Air', N'bair', 20, 10, 39, 36, 8, 18, 42, 3, 11, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1039, N'Up Air', N'uair', 32, 16, 39, 30, 6, 26, 42, 3, 23, N'weak hit frames 10-23', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1040, N'Down Air', N'dair', 25, 12, 65, 64, 3, 57, 42, 3, 52, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1041, N'Forward Smash', N'fsmash', NULL, NULL, 47, 47, NULL, NULL, 42, 2, 14, NULL, NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1043, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 42, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1044, N'Forward throw', N'fthrow', NULL, NULL, 49, NULL, NULL, NULL, 42, 6, 27, NULL, NULL, 24, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1045, N'Back throw', N'bthrow', NULL, NULL, 39, NULL, NULL, NULL, 42, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1046, N'Up throw', N'uthrow', NULL, NULL, 59, NULL, NULL, NULL, 42, 6, 30, NULL, NULL, 25, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1047, N'Down throw', N'dthrow', NULL, NULL, 49, NULL, NULL, NULL, 42, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1048, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 27, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1049, N'Falcon Punch', N'neutralb', NULL, NULL, 99, 65, NULL, NULL, 27, 4, 56, NULL, NULL, 52, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1050, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 42, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1051, N'Down Tilt', N'dtilt', NULL, NULL, 34, 29, NULL, NULL, 42, 1, 11, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1052, N'Up Tilt', N'utilt', NULL, NULL, 49, 42, NULL, NULL, 42, 1, 26, N'6 weak hits 2 frames each, followed by strong hit at frame 26', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1053, N'Forward Tilt', N'ftilt', NULL, NULL, 31, 28, NULL, NULL, 42, 1, 9, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1054, N'LinkSpecial', N'linkspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1055, N'LuigiSpecial', N'luigispecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1056, N'MarioSpecial', N'mariospecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1057, N'NessSpecial', N'nessspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1058, N'PeachSpecial', N'peachspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1059, N'PichuSpecial', N'pichuspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1060, N'PikaSpecial', N'pikachuspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1061, N'SamusSpecial', N'samusspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1062, N'Forward throw', N'fthrow', NULL, NULL, 61, NULL, NULL, NULL, 35, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1063, N'Back throw', N'bthrow', NULL, NULL, 49, NULL, NULL, NULL, 35, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1064, N'Up throw', N'uthrow', NULL, NULL, 79, NULL, NULL, NULL, 35, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1065, N'Down throw', N'dthrow', NULL, NULL, 87, NULL, NULL, NULL, 35, 6, 56, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1066, N'Ice Shot', N'neutralb', NULL, NULL, 59, 0, NULL, NULL, 42, 4, 20, N'ice apppers frame 17, lasts 61 frames. hammer hit and ice botj do 5%', NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1067, N'Squall Hammer', N'sideb', NULL, NULL, 89, 0, NULL, NULL, 42, 4, 55, N'11 hits 4% each, lasting 1 frame each', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1068, N'Blizzard', N'downb', NULL, NULL, 79, 0, NULL, NULL, 42, 4, 66, N'hitboxes appear every 5 frames, last 11 frames total (do 1% in the last couple frames). 9 hits total', NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1070, N'Dashattack', N'dattack', NULL, NULL, 41, 38, NULL, NULL, 42, 2, 12, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1071, N'Raptor Boost', N'sideb', NULL, NULL, 79, 0, NULL, NULL, 27, 4, 34, N'once side b collides with a player, the punch hitbox starts, active frames 3-7, with 25 frames endlag', NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1072, N'Facon kick', N'downb', NULL, NULL, 64, 0, NULL, NULL, 27, 4, 32, N'strong hit frames 14-16, weaker hit frames 17-24, weakest hit frames 25-32', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1074, N'Dashattack', N'dattack', NULL, NULL, 39, 38, NULL, NULL, 27, 2, 16, N'weak hitbox frame 10-16', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1075, N'Tether', N'zair', 4, NULL, 60, NULL, NULL, NULL, 51, 3, 18, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1076, N'Fire Bow', N'neutralb', NULL, NULL, 38, 0, NULL, NULL, 51, 4, 43, N'arrow lasts 30 frames minimum (if it doesnrt hit ground), 13 rames startup and 25 frames endlag upon release', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1077, N'Boomerang', N'sideb', NULL, NULL, 45, 0, NULL, NULL, 51, 4, 168, N'20 frames to catch the boomerang.', NULL, 27, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1078, N'Bomb', N'downb', NULL, NULL, 0, 0, NULL, NULL, 51, 4, 40, N'bomb pulled out on frame 16. able to start throwing on frame 40. bomb has multipule hitboxes, unknown how much each does (damage listed assumes all hits land)', NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1080, N'Dashattack', N'dattack', NULL, NULL, 0, NULL, NULL, NULL, 51, 2, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1081, N'Forward Tilt', N'ftilt', NULL, NULL, 33, 0, NULL, NULL, 51, 1, 13, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1082, N'Up Tilt', N'utilt', NULL, NULL, 29, 0, NULL, NULL, 51, 1, 15, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1083, N'Down Tilt', N'dtilt', NULL, NULL, 39, 32, NULL, NULL, 51, 1, 16, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1084, N'Forward Smash', N'fsmash', NULL, NULL, 49, 0, NULL, NULL, 51, 2, 17, NULL, NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1085, N'Up Smash', N'usmash', NULL, NULL, 60, 52, NULL, NULL, 51, 2, 44, N'4 hits, first hit frames 11-14 and does 3% and 3 frames shield stun. second hit frames 26-28 and does 2% damage and 2 frames shield stun. third hit frames 40-42 can do 7 or 8% damage and 5 frames shield stun. last hit frames 43-44 and can do 8 or 9% damage and 5 or 6 frames shield stun', NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1086, N'Down Smash', N'dsmash', NULL, NULL, 23, 42, NULL, NULL, 51, 2, 11, N'front hit frames 9-11, does 13% or 7% damage. back hit frames 21-23, does 12% or 6% damage', NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1087, N'Neutral Air', N'nair', 15, 7, 39, 36, 4, 31, 51, 3, 27, N'weak hit frames 6-27', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1088, N'Forward Air', N'fair', 15, 7, 55, 47, 1, 46, 51, 3, 33, N'first hit frames 14-16, does 12%, 11%, or 9% damage. Second hit frames 17-33, does 8%, 7%, or 5% damage with 5 frames shield stun', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1089, N'Back Air', N'bair', 15, 7, 39, 30, 1, 28, 51, 3, 23, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1090, N'Up Air', N'uair', 30, 15, 69, 0, 5, 55, 51, 3, 49, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1091, N'Down Air', N'dair', 50, 25, 89, 80, 13, 64, 51, 3, 64, N'meteor hitbox frames 16-64', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1092, N'Spin Attack', N'upb', NULL, NULL, 80, 0, NULL, NULL, 51, 4, 42, N'x amount of 1% hitboxes followed by 3% hitbox ', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1093, N'BowserSpecial', N'bowserspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1094, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 51, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1095, N'Up throw', N'uthrow', NULL, NULL, 43, NULL, NULL, NULL, 27, 6, 28, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1096, N'Forward Tilt', N'ftilt', NULL, NULL, 29, 0, NULL, NULL, 27, 1, 11, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1097, N'Up Tilt', N'utilt', NULL, NULL, 39, 38, NULL, NULL, 27, 1, 21, NULL, NULL, 17, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1098, N'Down Tilt', N'dtilt', NULL, NULL, 35, 35, NULL, NULL, 27, 1, 15, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1099, N'Forward Smash', N'fsmash', NULL, NULL, 64, 60, NULL, NULL, 27, 2, 21, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1100, N'Up Smash', N'usmash', NULL, NULL, 54, 40, NULL, NULL, 27, 2, 28, N'active 21-22 and 27-28, first hit can do 8% or 14%, second hit can do 12%-13%', NULL, 21, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1101, N'Down Smash', N'dsmash', NULL, NULL, 49, 45, NULL, NULL, 27, 2, 32, N'front (strong) hit is frame 19-22, back (weak) hit is frame 29-32', NULL, 19, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1102, N'Neutral Air', N'nair', 15, 7, 44, 0, 4, 33, 27, 3, 29, N'active frame 7-12 and 20-29, 2nd hit is the strong hit', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1103, N'Forward Air', N'fair', 19, 9, 39, 36, 7, 34, 27, 3, 30, N'strong hitbox frame 14-16', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1104, N'Back Air', N'bair', 18, 9, 35, 29, 7, 20, 27, 3, 17, N'weak hit frame 14-17', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1105, N'Up Air', N'uair', 15, 7, 33, 30, 1, 21, 27, 3, 14, N'Notes - strong hitbox frame 6-10, move can do anywhere from 6 to 13 damage', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1106, N'Down Air', N'dair', 24, 12, 44, 38, 4, 35, 27, 3, 20, NULL, NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1108, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 27, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1109, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 27, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1110, N'Falcon Dive', N'upb', NULL, NULL, 64, 0, NULL, NULL, 27, 4, 33, N'can grab ledge 5 frames after active end. if grabbed, hit is active frames 2-6 and hit animation takes a total of 79 frames', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1111, N'Forward throw', N'fthrow', NULL, NULL, 39, NULL, NULL, NULL, 27, 6, 17, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1112, N'Back throw', N'bthrow', NULL, NULL, 49, NULL, NULL, NULL, 27, 6, 19, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1113, N'Down throw', N'dthrow', NULL, NULL, 39, NULL, NULL, NULL, 27, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1114, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1115, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1117, N'Up throw', N'uthrow', NULL, NULL, 49, NULL, NULL, NULL, 52, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1118, N'Down throw', N'dthrow', NULL, NULL, 64, NULL, NULL, NULL, 52, 6, 49, NULL, NULL, 24, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1119, N'Chain', N'sideb', NULL, NULL, 75, 0, NULL, NULL, 45, 4, 65, N'comes out frame 22, fully extended frame 34, can retract as early as frame 44, pull hitbox frames 19-31 with 10 frames endlag', NULL, 22, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1120, N'Needle Storm', N'neutralb', NULL, NULL, 40, 0, NULL, NULL, 45, 4, 19, N'data refers to fully charged needles. 6 needles total', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1121, N'Vanish', N'upb', 30, NULL, 94, 0, NULL, NULL, 45, 4, 42, N'invulnerable frames 18-55. choose direction at frame 35', NULL, 36, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1123, N'Dashattack', N'dattack', NULL, NULL, 37, 36, NULL, NULL, 45, 2, 12, N'weak hit frames 7-12', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1124, N'Forward Tilt', N'ftilt', NULL, NULL, 29, 27, NULL, NULL, 45, 1, 10, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1125, N'Up Tilt', N'utilt', NULL, NULL, 33, 26, NULL, NULL, 45, 1, 24, N'strong hit frames 5-10, weak hit frames 19-24 with 3 frames shield stun', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1126, N'Down Tilt', N'dtilt', NULL, NULL, 29, 28, NULL, NULL, 45, 1, 8, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1127, N'Forward Smash', N'fsmash', NULL, NULL, 50, 46, NULL, NULL, 45, 2, 29, N'weak hit frame 12 with 4 frames shield stun, strong hit frames 27-29', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1128, N'Up Smash', N'usmash', NULL, NULL, 47, 40, NULL, NULL, 45, 2, 16, N'strong hit frame 12, weak hit frames 14-16', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1129, N'Down Smash', N'dsmash', NULL, NULL, 49, 46, NULL, NULL, 45, 2, 24, N'strong hit frames 5-9, two weak hits frames 16-19 and 22-24', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1130, N'Neutral Air', N'nair', 16, 8, 48, 42, 3, 30, 45, 3, 30, N'weak hit frames 7-30. strong hit can also do 10% damage', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1131, N'Forward Air', N'fair', 16, 8, 33, 0, 5, 10, 45, 3, 7, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1132, N'Back Air', N'bair', 16, 8, 37, 0, 4, 24, 45, 3, 19, N'weak hit frames 8-19, can do 10%, 9%, 7%, and 6%. Strong hit can do 8%, 10%, or 14%', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1133, N'Up Air', N'uair', 24, 12, 39, 37, 5, 29, 45, 3, 20, N'weak hit frames 8-20', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1134, N'Back throw', N'bthrow', NULL, NULL, 49, NULL, NULL, NULL, 52, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1135, N'Down Air', N'dair', NULL, NULL, 48, 0, 3, 48, 45, 3, 33, NULL, NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1136, N'Forward throw', N'fthrow', NULL, NULL, 49, NULL, NULL, NULL, 52, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1137, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 52, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1138, N'Nayru''s Love', N'neutralb', NULL, NULL, 59, 0, NULL, NULL, 52, 4, 27, N'invulnerable frames 4-11, reflects frames 4-41. 7 hitboxes first 6 doing 1% or 2%, last hit doing 4% or 5% ', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1139, N'Vanish', N'upb', 30, NULL, 114, 0, NULL, NULL, 52, 4, 11, N'invulnerable frames 33-53. aim at frame 33', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1140, N'Din''s Fire', N'sideb', NULL, NULL, 77, 0, NULL, NULL, 52, 4, 62, N'listed is the fastest din''s fuire can be activated. can be detonated as late as frame 98. upon detonation, hitbox comes out frames 23-26. hitbox is larger the longer its charged', NULL, 60, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1142, N'Dashattack', N'dattack', NULL, NULL, 37, 36, NULL, NULL, 52, 2, 13, N'strong hit frames 6-8 and can also do 9% damage, weak hit frames 9-13 and can also do 8% damage with 5 frames shield stun', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1143, N'Forward Tilt', N'ftilt', NULL, NULL, 37, 37, NULL, NULL, 52, 1, 14, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1144, N'Up Tilt', N'utilt', NULL, NULL, 43, 40, NULL, NULL, 52, 1, 24, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1145, N'Down Tilt', N'dtilt', NULL, NULL, 31, 30, NULL, NULL, 52, 1, 7, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1146, N'Forward Smash', N'fsmash', NULL, NULL, 39, 0, NULL, NULL, 52, 2, 26, N'5 weak hits lasting one frame each, then final strong hit', NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1147, N'Up Smash', N'usmash', NULL, NULL, 56, 51, NULL, NULL, 52, 2, 36, N'13 weak hits lasting one frame each, followed by the strong hit', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1148, N'Down Smash', N'dsmash', NULL, NULL, 39, 32, NULL, NULL, 52, 2, 16, N'front hit active frames 4-7, back hit frames 13-16', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1149, N'Neutral Air', N'nair', 18, 9, 49, 42, 6, 37, 52, 3, 31, N'6 weak hits 2 frames each (can also do 3% damage), and one final strong hit', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1150, N'Forward Air', N'fair', 18, 9, 39, 36, 8, 24, 52, 3, 11, N'weak hit has 6 frames shield stun', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1151, N'Back Air', N'bair', 18, 9, 35, 33, 5, 25, 52, 3, 8, N'weak hit has 6 frames shield stun', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1152, N'Up Air', N'uair', 25, 12, 54, 0, 14, 44, 52, 3, 16, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1153, N'Down Air', N'dair', 24, 12, 43, 43, 1, 39, 52, 3, 17, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1155, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 52, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1158, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 45, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1159, N'YoshiSpecial', N'yoshispecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1160, N'MrGandWSpecial', N'mrgameandwatchspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1161, N'Swallow', N'neutralb', NULL, NULL, 79, 0, NULL, NULL, 35, 4, 60, N'damage is based off character weight. Information on each ability kirby can obtain is listed here: https://smashboards.com/threads/kirby-hitboxes-and-frame-data.322531/', NULL, 17, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1163, N'Dashattack', N'dattack', NULL, NULL, 63, 60, NULL, NULL, 35, 2, 43, N'weak hit frames 16-43', NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1164, N'Forward Tilt', N'ftilt', NULL, NULL, 32, 28, NULL, NULL, 35, 1, 8, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1165, N'Up Tilt', N'utilt', NULL, NULL, 23, 0, NULL, NULL, 35, 1, 7, N'weak hit frames 5-7', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1166, N'Down Tilt', N'dtilt', NULL, NULL, 29, 0, NULL, NULL, 35, 1, 7, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1167, N'Forward Smash', N'fsmash', NULL, NULL, 49, 0, NULL, NULL, 35, 2, 21, N'weak hit frames 16-21', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1168, N'Up Smash', N'usmash', NULL, NULL, 49, 0, NULL, NULL, 35, 2, 23, N'hits can do anywhere between 12-15%, gets weaker as the move goes on', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1169, N'Down Smash', N'dsmash', NULL, NULL, 55, 50, NULL, NULL, 35, 2, 22, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1170, N'Neutral Air', N'nair', 15, 7, 79, 50, 10, 37, 35, 3, 34, N'weak hit frames 18-34', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1171, N'Forward Air', N'fair', 20, 10, 49, 40, 10, 37, 35, 3, 26, N'two hits of 5 damage (frames 10-11, 17-18) and one hit of 8 damage (frames 25-26)', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1172, N'Back Air', N'bair', 15, 7, 43, 36, 6, 27, 35, 3, 20, N'weak hit frames 9-20', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1173, N'Up Air', N'uair', 15, 7, 39, 36, 11, 16, 35, 3, 13, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1174, N'Down Air', N'dair', 20, 10, 59, 55, 18, 47, 35, 3, 37, N'hitbox on frames 18-19, 21-22, 24-25, 27-28, 30-31, 33-34, 36-37', NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1175, N'unknown_air', N'unknown_air', NULL, NULL, 0, NULL, NULL, NULL, 35, 3, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1176, N'MewtwoSpecial', N'mewtwospecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1177, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 45, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1178, N'RoySpecial', N'royspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1179, N'PuffSpecial', N'jigglypuffspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1180, N'Forward throw', N'fthrow', NULL, NULL, 47, NULL, NULL, NULL, 45, 6, 23, NULL, NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1181, N'Back throw', N'bthrow', NULL, NULL, 47, NULL, NULL, NULL, 45, 6, 19, NULL, NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1182, N'Up throw', N'uthrow', NULL, NULL, 57, NULL, NULL, NULL, 45, 6, 22, NULL, NULL, 19, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1183, N'Down throw', N'dthrow', NULL, NULL, 57, NULL, NULL, NULL, 45, 6, 35, NULL, NULL, 31, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1184, N'SheikSpecial', N'sheikspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1185, N'ICsSpecial', N'iceclimbersspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1186, N'YLinkSpecial', N'younglinkspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1187, N'DocSpecial', N'drmariospecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1188, N'FalcoSpecial', N'falcospecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1189, N'FoxSpecial', N'foxspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1190, N'Hammer Hit', N'sideb', NULL, NULL, 59, 0, NULL, NULL, 35, 4, 28, N'weak hit has 9 frames shieldstun', NULL, 22, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1191, N'Final Cutter', N'upb', NULL, NULL, 34, 0, NULL, NULL, 35, 4, 26, N'info descirbes the landing hitbox/lag. rising hit comes out frame 23, hits 23-24, 47-49, and 54-56m with 8%, 1%, 6% respectivley.', NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1192, N'Stone', N'downb', NULL, NULL, 78, 0, NULL, NULL, 35, 4, 47, N'can be stone anywhere from 17 to 150 frames. gretting out of stone has 31 frames of lag.', NULL, 30, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1193, N'FalconSpecial', N'captainfalconspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1194, N'GanonSpecial', N'ganondorfspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1195, N'DKSpecial', N'donkeykongspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1196, N'ZeldaSpecial', N'zeldaspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1197, N'MarthSpecial', N'marthspecial', NULL, NULL, 0, NULL, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1198, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 51, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1199, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 51, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1200, N'Forward throw', N'fthrow', NULL, NULL, 39, NULL, NULL, NULL, 51, 6, 15, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1201, N'Whirling Fortress', N'upb', NULL, NULL, 79, 0, NULL, NULL, 34, 4, 46, N'invincible frames 1-4', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1202, N'Bowser Bomb', N'downb', NULL, NULL, 106, 0, NULL, NULL, 34, 4, 47, N'data assumes down b lands on same height platform it started', NULL, 42, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1203, N'Fire Breath', N'neutralb', NULL, NULL, 92, 0, NULL, NULL, 34, 4, 62, N'frames listed are the minimum anmount of frames move will be active (if you quickly tab b)', NULL, 23, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1205, N'Dashattack', N'dattack', NULL, NULL, 59, 56, NULL, NULL, 34, 2, 17, N'weak hit frames 14-17', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1206, N'Forward Tilt', N'ftilt', NULL, NULL, 47, 37, NULL, NULL, 34, 1, 16, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1207, N'Up Tilt', N'utilt', NULL, NULL, 54, 50, NULL, NULL, 34, 1, 10, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1208, N'Down Tilt', N'dtilt', NULL, NULL, 59, 55, NULL, NULL, 34, 1, 31, N'weak hitbox frames 27-31, strong hitbox frames 14-18', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1209, N'Forward Smash', N'fsmash', NULL, NULL, 69, 66, NULL, NULL, 34, 2, 33, NULL, NULL, 29, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1210, N'Up Smash', N'usmash', NULL, NULL, 59, 53, NULL, NULL, 34, 2, 30, N'strong hit frames 16-21, can also do 17% damage. weak hit frame 30 and has 7 frames shield stun', NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1211, N'Down Smash', N'dsmash', NULL, NULL, 69, 68, NULL, NULL, 34, 2, 35, N'7 weak hits followed by strong hit at frame 35', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1212, N'Neutral Air', N'nair', 15, 7, 49, 48, 8, 39, 34, 3, 23, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1213, N'Forward Air', N'fair', 15, 7, 45, 42, 9, 30, 34, 3, 11, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1214, N'Back Air', N'bair', 35, 17, 49, 0, 9, 44, 34, 3, 17, N'weak hit frames 11-17', NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1215, N'Up Air', N'uair', 30, 15, 47, 45, 10, 39, 34, 3, 25, NULL, NULL, 22, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1216, N'Down Air', N'dair', 40, 20, 79, 78, 14, 69, 34, 3, 42, N'10 hits, 2 frames each', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1218, N'Koopa Klaw', N'sideb', NULL, NULL, 59, 0, NULL, NULL, 34, 4, 18, N'scratch can do 12, 10, or 8% damage. when grabbed, "bite" does 4%, forward throw does 13%, and back throw does 9%', NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1219, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 34, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1220, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 34, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1221, N'Up throw', N'uthrow', NULL, NULL, 38, NULL, NULL, NULL, 49, 6, 24, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1222, N'Dashattack', N'dattack', NULL, NULL, 39, 36, NULL, NULL, 49, 2, 17, N'strong hitbox frame 4-7', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1223, N'Forward Tilt', N'ftilt', NULL, NULL, 26, 0, NULL, NULL, 49, 1, 8, N'all angles have the same stats', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1224, N'Up Tilt', N'utilt', NULL, NULL, 23, 23, NULL, NULL, 49, 1, 11, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1225, N'Down Tilt', N'dtilt', NULL, NULL, 29, 28, NULL, NULL, 49, 1, 9, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1226, N'Forward Smash', N'fsmash', NULL, NULL, 39, 0, NULL, NULL, 49, 2, 22, N'weak hitbox frame 17-22', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1227, N'Up Smash', N'usmash', NULL, NULL, 41, 0, NULL, NULL, 49, 2, 17, N'strong hitbox frame 7-9', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1228, N'Down Smash', N'dsmash', NULL, NULL, 49, 46, NULL, NULL, 49, 2, 10, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1229, N'Neutral Air', N'nair', 15, 7, 49, 42, 4, 36, 49, 3, 31, N'strong hitbox frame 4-7', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1230, N'Forward Air', N'fair', 22, 11, 59, 53, 6, 48, 49, 3, 45, N'5 hits, 2 frames each, with average 7 frames between them. % damage in descending order', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1231, N'Back Air', N'bair', 20, 10, 39, 38, 4, 22, 49, 3, 19, N'strong hit frame 4-7', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1232, N'Up Air', N'uair', 18, 9, 39, 0, 8, 25, 49, 3, 14, N'strong hit frame 11-14', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1233, N'Down Air', N'dair', 18, 9, 49, 0, 5, 33, 49, 3, 27, N'active 1 frame at a time with 2 frame breaks, 8 hits total', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1235, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 49, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1236, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 49, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1237, N'Forward throw', N'fthrow', NULL, NULL, 33, NULL, NULL, NULL, 49, 6, 10, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1238, N'Back throw', N'bthrow', NULL, NULL, 38, NULL, NULL, NULL, 49, 6, 21, NULL, NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1239, N'Down throw', N'dthrow', NULL, NULL, 43, NULL, NULL, NULL, 49, 6, 31, NULL, NULL, 23, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1241, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 34, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1242, N'Back throw', N'bthrow', NULL, NULL, 39, NULL, NULL, NULL, 34, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1244, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 33, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1245, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 33, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1246, N'Forward throw', N'fthrow', NULL, NULL, 39, NULL, NULL, NULL, 33, 6, 15, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1247, N'Back throw', N'bthrow', NULL, NULL, 39, NULL, NULL, NULL, 33, 6, 15, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1248, N'Up throw', N'uthrow', NULL, NULL, 49, NULL, NULL, NULL, 33, 6, 26, NULL, NULL, 26, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1249, N'Down throw', N'dthrow', NULL, NULL, 49, NULL, NULL, NULL, 33, 6, 23, NULL, NULL, 22, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1250, N'Shadow Ball', N'neutralb', NULL, NULL, 26, 0, NULL, NULL, 32, 4, 17, N'Shadow Ball lasts 69 frames. fully charged takes 100 frames', NULL, 17, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1251, N'Disable', N'downb', NULL, NULL, 41, 0, NULL, NULL, 32, 4, 21, NULL, NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1253, N'Dashattack', N'dattack', NULL, NULL, 49, 38, NULL, NULL, 32, 2, 29, N'weak hit frames 15-29', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1254, N'Forward Tilt', N'ftilt', NULL, NULL, 31, 29, NULL, NULL, 32, 1, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1255, N'Up Tilt', N'utilt', NULL, NULL, 31, 28, NULL, NULL, 32, 1, 11, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1256, N'Down Tilt', N'dtilt', NULL, NULL, 29, 20, NULL, NULL, 32, 1, 7, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1257, N'Forward Smash', N'fsmash', NULL, NULL, 59, 52, NULL, NULL, 32, 2, 19, N'weak hit has 7 frames shield stun', NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1258, N'Up Smash', N'usmash', NULL, NULL, 79, 70, NULL, NULL, 32, 2, 38, N'6 weak hitboxes lasting 2 frames each with 2 frame breaks inbetwwen, storng hit frames 37-38', NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1259, N'Down Smash', N'dsmash', NULL, NULL, 59, 38, NULL, NULL, 32, 2, 21, NULL, NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1260, N'Down Air', N'dair', 50, 25, 89, 80, 13, 64, 33, 3, 64, N'weak hit frames 16-64', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1261, N'Forward throw', N'fthrow', NULL, NULL, 59, NULL, NULL, NULL, 34, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1262, N'Up Air', N'uair', 30, 15, 69, 60, 5, 55, 33, 3, 49, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1263, N'Forward Air', N'fair', 15, 7, 55, 0, 1, 50, 33, 3, 33, N'weak hit frames 30-33', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1264, N'Up throw', N'uthrow', NULL, NULL, 43, NULL, NULL, NULL, 34, 6, 28, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1265, N'Down throw', N'dthrow', NULL, NULL, 39, NULL, NULL, NULL, 34, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1266, N'Spin Attack', N'upb', NULL, NULL, 79, 0, NULL, NULL, 33, 4, 41, N'weak hit has 4 frames shieldstun', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1267, N'Hookshot', N'zair', 30, NULL, 59, NULL, NULL, NULL, 33, 3, 18, N'Hook to a wall: 11-19
Jumping from hookwall: 1-8 (depending on how far from the point of hooking you are, or if you''re dangling)
Jump duration: 36
Fastfall anytime (unless you air dodged upward)
Landfallspeciallag: 4', NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1268, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 33, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1269, N'Bow', N'neutralb', NULL, NULL, 42, 0, NULL, NULL, 33, 4, 78, N'total time for full charge+release = 84 frames. 24 frames of endlag upon release. damage increases the longer the charge (will do 1% if very close upon release)', NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1270, N'Boomerang', N'sideb', NULL, NULL, 45, 0, NULL, NULL, 33, 4, 168, N'boomerang active for 141-171 frames. catch duration 19 frames. can also do 14% damage', NULL, 27, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1271, N'Bomb', N'downb', NULL, NULL, 316, 0, NULL, NULL, 33, 4, 316, N'bomb duration from end of pull (startup) is 277 frames', NULL, 39, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1273, N'Dashattack', N'dattack', NULL, NULL, 53, 40, NULL, NULL, 33, 2, 12, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1274, N'Forward Tilt', N'ftilt', NULL, NULL, 39, 0, NULL, NULL, 33, 1, 19, NULL, NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1275, N'Up Tilt', N'utilt', NULL, NULL, 29, 0, NULL, NULL, 33, 1, 15, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1276, N'Down Tilt', N'dtilt', NULL, NULL, 39, 30, NULL, NULL, 33, 1, 16, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1277, N'Forward Smash', N'fsmash', NULL, NULL, 49, 0, NULL, NULL, 33, 2, 18, N'second hit active frames 10-13, 59 frames total with an IASA Frame 50 and does 18% damage', NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1278, N'Up Smash', N'usmash', NULL, NULL, 60, 45, NULL, NULL, 33, 2, 43, N'first hit is frames 11-15 and does 4% damage, second hit is frames 26-28 and does 2% damage, and hit 3 is frames 41-43 and can do 10% or 9% damage', NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1279, N'Down Smash', N'dsmash', NULL, NULL, 49, 42, NULL, NULL, 33, 2, 23, N'strong hit frames 9-11 and can do 17% or 16% damage, weak hit frames 21-23 and can do 13% or 11% damage', NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1280, N'Neutral Air', N'nair', 15, 7, 41, 36, 4, 31, 33, 3, 39, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1281, N'Back Air', N'bair', 15, 7, 39, 30, 1, 28, 33, 3, 23, N'both hits do 7% each, hit one is frames 6-9, second hit is frames 18-23', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1282, N'Forward Air', N'fair', 25, 12, 39, 36, 1, 34, 32, 3, 7, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1283, N'Fox Illusion', N'sideb', NULL, NULL, 63, 0, NULL, NULL, 49, 4, 25, N'shorten frames: 20-21 for shortest, 22 for middle, 23 for longest. can grab edge frame 29', NULL, 22, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1284, N'Reflector', N'downb', NULL, NULL, 3, 0, NULL, NULL, 49, 4, 1, N'able to be jump cancelled frames 4-21. reflects frames 4 to release+1. when landed, fox is in 5 frames of hitlag. normally has 19 frames endlag', NULL, 1, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1285, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 37, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1286, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 37, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1287, N'Back throw', N'bthrow', NULL, NULL, 39, NULL, NULL, NULL, 37, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1288, N'Up throw', N'uthrow', NULL, NULL, 43, NULL, NULL, NULL, 37, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1289, N'Down throw', N'dthrow', NULL, NULL, 59, NULL, NULL, NULL, 37, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1290, N'cargo_fthrow', N'cargo_fthrow', NULL, NULL, 0, NULL, NULL, NULL, 37, 6, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1291, N'cargo_bthrow', N'cargo_bthrow', NULL, NULL, 0, NULL, NULL, NULL, 37, 6, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1292, N'cargo_uthrow', N'cargo_uthrow', NULL, NULL, 0, NULL, NULL, NULL, 37, 6, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1293, N'cargo_dthrow', N'cargo_dthrow', NULL, NULL, 0, NULL, NULL, NULL, 37, 6, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1294, N'unknown', N'unknown', NULL, NULL, 0, NULL, NULL, NULL, 39, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1295, N'Super Sheet', N'sideb', NULL, NULL, 35, 0, NULL, NULL, 39, 4, 14, N'reflects frames 6-33', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1296, N'Super Jump Punch', N'upb', 30, NULL, 37, 0, NULL, NULL, 39, 4, 21, N'Strong hitbox (and invincible_ frame 3, followed bt 6 hitboxes 2% damage each, and one final hitbox of 3% damage', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1297, N'Dr. Tornado', N'downb', NULL, NULL, 79, 0, NULL, NULL, 39, 4, 39, N'6 hits, one 3%, three 2%, another 3%, then one last 4% hit', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1298, N'Megavitamins', N'neutralb', NULL, NULL, 43, 0, NULL, NULL, 39, 4, 89, N'pill last for 75 frames, but endlag ends at frame 43', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1300, N'Dashattack', N'dattack', NULL, NULL, 43, 38, NULL, NULL, 39, 2, 25, N'weak hit frames 10-25', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1301, N'Forward Tilt', N'ftilt', NULL, NULL, 29, 0, NULL, NULL, 39, 1, 8, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1303, N'Up Tilt', N'utilt', NULL, NULL, 30, 30, NULL, NULL, 39, 1, 13, N'weak hit frames 5-13', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1304, N'Down Air', N'dair', 31, 15, 54, 0, 3, 49, 37, 3, 23, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1305, N'Back Air', N'bair', 15, 7, 39, 32, 7, 19, 37, 3, 15, N'strong hit box frame 7-8', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1306, N'Back throw', N'bthrow', NULL, NULL, 39, NULL, NULL, NULL, 51, 6, 15, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1307, N'Up throw', N'uthrow', NULL, NULL, 49, NULL, NULL, NULL, 51, 6, 26, NULL, NULL, 26, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1308, N'Down throw', N'dthrow', NULL, NULL, 49, NULL, NULL, NULL, 51, 6, 23, NULL, NULL, 22, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1309, N'Giant Punch', N'neutralb', NULL, NULL, 46, 0, NULL, NULL, 37, 4, 21, N'weak hit frame 18, 10 frames shield stun
Intangible frames 17-18, only on fully charged punch', NULL, 17, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1310, N'Headbutt', N'sideb', NULL, NULL, 59, 0, NULL, NULL, 37, 4, 21, NULL, NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1311, N'Spinning Kong', N'upb', NULL, NULL, 84, 0, NULL, NULL, 37, 4, 58, N'strong hit frames 3-5 and invulnerable. 3 hits from frames 19-42 that do 8% each, and 4 hits from frames 43-74 that do 3% each (and 3 frames shield stun', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1312, N'Hand Slap', N'downb', NULL, NULL, 60, 0, NULL, NULL, 37, 4, 31, N'13 frames of startup and 20 frames of endlag account for the startup and finish of down b. if you continue down b after two slaps these frame counts aren''t present inbetween slaps', NULL, 19, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1314, N'Dashattack', N'dattack', NULL, NULL, 54, 0, NULL, NULL, 37, 2, 20, N'strong hitbox frame 9-12', NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1315, N'Forward Tilt', N'ftilt', NULL, NULL, 33, 0, NULL, NULL, 37, 1, 11, N'angled up does 11%, angled down does 9%', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1316, N'Up Tilt', N'utilt', NULL, NULL, 39, 0, NULL, NULL, 37, 1, 11, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1317, N'Down Tilt', N'dtilt', NULL, NULL, 22, 0, NULL, NULL, 37, 1, 9, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1318, N'Forward Smash', N'fsmash', NULL, NULL, 54, 0, NULL, NULL, 37, 2, 23, NULL, NULL, 22, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1319, N'Up Smash', N'usmash', NULL, NULL, 53, 0, NULL, NULL, 37, 2, 16, NULL, NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1320, N'Down Smash', N'dsmash', NULL, NULL, 55, 0, NULL, NULL, 37, 2, 13, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1321, N'Neutral Air', N'nair', 20, 10, 43, 39, 10, 38, 37, 3, 26, N'strong hitbox frame 10-13', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1322, N'Forward Air', N'fair', 30, 15, 59, 0, 1, 59, 37, 3, 29, N'frame 25-26 is the meteor hitbox', NULL, 25, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1323, N'Up Air', N'uair', 25, 12, 44, 38, 6, 12, 37, 3, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1324, N'Blaster', N'neutralb', NULL, NULL, 36, 0, NULL, NULL, 49, 4, 44, N'repeating shots come out every 10 frames. lasers last 34 frames', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1325, N'Down Tilt', N'dtilt', NULL, NULL, 34, 0, NULL, NULL, 39, 1, 8, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1326, N'Up Smash', N'usmash', NULL, NULL, 39, 0, NULL, NULL, 39, 2, 11, N'weak hit frame 11', NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1327, N'Down Tilt', N'dtilt', NULL, NULL, 29, 28, NULL, NULL, 50, 1, 9, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1328, N'Forward Smash', N'fsmash', NULL, NULL, 39, 0, NULL, NULL, 50, 2, 21, N'weak hit frame 17-21', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1329, N'Up Smash', N'usmash', NULL, NULL, 43, 0, NULL, NULL, 50, 2, 15, N'strong hit frame 7-10', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1330, N'Down Smash', N'dsmash', NULL, NULL, 49, 46, NULL, NULL, 50, 2, 10, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1331, N'Neutral Air', N'nair', 15, 7, 49, 42, 4, 36, 50, 3, 31, N'strong hit frame 4-7', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1332, N'Forward Air', N'fair', 22, 11, 59, 53, 6, 48, 50, 3, 45, N' 5 hits, 2 frames each, with average 7 frames between them. % damage in descending order', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1333, N'Back Air', N'bair', 20, 10, 39, 38, 4, 22, 50, 3, 19, N'strong hit frame 4-7', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1334, N'Up Air', N'uair', 18, 9, 39, 36, 8, 25, 50, 3, 14, N'strong hit frame 11-14', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1335, N'Down Air', N'dair', 18, 9, 49, 0, 5, 29, 50, 3, 24, N'weak hit frames 15-24', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1337, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 50, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1338, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 50, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1339, N'Forward throw', N'fthrow', NULL, NULL, 33, NULL, NULL, NULL, 50, 6, 10, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1340, N'Back throw', N'bthrow', NULL, NULL, 38, NULL, NULL, NULL, 50, 6, 21, NULL, NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1341, N'Up throw', N'uthrow', NULL, NULL, 38, NULL, NULL, NULL, 50, 6, 24, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1342, N'Down throw', N'dthrow', NULL, NULL, 43, NULL, NULL, NULL, 50, 6, 31, NULL, NULL, 23, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1343, N'Fire Fox', N'upb', 6, NULL, 92, 0, NULL, NULL, 49, 4, 72, N'7 hits frames 20-32 of 2% each, then strong hit frames 43-72. direction based on aim at frame 42. can grab edge before moving as early as frame 16. can grab edge after moving once hitbox is inactive. 3 frames LFS lag', NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1344, N'Up Tilt', N'utilt', NULL, NULL, 23, 23, NULL, NULL, 50, 1, 11, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1345, N'Forward Smash', N'fsmash', NULL, NULL, 41, 0, NULL, NULL, 39, 2, 16, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1346, N'Forward Tilt', N'ftilt', NULL, NULL, 26, 0, NULL, NULL, 50, 1, 9, N'all angles have the same stats', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1348, N'Down Smash', N'dsmash', NULL, NULL, 37, 0, NULL, NULL, 39, 2, 15, N'front hit frames 5-6, back hit frames 14-15. weak hit is the second frame of each, 17% for front hit 13% for back', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1349, N'Neutral Air', N'nair', 18, 9, 45, 0, 3, 35, 39, 3, 31, N'weak hit frames 3-19', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1350, N'Forward Air', N'fair', 25, 12, 74, 60, 3, 42, 39, 3, 22, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1351, N'Back Air', N'bair', 18, 9, 28, 0, 6, 18, 39, 3, 16, N'weak hit frames 9-16', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1352, N'Up Air', N'uair', 18, 9, 33, 30, 2, 15, 39, 3, 9, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1353, N'Down Air', N'dair', 24, 12, 38, 38, 6, 35, 39, 3, 32, N'Move active in frame windows 10-11, 13-14, 16-17, 19-20, 22-23, 25-26, 28-29, 31-32', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1355, N'Edge attack', N'edge', NULL, NULL, 0, NULL, NULL, NULL, 39, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1356, N'Pummel', N'pummel', NULL, NULL, 0, NULL, NULL, NULL, 39, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1357, N'Forward throw', N'fthrow', NULL, NULL, 27, NULL, NULL, NULL, 39, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1358, N'Back throw', N'bthrow', NULL, NULL, 66, NULL, NULL, NULL, 39, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1359, N'Up throw', N'uthrow', NULL, NULL, 39, NULL, NULL, NULL, 39, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1360, N'Down throw', N'dthrow', NULL, NULL, 39, NULL, NULL, NULL, 39, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1361, N'Fire Bird', N'upb', 6, NULL, 84, 0, NULL, NULL, 50, 4, 64, N'grabs edge starting at frame 16 (before moving), grabs edges during moving part as early as frame 65', NULL, 43, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1362, N'Reflector', N'downb', NULL, NULL, 3, 0, NULL, NULL, 50, 4, 1, N'able to be jump cancelled frames 4-21. reflects frames 4 to release+1. when landed, falco is in 5 frames of hitlag. normally has 19 frames endlag', NULL, 1, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1363, N'Blaster', N'neutralb', NULL, NULL, 57, 0, NULL, NULL, 50, 4, 122, N'repeating shots come out every 24 frames. lasers last 99 frames', NULL, 23, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1364, N'Falco Phantasm', N'sideb', NULL, NULL, 59, 0, NULL, NULL, 50, 4, 21, N'shorten frames: 16-17 for shortest, 18 for middle, 19 for longest', NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1365, N'Dashattack', N'dattack', NULL, NULL, 39, 36, NULL, NULL, 50, 2, 17, N'strong hit frame 4-7', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1366, N'Down throw', N'dthrow', NULL, NULL, 42, NULL, NULL, NULL, 28, 6, 0, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1367, N'Belay', N'upb', NULL, NULL, 89, NULL, NULL, NULL, 42, 4, 59, N'nana invulnerable frames 5-59', NULL, 17, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1368, N'Teleport', N'upb', NULL, NULL, 32, NULL, NULL, NULL, 32, 4, 17, N'no hitbox, active refers to appearing/disapear', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1369, N'PSI Magnet', N'downb', NULL, NULL, 59, NULL, NULL, NULL, 30, 4, 39, N'frame data refers to minimum amount of time move can be used. 21 frames of lag upon release, 18 upon absorb', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1370, N'Agility', N'upb', 12, NULL, 158, NULL, NULL, NULL, 29, 4, 71, N'13 frames to aim first jump, that jump lasts a total of 71 frames. 29 frames to aim 2nd jump, that jump lasts a total of 87 frames', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1371, N'Transform', N'downb', NULL, NULL, 69, NULL, NULL, NULL, 52, 4, 43, N'invulnerable frames 34-43, shiek comes out frame 44', NULL, 34, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1372, N'Transform', N'downb', NULL, NULL, 62, NULL, NULL, NULL, 45, 4, 36, N'invulnerable frames 27-36, becomes zelda on frame 37', NULL, 27, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1374, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 44, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1375, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 29, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1376, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 29, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1377, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 29, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1378, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 29, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1379, N'Roll forwards', N'rollforward', NULL, NULL, 38, NULL, NULL, NULL, 51, 5, 20, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1380, N'Roll backwards', N'rollbackwards', NULL, NULL, 38, NULL, NULL, NULL, 51, 5, 20, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1381, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 51, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1382, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 51, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1383, N'Roll forwards', N'rollforward', NULL, NULL, 37, NULL, NULL, NULL, 33, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1384, N'Roll backwards', N'rollbackwards', NULL, NULL, 37, NULL, NULL, NULL, 33, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1385, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 43, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1386, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 33, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1387, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 45, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1388, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 45, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1389, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 45, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1390, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 45, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1391, N'Roll forwards', N'rollforward', NULL, NULL, 44, NULL, NULL, NULL, 46, 5, 23, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1392, N'Roll backwards', N'rollbackwards', NULL, NULL, 44, NULL, NULL, NULL, 46, 5, 23, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1393, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 46, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1394, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 46, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1395, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 35, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1396, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 35, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1397, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 33, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1398, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 35, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1399, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 43, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1400, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 43, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1401, N'Spotdodge', N'spotdodge', NULL, NULL, 27, NULL, NULL, NULL, 47, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1402, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 47, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1403, N'Roll forwards', N'rollforward', NULL, NULL, 35, NULL, NULL, NULL, 31, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1404, N'Roll backwards', N'rollbackwards', NULL, NULL, 35, NULL, NULL, NULL, 31, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1405, N'Spotdodge', N'spotdodge', NULL, NULL, 32, NULL, NULL, NULL, 31, 5, 12, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1406, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 31, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1407, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 39, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1408, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 39, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1409, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 39, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1410, N'Airdodge', N'airdodge', NULL, NULL, 48, NULL, NULL, NULL, 39, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1411, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 43, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1412, N'Roll backwards', N'rollbackwards', NULL, NULL, 35, NULL, NULL, NULL, 48, 5, 23, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1413, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 48, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1414, N'Spotdodge', N'spotdodge', NULL, NULL, 27, NULL, NULL, NULL, 48, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1415, N'Roll backwards', N'rollbackwards', NULL, NULL, 35, NULL, NULL, NULL, 28, 5, 23, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1416, N'Roll forwards', N'rollforward', NULL, NULL, 35, NULL, NULL, NULL, 28, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1417, N'Spotdodge', N'spotdodge', NULL, NULL, 27, NULL, NULL, NULL, 28, 5, 18, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1418, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 28, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1419, N'Roll backwards', N'rollbackwards', NULL, NULL, 37, NULL, NULL, NULL, 32, 5, 20, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1420, N'Roll forwards', N'rollforward', NULL, NULL, 37, NULL, NULL, NULL, 32, 5, 22, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1421, N'Airdodge', N'airdodge', NULL, NULL, 39, NULL, NULL, NULL, 32, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1422, N'Spotdodge', N'spotdodge', NULL, NULL, 37, NULL, NULL, NULL, 32, 5, 21, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1423, N'Roll forwards', N'rollforward', NULL, NULL, 35, NULL, NULL, NULL, 48, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1424, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 35, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1425, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 30, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1426, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 30, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1427, N'Roll backwards', N'rollbackwards', NULL, NULL, 37, NULL, NULL, NULL, 41, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1428, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 41, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1429, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 41, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1430, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 40, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1431, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 40, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1432, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 40, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1433, N'Airdodge', N'airdodge', NULL, NULL, 48, NULL, NULL, NULL, 40, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1434, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 38, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1435, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 38, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1436, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 38, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1437, N'Roll forwards', N'rollforward', NULL, NULL, 37, NULL, NULL, NULL, 41, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1438, N'Airdodge', N'airdodge', NULL, NULL, 48, NULL, NULL, NULL, 38, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1439, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 52, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1440, N'Spotdodge', N'spotdodge', NULL, NULL, 32, NULL, NULL, NULL, 52, 5, 20, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1441, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 52, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1442, N'Roll backwards', N'rollbackwards', NULL, NULL, 39, NULL, NULL, NULL, 34, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1443, N'Roll forwards', N'rollforward', NULL, NULL, 39, NULL, NULL, NULL, 34, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1444, N'Spotdodge', N'spotdodge', NULL, NULL, 42, NULL, NULL, NULL, 34, 5, 24, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1445, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 34, 5, NULL, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1446, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 44, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1447, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 44, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1448, N'Spotdodge', N'spotdodge', NULL, NULL, 27, NULL, NULL, NULL, 44, 5, 18, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1449, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 52, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1450, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 37, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1451, N'Spotdodge', N'spotdodge', NULL, NULL, 37, NULL, NULL, NULL, 37, 5, 23, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1452, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 37, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1453, N'Airdodge', N'airdodge', NULL, NULL, 48, NULL, NULL, NULL, 30, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1454, N'Spotdodge', N'spotdodge', NULL, NULL, 27, NULL, NULL, NULL, 30, 5, 18, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1455, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 42, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1456, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 42, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1457, N'Spotdodge', N'spotdodge', NULL, NULL, 27, NULL, NULL, NULL, 42, 5, 18, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1458, N'Airdodge', N'airdodge', NULL, NULL, 48, NULL, NULL, NULL, 42, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1459, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 49, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1460, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 49, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1461, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 49, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1462, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 49, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1463, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 50, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1464, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 50, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1465, N'Spotdodge', N'spotdodge', NULL, NULL, 22, NULL, NULL, NULL, 50, 5, 15, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1466, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 50, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1467, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 36, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1468, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 36, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1469, N'Spotdodge', N'spotdodge', NULL, NULL, 32, NULL, NULL, NULL, 36, 5, 20, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1470, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 36, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1471, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 27, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1472, N'Roll forwards', N'rollforward', NULL, NULL, 31, NULL, NULL, NULL, 27, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1473, N'Spotdodge', N'spotdodge', NULL, NULL, 32, NULL, NULL, NULL, 27, 5, 20, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1474, N'Airdodge', N'airdodge', NULL, NULL, 49, NULL, NULL, NULL, 27, 5, NULL, NULL, NULL, 0, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1475, N'Roll backwards', N'rollbackwards', NULL, NULL, 31, NULL, NULL, NULL, 37, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1476, N'Roll forwards', N'rollforward', NULL, NULL, 34, NULL, NULL, NULL, 47, 5, 18, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1477, N'Roll backwards', N'rollbackwards', NULL, NULL, 34, NULL, NULL, NULL, 47, 5, 19, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1478, N'Jab 1', N'jab1', NULL, NULL, 21, 16, NULL, NULL, 27, 2, 5, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1479, N'Jab 2', N'jab2', NULL, NULL, 19, 18, NULL, NULL, 27, 2, 6, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1480, N'Jab 3', N'jab3', NULL, NULL, 31, 22, NULL, NULL, 27, 2, 11, N'weak hitbox frame 9-11', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1481, N'Jab 1', N'jab1', NULL, NULL, 17, 16, NULL, NULL, 49, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1482, N'Jab 2', N'jab2', NULL, NULL, 19, 18, NULL, NULL, 49, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1483, N'Jab 1', N'jab1', NULL, NULL, 17, 16, NULL, NULL, 50, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1484, N'Jab 2', N'jab2', NULL, NULL, 19, 18, NULL, NULL, 50, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1485, N'Falcon Kick (Air)', N'adownb', 45, NULL, 57, 0, NULL, NULL, 27, 4, 29, N'can also do 11% damage. landing lag only occurs if ground hitbox is activated, which is also the weak hitbox', NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1486, N'Jab 1', N'jab1', NULL, NULL, 24, 0, NULL, NULL, 37, 2, 7, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1487, N'Jab 2', N'jab2', NULL, NULL, 33, 0, NULL, NULL, 37, 2, 10, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1488, N'Jab 1', N'jab1', NULL, NULL, 27, 26, NULL, NULL, 48, 2, 7, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1489, N'Jab 2', N'jab2', NULL, NULL, 27, 26, NULL, NULL, 48, 2, 8, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1490, N'Jab 1', N'jab1', NULL, NULL, 15, 0, NULL, NULL, 39, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1491, N'Jab 2', N'jab2', NULL, NULL, 17, 0, NULL, NULL, 39, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1492, N'Jab 3', N'jab3', NULL, NULL, 21, 0, NULL, NULL, 39, 2, 8, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1493, N'Jab 1', N'jab1', NULL, NULL, 17, 16, NULL, NULL, 31, 2, 6, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1494, N'Jab 1', N'jab1', NULL, NULL, 21, 19, NULL, NULL, 36, 2, 5, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1495, N'Jab 1', N'jab1', NULL, NULL, 17, 16, NULL, NULL, 47, 2, 6, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1496, N'Jab 2', N'jab2', NULL, NULL, 19, 16, NULL, NULL, 47, 2, 6, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1497, N'Jab 1', N'jab1', NULL, NULL, 17, 16, NULL, NULL, 35, 2, 4, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1498, N'Jab 2', N'jab2', NULL, NULL, 19, 16, NULL, NULL, 35, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1499, N'Rapid Jabs', N'rjab', NULL, NULL, 19, 0, NULL, NULL, 35, 2, 3, N'final hit end lag = 9 frames', NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1500, N'Jab 1', N'jab1', NULL, NULL, 24, 20, NULL, NULL, 33, 2, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1501, N'Jab 2', N'jab2', NULL, NULL, 21, 17, NULL, NULL, 33, 2, 7, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1502, N'Jab 3', N'jab3', NULL, NULL, 49, 32, NULL, NULL, 33, 2, 10, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1503, N'Rapid Jabs', N'rjab', NULL, NULL, 34, 0, NULL, NULL, 33, 2, 10, N'7 frame startup, then a 34 frame loop for each hit on frames 2-3, then an additional 10 frames of endlag for rapid jab ending', NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1504, N'Jab 1', N'jab1', NULL, NULL, 15, 0, NULL, NULL, 40, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1505, N'Jab 2', N'jab2', NULL, NULL, 17, 0, NULL, NULL, 40, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1506, N'Jab 3', N'jab3', NULL, NULL, 29, 22, NULL, NULL, 40, 2, 5, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1507, N'Jab 1', N'jab1', NULL, NULL, 15, 0, NULL, NULL, 38, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1508, N'Jab 2', N'jab2', NULL, NULL, 17, 0, NULL, NULL, 38, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1509, N'Jab 3', N'jab3', NULL, NULL, 21, 0, NULL, NULL, 38, 2, 8, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1510, N'Jab 1', N'jab1', NULL, NULL, 29, 26, NULL, NULL, 32, 2, 8, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1511, N'Rapid Jabs', N'rjab', NULL, NULL, 50, 0, NULL, NULL, 32, 2, 49, N'rapid jab takes 7 frames to start, then an addition 7 frames for the first hitbox to come out. Single frame hitbox comes out every 7 frames. After last hitbox there is an additional 13 frame cooldown', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1512, N'Jab 1', N'jab1', NULL, NULL, 19, 0, NULL, NULL, 30, 2, 4, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1513, N'Jab 2', N'jab2', NULL, NULL, 19, 0, NULL, NULL, 30, 2, 4, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1514, N'Jab 3', N'jab3', NULL, NULL, 29, 0, NULL, NULL, 30, 2, 9, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1515, N'Jab 1', N'jab1', NULL, NULL, 19, 16, NULL, NULL, 44, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1516, N'Jab 2', N'jab2', NULL, NULL, 19, 16, NULL, NULL, 44, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1517, N'Jab 1', N'jab1', NULL, NULL, 21, 0, NULL, NULL, 29, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1518, N'Jab 1', N'jab1', NULL, NULL, 21, 0, NULL, NULL, 43, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1519, N'Jab 1', N'jab1', NULL, NULL, 31, 26, NULL, NULL, 28, 2, 7, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1520, N'Jab 1', N'jab1', NULL, NULL, 17, 0, NULL, NULL, 46, 2, 4, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1521, N'Jab 2', N'jab2', NULL, NULL, 29, 0, NULL, NULL, 46, 2, 6, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1522, N'Jab 1', N'jab1', NULL, NULL, 17, 16, NULL, NULL, 45, 2, 3, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1523, N'Jab 2', N'jab2', NULL, NULL, 17, 16, NULL, NULL, 45, 2, 4, NULL, NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1524, N'Rapid Jabs', N'rjab', NULL, NULL, 35, 0, NULL, NULL, 45, 2, 33, N'loop has an additional 6 frames startup and 8 frames endlag. 6 hits in each loop, frames 2-3, 8-9, 14-15, 20-21, 26-27, 32-33', NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1525, N'Jab 1', N'jab1', NULL, NULL, 17, 0, NULL, NULL, 41, 2, 5, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1526, N'Jab 2', N'jab2', NULL, NULL, 19, 0, NULL, NULL, 41, 2, 5, NULL, NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1527, N'Jab 1', N'jab1', NULL, NULL, 23, 20, NULL, NULL, 51, 2, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1528, N'Jab 2', N'jab2', NULL, NULL, 21, 17, NULL, NULL, 51, 2, 7, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1529, N'Jab 3', N'jab3', NULL, NULL, 49, 32, NULL, NULL, 51, 2, 10, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1530, N'Rapid Jabs', N'rjab', NULL, NULL, 34, 0, NULL, NULL, 51, 2, 3, N'rapid jab has an additional 7 frames of startup and 10 fames of endlag', NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1531, N'Jab 1', N'jab1', NULL, NULL, 29, 27, NULL, NULL, 52, 2, 17, N'4 hits lasting 1 frame each doing 2% damage each', NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1532, N'Jab 1', N'jab1', NULL, NULL, 24, 21, NULL, NULL, 34, 2, 9, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1533, N'Jab 2', N'jab2', NULL, NULL, 29, 26, NULL, NULL, 34, 2, 10, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1534, N'Jab 1', N'jab1', NULL, NULL, 29, 16, NULL, NULL, 42, 2, 7, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1535, N'Jab 2', N'jab2', NULL, NULL, 29, 18, NULL, NULL, 42, 2, 7, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1536, N'Koopa Klaw (Air)', N'asideb', NULL, NULL, 59, 0, NULL, NULL, 34, 4, 18, N'scratch can do 12, 10, or 8% damage. when grabbed, bite does 4%, forward throw does 13%, and back throw does 9%', NULL, 16, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1537, N'Bowser Bomb (Air)', N'adownb', NULL, NULL, 0, 0, NULL, NULL, 34, 4, 0, N'active until landing, then 60 frames of endlag', NULL, 32, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1538, N'Whirling Fortress (Air)', N'aupb', NULL, NULL, 49, 0, NULL, NULL, 34, 4, 46, N'can also do 3% damage. all hitboxes connecting will result in 29% damage. able to grab edge 13 frames before freefall if started in the air', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1539, N'Fire Breath (Air)', N'aneutralb', NULL, NULL, 92, 0, NULL, NULL, 34, 4, 62, N'frames listed are the minimum anmount of frames move will be active (if you quickly tab b)', NULL, 23, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1540, N'Falcon Punch (Air)', N'aneutralb', NULL, NULL, 99, 65, NULL, NULL, 27, 4, 56, NULL, NULL, 52, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1541, N'Raptor Boost (Air)', N'asideb', 20, NULL, 79, 0, NULL, NULL, 27, 4, 34, N'once side b collides with a player, the punch hitbox starts, active frames 3-7, with 45 frames endlag', NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1542, N'Falcon Dive (Air)', N'aupb', NULL, NULL, 64, 0, NULL, NULL, 27, 4, 33, N'can grab ledge 5 frames after active end. if grabbed, hit is active frames 2-6 and hit animation takes a total of 79 frames', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1543, N'Headbutt (Air)', N'asideb', NULL, NULL, 59, 0, NULL, NULL, 37, 4, 21, NULL, NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1544, N'Spinning Kong (Air)', N'aupb', NULL, NULL, 84, 0, NULL, NULL, 37, 4, 66, N'strong hit frames 2-5 (and inv). followed by 5 hits that do 5% or 4%, and 4 more hits that do 2%. Invunerable arms frames 11-42', NULL, 2, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1545, N'Giant Punch (Air)', N'aneutralb', NULL, NULL, 46, 0, NULL, NULL, 37, 4, 21, N'for aerial and ground, frame data is dependent on charge stored. listed is the amounts for a full charge', NULL, 17, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1546, N'Dr. Tornado (Air)', N'adownb', NULL, NULL, 79, 0, NULL, NULL, 39, 4, 39, N'6 hits, one 3%, three 2%, another 3%, then one last 4% hit', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1547, N'Megavitamins (Air)', N'aneutralb', NULL, NULL, 43, 0, NULL, NULL, 39, 4, 89, N'may start fast falling at frame 10', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1548, N'Super Sheet (Air)', N'asideb', NULL, NULL, 35, 0, NULL, NULL, 39, 4, 14, N'reflects frames 6-33', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1549, N'Super Jump Punch (Air)', N'aupb', 30, NULL, 37, 0, NULL, NULL, 39, 4, 21, N'Cancel info listed here (also applies for grounded up-b): https://smashboards.com/threads/up-b-cancel-frame-and-hitbox-data-complete-with-gifs-and-now-oos-data.378468/', NULL, 3, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1550, N'Falco Phantasm (Air)', N'asideb', 20, NULL, 59, 0, NULL, NULL, 50, 4, 21, N'shorten frames: 16-17 for shortest, 18 for middle, 19 for longest', NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1551, N'Fire Bird (Air)', N'aupb', 6, NULL, 84, 0, NULL, NULL, 50, 4, 64, N'grabs edge starting at frame 16 (before moving), grabs edges during moving part as early as frame 65', NULL, 43, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1552, N'Blaster (Air)', N'aneutralb', 0, NULL, 42, 0, NULL, NULL, 50, 4, 112, N'auto cancels upon landing', NULL, 13, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1553, N'Blaster (Air)', N'aneutralb', 0, NULL, 36, 0, NULL, NULL, 49, 4, 44, N'auto cancel upons landing', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1554, N'Fox Illusion (Air)', N'asideb', 20, NULL, 63, 0, NULL, NULL, 49, 4, 25, N'shorten frames: 20-21 for shortest, 22 for middle, 23 for longest. can grab edge frame 29', NULL, 22, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1555, N'Gerudo Dragon (Air)', N'asideb', 40, NULL, 79, 0, NULL, NULL, 36, 4, 34, N'once side b collides with a player, the punch hitbox starts, active frames 3-7, with 45 frames endlag', NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1556, N'Wizard''s Foot (Air)', N'adownb', 57, NULL, 58, 0, NULL, NULL, 36, 4, 29, N'weak hit is the landing hit frames 2-3, 57 frames total. ', NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1557, N'Squall Hammer (Air)', N'asideb', NULL, NULL, 89, 0, NULL, NULL, 42, 4, 55, N'11 hits 4% each, lasting 1 frame each', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1558, N'Hammer Spin (Air)', N'asideb', 16, NULL, 69, 0, NULL, NULL, 35, 4, 46, N'6 strong hitboxes followed by 6 weak hitboxes', NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1559, N'Spin Attack (Air)', N'aupb', 24, NULL, 79, 0, NULL, NULL, 33, 4, 50, N'5 total hits, first can do 4 or 6%, next 3 do 2%, last one can do 4 or 6%', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1560, N'PK Flash (Air)', N'aneutralb', NULL, NULL, 109, 0, NULL, NULL, 30, 4, 77, N'minimum total is 109 frames, maximum is 217. damage increases based on charge time', NULL, 64, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1561, N'PK Fire (Air)', N'asideb', 30, NULL, 69, 0, NULL, NULL, 30, 4, 40, N'burning hits last 100 frames, hits do 2% each (no data on how many hits)', NULL, 20, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1562, N'Peach Bomber (Air)', N'asideb', 33, NULL, 56, 0, NULL, NULL, 44, 4, 41, N'additional 27 frames of lag if you don''t land. if hit, 28 frames of lag from time of hit', NULL, 31, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1563, N'Thunder Jolt (Air)', N'aneutralb', NULL, NULL, 57, 0, NULL, NULL, 29, 4, 117, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1564, N'Thunder Jolt (Air)', N'aneutralb', NULL, NULL, 57, 0, NULL, NULL, 43, 4, 117, N'strong hit occurs before thunderjolt hits the ground', NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1565, N'Homing Missle (Air)', N'asideb', NULL, NULL, 49, 0, NULL, NULL, 46, 4, 91, N'homing missle has 10 more frames of endlag and comes out 2 frames later, but lasts 35 frames longer with 7 franes shield stun (and is the weak hit)', NULL, 15, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1566, N'Screw Attack (Air)', N'aupb', 24, NULL, 47, 0, NULL, NULL, 46, 4, 31, N'invulnerable frames 1-3. 14 total hitboxes', NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1567, N'Needle Storm (Air)', N'aneutralb', NULL, NULL, 39, 0, NULL, NULL, 45, 4, 26, N'data refers to fully charged needles. 6 needles total', NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1568, N'Yoshi Bomb (Air)', N'adownb', NULL, NULL, 0, 0, NULL, NULL, 41, 4, 0, N'active frame 19-landing, plus 16 more frames of weak (star) hitboxes. 24 frames endlag upon landing', NULL, 19, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1569, N'Spin Attack (Air)', N'aupb', NULL, NULL, 80, 0, NULL, NULL, 51, 4, 50, N'x amount of 1% hitboxes followed by 3% hitbox ', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1570, N'Din''s Fire (Air)', N'asideb', NULL, NULL, 77, 0, NULL, NULL, 52, 4, 62, N'listed is the fastest din''s fuire can be activated. can be detonated as late as frame 98. upon detonation, hitbox comes out frames 23-26. hitbox is larger the longer its charged', NULL, 60, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1571, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 27, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1572, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 27, 0, 12, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1573, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 49, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1574, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 49, 0, 13, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1575, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 37, 0, 9, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1576, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 37, 0, 11, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1577, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 50, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1578, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 50, 0, 13, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1579, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 48, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1580, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 48, 0, 11, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1581, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 39, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1582, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 39, 0, 12, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1583, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 31, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1584, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 31, 0, 12, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1585, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 36, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1586, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 36, 0, 13, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1587, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 47, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1588, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 47, 0, 12, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1589, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 35, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1590, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 35, 0, 12, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1591, N'Grab', N'grab', NULL, NULL, 85, NULL, NULL, NULL, 33, 0, 13, N'Hook hitbox is from frame 11-17', NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1592, N'Dashgrab', N'dashgrab', NULL, NULL, 95, NULL, NULL, NULL, 33, 0, 17, N'Hook hitbox from frame 12-17, close grab only on frame 12.', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1593, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 40, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1594, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 40, 0, 12, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1595, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 38, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1596, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 38, 0, 12, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1597, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 32, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1598, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 32, 0, 10, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1599, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 30, 0, 9, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1600, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 30, 0, 11, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1601, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 44, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1602, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 44, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1603, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 29, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1604, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 29, 0, 12, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1605, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 43, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1606, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 43, 0, 12, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1607, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 28, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1608, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 28, 0, 11, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1609, N'Grab', N'grab', NULL, NULL, 94, NULL, NULL, NULL, 46, 0, 37, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1610, N'Dashgrab', N'dashgrab', NULL, NULL, 74, NULL, NULL, NULL, 46, 0, 27, N'Secondary hitbox frame 30-33', NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1611, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 45, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1612, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 45, 0, 9, NULL, NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1613, N'Grab', N'grab', NULL, NULL, 79, NULL, NULL, NULL, 41, 0, 23, NULL, NULL, 18, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1614, N'Dashgrab', N'dashgrab', NULL, NULL, 70, NULL, NULL, NULL, 41, 0, 16, NULL, NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1615, N'Grab', N'grab', NULL, NULL, 85, NULL, NULL, NULL, 51, 0, 14, N'Close grab is frame 11-13, hook is frame 11-14.', NULL, 11, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1616, N'Dashgrab', N'dashgrab', NULL, NULL, 95, NULL, NULL, NULL, 51, 0, 17, N'Close grab is frame 14-15, hook is frame 14-17.', NULL, 14, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1617, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 52, 0, 13, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1618, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 52, 0, 13, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1619, N'Grab', N'grab', NULL, NULL, 40, NULL, NULL, NULL, 34, 0, 10, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1620, N'Dashgrab', N'dashgrab', NULL, NULL, 50, NULL, NULL, NULL, 34, 0, 12, NULL, NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1621, N'Grab', N'grab', NULL, NULL, 30, NULL, NULL, NULL, 42, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1622, N'Dashgrab', N'dashgrab', NULL, NULL, 40, NULL, NULL, NULL, 42, 0, 8, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1624, N'Rapid Jabs', N'rjab', NULL, NULL, 0, NULL, NULL, NULL, 27, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1625, N'Rapid Jabs', N'rjab', NULL, NULL, 0, NULL, NULL, NULL, 49, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1626, N'Rapid Jabs', N'rjab', NULL, NULL, 0, NULL, NULL, NULL, 31, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1627, N'Rapid Jabs', N'rjab', NULL, NULL, 0, NULL, NULL, NULL, 50, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1628, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 29, 0, NULL, NULL, 27, 1, 11, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1629, N'Forward Tilt (Down)', N'daft', NULL, NULL, 29, 0, NULL, NULL, 27, 1, 11, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1630, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 29, 0, NULL, NULL, 29, 1, 14, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1631, N'Forward Tilt (Down)', N'daft', NULL, NULL, 29, 0, NULL, NULL, 29, 1, 14, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1632, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 34, 0, NULL, NULL, 30, 1, 11, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1633, N'Forward Tilt (Down)', N'daft', NULL, NULL, 34, 0, NULL, NULL, 30, 1, 11, NULL, NULL, 7, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1634, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 31, 29, NULL, NULL, 32, 1, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1635, N'Forward Tilt (Down)', N'daft', NULL, NULL, 31, 29, NULL, NULL, 32, 1, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1636, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 47, 37, NULL, NULL, 34, 1, 16, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1637, N'Forward Tilt (Down)', N'daft', NULL, NULL, 47, 37, NULL, NULL, 34, 1, 16, NULL, NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1638, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 29, 0, NULL, NULL, 36, 1, 11, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1639, N'Forward Tilt (Down)', N'daft', NULL, NULL, 29, 0, NULL, NULL, 36, 1, 11, NULL, NULL, 9, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1640, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 33, 0, NULL, NULL, 37, 1, 11, N'angled up does 11%, angled down does 9%', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1641, N'Forward Tilt (Down)', N'daft', NULL, NULL, 33, 0, NULL, NULL, 37, 1, 11, N'angled up does 11%, angled down does 9%', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1642, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 32, 0, NULL, NULL, 38, 1, 7, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1643, N'Forward Tilt (Down)', N'daft', NULL, NULL, 32, 0, NULL, NULL, 38, 1, 7, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1644, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 29, 0, NULL, NULL, 39, 1, 8, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1645, N'Forward Tilt (Down)', N'daft', NULL, NULL, 29, 0, NULL, NULL, 39, 1, 8, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1646, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 32, 32, NULL, NULL, 40, 1, 8, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1647, N'Forward Tilt (Down)', N'daft', NULL, NULL, 32, 32, NULL, NULL, 40, 1, 8, NULL, NULL, 4, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1648, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 29, 0, NULL, NULL, 41, 1, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1649, N'Forward Tilt (Down)', N'daft', NULL, NULL, 29, 0, NULL, NULL, 41, 1, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1650, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 29, 0, NULL, NULL, 43, 1, 14, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1651, N'Forward Tilt (Down)', N'daft', NULL, NULL, 29, 0, NULL, NULL, 43, 1, 14, NULL, NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1652, N'Forward Tilt (Up)', N'uaft', NULL, NULL, 31, 30, NULL, NULL, 46, 1, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1653, N'Forward Tilt (Down)', N'daft', NULL, NULL, 31, 30, NULL, NULL, 46, 1, 8, NULL, NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1655, N'Cape (Air)', N'asideb', NULL, NULL, 35, 0, NULL, NULL, 38, 4, 14, N'reflects frames 6-33', NULL, 12, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1656, N'Mario Tornado (Air)', N'adownb', NULL, NULL, 79, 0, NULL, NULL, 38, 4, 39, N'9 hitboxes, first does 2%, next seven do 1%, last one is the strong hit', NULL, 8, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1657, N'Luigi Cyclone (Air)', N'adownb', NULL, NULL, 79, 0, NULL, NULL, 40, 4, 43, N'hits frame 6-29, 43. strong hit second. ', NULL, 6, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1658, N'Super Jump Punch (Air)', N'aupb', 40, NULL, 39, 0, NULL, NULL, 40, 4, 23, N'weak hitbox frames 6-23 and has 2 frames shieldstun. can grab edge as soon as frame 27', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1659, N'Side special (Air)', N'asideb', NULL, NULL, 0, NULL, NULL, NULL, 41, 4, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1660, N'Neutral special  (Air)', N'aneutralb', NULL, NULL, 0, NULL, NULL, NULL, 47, 4, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1661, N'Dolphin Slash (Air)', N'aupb', NULL, NULL, 39, 0, NULL, NULL, 48, 4, 11, N'strong hit frame 5, can do 10 or 13% damage. weak hit frames 6-11, does 7 or 6% damage', NULL, 5, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1662, N'Vanish (Air)', N'aupb', 30, NULL, 114, 0, NULL, NULL, 52, 4, 11, N'invulnerable frames 33-53. aim at frame 33', NULL, 10, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1671, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 34, 0, NULL, N'Horizontal Movement At: 14
Distance: 13.8 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1672, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 34, 0, NULL, N'Horizontal Movement At: 8
Distance: 13.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1673, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 34, 0, NULL, N'Hit: 18-19 (Behind), 25-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1674, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 34, 0, NULL, N'Hit: 10-11 (Front), 26-27 (Behind)
Invincible: 1-27', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1675, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 34, 0, NULL, N'Horizontal Movement At: 16
Distance: 14.2 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1676, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 34, 0, NULL, N'Horizontal Movement At: 13
Distance: 9.4 ft
Invincible: 1-27', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1677, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 34, 0, NULL, N'Horizontal Movement At: 12
Distance: 13.4 ft
Invincible: 1-27 (If the roll takes you to an edge you will slip off unless an attack is timed on that exact frame)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1678, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 34, 0, NULL, N'Horizontal Movement At: 10
Distance: 9.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1679, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 27, 0, NULL, N'Horizontal Movement At: 11
Distance: 16.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1680, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 27, 0, NULL, N'Horizontal Movement At: 8
Distance: 13.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1681, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 27, 0, NULL, N'Hit: 19-20 (Both Sides), 28-29 (Both Sides)
Invincible: 1-29', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1682, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 27, 0, NULL, N'Hit: 20-21 (Behind), 26-27 (Front)
Invincible: 1-27', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1683, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 27, 0, NULL, N'Horizontal Movement At: 5
Distance: 11 ft
Invincible: 1-23', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1684, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 27, 0, NULL, N'Horizontal Movement At: 10
Distance: 11 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1685, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 27, 0, NULL, N'Horizontal Movement At: 5
Distance: 11 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1686, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 27, 0, NULL, N'Horizontal Movement At: 15
Distance: 11 ft
Invincible: 1-25', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1687, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 39, 0, NULL, N'Horizontal Movement At: 9
Distance: 14.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1688, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 39, 0, NULL, N'Horizontal Movement At: 10
Distance: 14.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1689, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 39, 0, NULL, N'Hit: 20-21 (Behind), 24-25 (Front)
Invincible: 1-25', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1690, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 39, 0, NULL, N'Hit: 19-20 (Behind), 25-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1691, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 39, 0, NULL, N'Horizontal Movement At: 6
Distance: 12.6 ft
Invincible: 1-21', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1692, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 39, 0, NULL, N'Horizontal Movement At: 6
Distance: 12.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1693, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 39, 0, NULL, N'Horizontal Movement At: 12
Distance: 12.4 ft
Invincible: 1-22', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1694, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 39, 0, NULL, N'Horizontal Movement At: 11
Distance: 12.4 ft
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1695, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 37, 0, NULL, N'Horizontal Movement At: 9
Distance: 14.8 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1696, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 37, 0, NULL, N'Horizontal Movement At: 10
Distance: 14.8 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1697, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 37, 0, NULL, N'Hit: 6-7 (Behind), 18-19 (Front)
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1698, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 37, 0, NULL, N'Hit: 19-20 (Front), 24-25 (Behind)
Invincible: 1-25', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1699, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 37, 0, NULL, N'Horizontal Movement At: 10
Distance: 11.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1700, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 37, 0, NULL, N'Horizontal Movement At: 8
Distance: 12 ft
Invincible: 1-14 (If the roll takes you to an edge and you try to move/crouch/jump/shield as it ends you will slip off)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1701, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 37, 0, NULL, N'Horizontal Movement At: 16
Distance: 11.6 ft
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1702, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 37, 0, NULL, N'Horizontal Movement At: 13
Distance: 11.4 ft
Invincible: 1-24 (If the roll takes you to an edge you will slip off unless you WALK forward, or if an attack is timed on that exact frame)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1703, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 50, 0, NULL, N'Horizontal Movement At: 9
Distance: 14.4 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1704, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 50, 0, NULL, N'Horizontal Movement At: 6
Distance: 14.4 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1705, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 50, 0, NULL, N'Hit: 17-19 (Front), 24-26 (Behind)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1706, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 50, 0, NULL, N'Hit: 19-20 (Behind), 25-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1707, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 50, 0, NULL, N'Horizontal Movement At: 6
Distance: 12.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1708, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 50, 0, NULL, N'Horizontal Movement At: 8
Distance: 12.6 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1709, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 50, 0, NULL, N'Horizontal Movement At: 12
Distance: 12.8 ft
Invincible: 12-29 (Not a typo. If the roll takes you to an edge you will slip off unless an attack is timed on that exact frame)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1710, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 50, 0, NULL, N'Horizontal Movement At: 5
Distance: 12.6 ft
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1711, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 49, 0, NULL, N'Horizontal Movement At: 9
Distance: 12.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1712, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 49, 0, NULL, N'Horizontal Movement At: 6
Distance: 12.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1713, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 49, 0, NULL, N'Hit: 17-19 (Front), 24-26 (Behind)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1714, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 49, 0, NULL, N'Hit: 19-20 (Behind), 25-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1715, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 49, 0, NULL, N'Horizontal Movement At: 6
Distance: 11 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1716, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 49, 0, NULL, N'Horizontal Movement At: 8
Distance: 11 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1717, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 49, 0, NULL, N'Horizontal Movement At: 12
Distance: 11.2 ft
Invincible: 12-29 (Not a typo. If the roll takes you to an edge you will slip off unless an attack is timed on that exact frame)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1718, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 49, 0, NULL, N'Horizontal Movement At: 5
Distance: 11 ft
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1719, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 31, 0, NULL, N'Horizontal Movement At: 7
Distance: 9.8 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1720, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 31, 0, NULL, N'Horizontal Movement At: 7
Distance: 9.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1721, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 31, 0, NULL, N'Hit: 20-21 (Front), 33-34 (Behind)
Invincible: 1-34', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1722, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 31, 0, NULL, N'Hit: 20-21 (Front), 32-33 (Behind)
Invincible: 1-33', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1723, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 31, 0, NULL, N'Horizontal Movement At: 5
Distance: 8.6 ft
Invincible: 1-21', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1724, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 31, 0, NULL, N'Horizontal Movement At: 5
Distance: 8.8 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1725, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 31, 0, NULL, N'Horizontal Movement At: 5
Distance: 8.4 ft
Invincible: 1-22', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1726, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 31, 0, NULL, N'Horizontal Movement At: 5
Distance: 9 ft
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1727, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 36, 0, NULL, N'Horizontal Movement At: 11
Distance: 18.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1728, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 36, 0, NULL, N'Horizontal Movement At: 8
Distance: 15.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1729, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 36, 0, NULL, N'Hit: 19-20 (Both Sides), 28-29 (Both Sides)
Invincible: 1-29', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1730, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 36, 0, NULL, N'Hit: 20-21 (Behind), 26-27 (Front)
Invincible: 1-27', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1731, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 36, 0, NULL, N'Horizontal Movement At: 5
Distance: 12.4 ft
Invincible: 1-23', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1732, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 36, 0, NULL, N'Horizontal Movement At: 10
Distance: 12.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1733, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 36, 0, NULL, N'Horizontal Movement At: 5
Distance: 12.2 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1734, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 36, 0, NULL, N'Horizontal Movement At: 15
Distance: 12.4 ft
Invincible: 1-25', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1735, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 42, 0, NULL, N'Horizontal Movement At: 9
Distance: 15.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1736, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 42, 0, NULL, N'Horizontal Movement At: 16
Distance: 15.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1737, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 42, 0, NULL, N'Hit: 6-11 (Behind), 21-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1738, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 42, 0, NULL, N'Hit: 19-20 (Behind), 25-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1739, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 42, 0, NULL, N'Horizontal Movement At: 6
Distance: 13.2 ft
Invincible: 1-21', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1740, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 42, 0, NULL, N'Horizontal Movement At: 6
Distance: 13 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1741, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 42, 0, NULL, N'Horizontal Movement At: 10
Distance: 13 ft
Invincible: 1-22 (If the roll takes you to an edge you will slip off unless you WALK forward, or if an attack is timed on that exact frame)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1742, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 42, 0, NULL, N'Horizontal Movement At: 11
Distance: 13 ft
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1743, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 47, 0, NULL, N'Horizontal Movement At: 11
Distance: 11.8 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1744, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 47, 0, NULL, N'Horizontal Movement At: 10
Distance: 14.8 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1745, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 47, 0, NULL, N'Hit: 19-20 (Behind), 24-25 (Front)
Invincible: 1-15 (Probably a programming error on this animation and should have been 25)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1746, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 47, 0, NULL, N'Hit: 20-21 (Behind), 24-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1747, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 47, 0, NULL, N'Horizontal Movement At: 15
Distance: 9.2 ft
Invincible: 1-18', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1748, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 47, 0, NULL, N'Horizontal Movement At: 16
Distance: 9.2 ft
Invincible: 1-23', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1749, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 47, 0, NULL, N'Horizontal Movement At: 15
Distance: 9.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1750, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 47, 0, NULL, N'Horizontal Movement At: 19 (You''d see her spinning backwards at 12)
Distance: 8.4 ft
Invincible: 1-28', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1751, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 35, 0, NULL, N'Horizontal Movement At: 10
Distance: 12.4 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1752, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 35, 0, NULL, N'Horizontal Movement At: 10
Distance: 14.4 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1753, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 35, 0, NULL, N'Hit: 19-20 (Behind), 24-25 (Front)
Invincible: 1-15 (Probably a programming error on this animation and should have been 25)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1754, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 35, 0, NULL, N'Hit: 20-21 (Behind), 24 (Front), 26-27 (Front)
Invincible: 1-27', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1755, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 35, 0, NULL, N'Horizontal Movement At: 15
Distance: 9 ft
Invincible: 1-18', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1756, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 35, 0, NULL, N'Horizontal Movement At: 17 (You''d see him spinning forwards at 13)
Distance: 8.8 ft
Invincible: 1-23', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1757, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 35, 0, NULL, N'Horizontal Movement At: 12
Distance: 8.8 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1758, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 35, 0, NULL, N'Horizontal Movement At: 18 (You''d see him spinning backwards at 11)
Distance: 9.4 ft
Invincible: 1-28 (If the roll takes you to an edge you will slip off unless an attack is timed on that exact frame)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1759, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 33, 0, NULL, N'Horizontal Movement At: 11
Distance: 16.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1760, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 33, 0, NULL, N'Horizontal Movement At: 9
Distance: 16.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1761, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 33, 0, NULL, N'Hit: 19-20 (Front), 28-29 (Behind)
Invincible: 1-29', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1762, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 33, 0, NULL, N'Hit: 15-16 (Behind), 24-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1763, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 33, 0, NULL, N'Horizontal Movement At: 11
Distance: 13.8 ft
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1764, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 33, 0, NULL, N'Horizontal Movement At: 8
Distance: 14 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1765, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 33, 0, NULL, N'Horizontal Movement At: 11
Distance: 14.4 ft
Invincible: 1-31', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1766, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 33, 0, NULL, N'Horizontal Movement At: 12
Distance: 14.2 ft
Invincible: 1-25', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1767, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 40, 0, NULL, N'Horizontal Movement At: 9
Distance: 16.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1768, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 40, 0, NULL, N'Horizontal Movement At: 10
Distance: 16.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1769, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 40, 0, NULL, N'Hit: 20-21 (Behind), 24-25 (Front)
Invincible: 1-25', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1770, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 40, 0, NULL, N'Hit: 19-20 (Behind), 25-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1771, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 40, 0, NULL, N'Horizontal Movement At: 6
Distance: 14.4 ft
Invincible: 1-21', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1772, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 40, 0, NULL, N'Horizontal Movement At: 6
Distance: 14.2 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1773, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 40, 0, NULL, N'Horizontal Movement At: 12
Distance: 14.2 ft
Invincible: 1-22', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1774, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 40, 0, NULL, N'Horizontal Movement At: 11
Distance: 14.2 ft
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1775, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 38, 0, NULL, N'Horizontal Movement At: 9
Distance: 14.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1776, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 38, 0, NULL, N'Horizontal Movement At: 10
Distance: 14.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1777, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 38, 0, NULL, N'Hit: 20-21 (Behind), 24-25 (Front)
Invincible: 1-25', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1778, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 38, 0, NULL, N'Hit: 19-20 (Behind), 25-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1779, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 38, 0, NULL, N'Horizontal Movement At: 6
Distance: 12.6 ft
Invincible: 1-21', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1780, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 38, 0, NULL, N'Horizontal Movement At: 6
Distance: 12.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1781, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 38, 0, NULL, N'Horizontal Movement At: 12
Distance: 12.4 ft
Invincible: 1-22', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1782, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 38, 0, NULL, N'Horizontal Movement At: 11
Distance: 12.4 ft
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1783, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 48, 0, NULL, N'Horizontal Movement At: 9
Distance: 15.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1784, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 48, 0, NULL, N'Horizontal Movement At: 8
Distance: 15.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1785, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 48, 0, NULL, N'Hit: 20-23 (Behind), 30-31 (Front)
Invincible: 1-31', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1786, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 48, 0, NULL, N'Hit: 22-23 (Front), 27-28 (Behind)
Invincible: 1-28', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1787, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 48, 0, NULL, N'Horizontal Movement At: 5
Distance: 12.2 ft
Invincible: 6-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1788, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 48, 0, NULL, N'Horizontal Movement At: 6
Distance: 11.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1789, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 48, 0, NULL, N'Horizontal Movement At: 5
Distance: 10 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1790, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 48, 0, NULL, N'Horizontal Movement At: 13
Distance: 11.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1791, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 32, 0, NULL, N'Horizontal Movement At: 17
Distance: 13.6 ft
Invincible: 1-20 (If the roll takes you to an edge and you try to move/crouch/jump/shield as it ends you will slip off)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1792, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 32, 0, NULL, N'Horizontal Movement At: 17
Distance: 13.4 ft
Invincible: 1-20 (If the roll takes you to an edge you will slip off unless you WALK forward, or if an attack is timed on that exact frame)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1793, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 32, 0, NULL, N'Hit: 18-31 (Both Sides)
Invincible: 1-31', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1794, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 32, 0, NULL, N'Hit: 20-35 (Both Sides)
Invincible: 1-35', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1795, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 32, 0, NULL, N'Horizontal Movement At: 4
Distance: 11.4 ft
Invincible: 1-21 (If the roll takes you to an edge and you try to move/crouch/jump/shield as it ends you will slip off)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1796, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 32, 0, NULL, N'Horizontal Movement At: 4
Distance: 11.4 ft
Invincible: 1-19 (If the roll takes you to an edge and you try to move/crouch/jump/shield as it ends you will slip off)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1797, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 32, 0, NULL, N'Horizontal Movement At: 4
Distance: 11.4 ft
Invincible: 1-22 (If the roll takes you to an edge you will slip off unless you WALK forward, or if an attack is timed on that exact frame)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1798, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 32, 0, NULL, N'Horizontal Movement At: 4
Distance: 11.4 ft
Invincible: 1-24 (If the roll takes you to an edge you will slip off unless you WALK forward, or if an attack is timed on that exact frame)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1799, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 30, 0, NULL, N'Horizontal Movement At: 9
Distance: 13.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1800, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 30, 0, NULL, N'Horizontal Movement At: 9
Distance: 13.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1801, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 30, 0, NULL, N'Hit: 20-21 (Behind), 24-25 (Front)
Invincible: 1-25', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1802, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 30, 0, NULL, N'Hit: 19-20 (Behind), 25-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1803, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 30, 0, NULL, N'Horizontal Movement At: 7
Distance: 11.4 ft
Invincible: 1-21', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1804, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 30, 0, NULL, N'Horizontal Movement At: 6
Distance: 11.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1805, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 30, 0, NULL, N'Horizontal Movement At: 13
Distance: 11.4 ft
Invincible: 1-22', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1806, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 30, 0, NULL, N'Horizontal Movement At: 11
Distance: 11.8 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1807, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 44, 0, NULL, N'Horizontal Movement At: 8
Distance: 15.4 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1808, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 44, 0, NULL, N'Horizontal Movement At: 9
Distance: 15.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1809, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 44, 0, NULL, N'Hit: 17-19 (Behind), 25-27 (Front)
Invincible: 1-27', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1810, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 44, 0, NULL, N'Hit: 17-18 (Front), 25-26 (Behind)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1811, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 44, 0, NULL, N'Horizontal Movement At: 12
Distance: 13 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1812, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 44, 0, NULL, N'Horizontal Movement At: 12
Distance: 13 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1813, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 44, 0, NULL, N'Horizontal Movement At: 10
Distance: 13 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1814, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 44, 0, NULL, N'Horizontal Movement At: 3
Distance: 14.2 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1815, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 29, 0, NULL, N'Horizontal Movement At: 12
Distance: 8.4 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1816, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 29, 0, NULL, N'Horizontal Movement At: 10
Distance: 8.4 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1817, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 29, 0, NULL, N'Hit: 13-14 (Behind), 18-19 (Front)
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1818, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 50, NULL, NULL, NULL, 29, 0, NULL, N'Hit: 17-18 (Front), 23-24 (Behind)
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1819, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 29, 0, NULL, N'Horizontal Movement At: 6
Distance: 6.2 ft
Invincible: 1-14', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1820, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 36, NULL, NULL, NULL, 29, 0, NULL, N'Horizontal Movement At: 6
Distance: 4.6 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1821, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 29, 0, NULL, N'Horizontal Movement At: 6
Distance: 6 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1822, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 29, 0, NULL, N'Horizontal Movement At: 6
Distance: 4.2 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1823, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 43, 0, NULL, N'Horizontal Movement At: 10
Distance: 12 ft
Invincible: 1-20 (If the roll takes you to an edge and you try to move/crouch/jump/shield as it ends you will slip off)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1824, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 43, 0, NULL, N'Horizontal Movement At: 9
Distance: 13.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1825, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 43, 0, NULL, N'Hit: 13-14 (Behind), 18-19 (Front)
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1826, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 50, NULL, NULL, NULL, 43, 0, NULL, N'Hit: 17-18 (Front), 23-24 (Behind)
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1827, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 43, 0, NULL, N'Horizontal Movement At: 6
Distance: 11.4 ft
Invincible: 1-14', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1828, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 36, NULL, NULL, NULL, 43, 0, NULL, N'Horizontal Movement At: 6
Distance: 8.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1829, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 43, 0, NULL, N'Horizontal Movement At: 6
Distance: 10.8 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1830, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 43, 0, NULL, N'Horizontal Movement At: 6
Distance: 7.8 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1831, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 28, 0, NULL, N'Horizontal Movement At: 9
Distance: 14.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1832, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 28, 0, NULL, N'Horizontal Movement At: 8
Distance: 14.4 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1833, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 28, 0, NULL, N'Hit: 20-23 (Behind), 30-31 (Front)
Invincible: 1-31', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1834, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 28, 0, NULL, N'Hit: 22-23 (Front), 27-28 (Behind)
Invincible: 1-28', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1835, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 28, 0, NULL, N'Horizontal Movement At: 5
Distance: 11.4 ft
Invincible: 6-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1836, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 28, 0, NULL, N'Horizontal Movement At: 6
Distance: 10.6 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1837, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 28, 0, NULL, N'Horizontal Movement At: 5
Distance: 9.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1838, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 28, 0, NULL, N'Horizontal Movement At: 13
Distance: 10.6 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1839, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 46, 0, NULL, N'Horizontal Movement At: 10
Distance: 11.8 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1840, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 46, 0, NULL, N'Horizontal Movement At: 9
Distance: 11.8 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1841, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 46, 0, NULL, N'Hit: 19-20 (Both Sides), 28-29 (Both Sides)
Invincible: 1-29', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1842, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 46, 0, NULL, N'Hit: 19-20 (Behind), 25-27 (Front)
Invincible: 1-27', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1843, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 46, 0, NULL, N'Horizontal Movement At: 5
Distance: 10 ft
Invincible: 1-14', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1844, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 46, 0, NULL, N'Horizontal Movement At: 10
Distance: 10 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1845, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 46, 0, NULL, N'Horizontal Movement At: 10
Distance: 10 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1846, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 46, 0, NULL, N'Horizontal Movement At: 15
Distance: 10 ft
Invincible: 1-22', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1847, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 45, 0, NULL, N'Horizontal Movement At: 10
Distance: 16.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1848, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 45, 0, NULL, N'Horizontal Movement At: 6
Distance: 16.2 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1849, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 45, 0, NULL, N'Hit: 17-19 (Front), 24-26 (Behind)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1850, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 45, 0, NULL, N'Hit: 16-17 (Behind), 20-21 (Front)
Invincible: 1-21', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1851, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 45, 0, NULL, N'Horizontal Movement At: 10
Distance: 11.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1852, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 45, 0, NULL, N'Horizontal Movement At: 7
Distance: 11.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1853, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 45, 0, NULL, N'Horizontal Movement At: 11
Distance: 11.4 ft
Invincible: 1-22 (If the roll takes you to an edge you will slip off unless you WALK forward, or if an attack is timed on that exact frame)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1854, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 45, 0, NULL, N'Horizontal Movement At: 4
Distance: 11.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1855, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 41, 0, NULL, N'Horizontal Movement At: 10
Distance: 14.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1856, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 41, 0, NULL, N'Horizontal Movement At: 12
Distance: 14.4 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1857, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 41, 0, NULL, N'Hit: 13-14 (Front), 19-20 (Behind)
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1858, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 41, 0, NULL, N'Hit: 14-15 (Front), 25-26 (Behind)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1859, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 41, 0, NULL, N'Horizontal Movement At: 4
Distance: 12.4 ft
Invincible: 1-19 (If the roll takes you to an edge and you try to move/crouch/jump/shield as it ends you will slip off)', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1860, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 41, 0, NULL, N'Horizontal Movement At: 7
Distance: 12 ft
Invincible: 1-14', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1861, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 41, 0, NULL, N'Horizontal Movement At: 5
Distance: 12.2 ft
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1862, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 41, 0, NULL, N'Horizontal Movement At: 11
Distance: 12.4 ft
Invincible: 1-29', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1863, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 51, 0, NULL, N'Horizontal Movement At: 11
Distance: 12.8 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1864, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 51, 0, NULL, N'Horizontal Movement At: 9
Distance: 12.8 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1865, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 51, 0, NULL, N'Hit: 19-20 (Front), 28-29 (Behind)
Invincible: 1-29', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1866, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 51, 0, NULL, N'Hit: 15-16 (Behind), 24-26 (Front)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1867, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 51, 0, NULL, N'Horizontal Movement At: 11
Distance: 11 ft
Invincible: 1-24', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1868, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 51, 0, NULL, N'Horizontal Movement At: 8
Distance: 11 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1869, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 51, 0, NULL, N'Horizontal Movement At: 11
Distance: 11.4 ft
Invincible: 1-31', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1870, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 51, 0, NULL, N'Horizontal Movement At: 12
Distance: 11.2 ft
Invincible: 1-25', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1871, N'Tech-Roll Forward', N'ftechroll', NULL, NULL, 40, NULL, NULL, NULL, 52, 0, NULL, N'Horizontal Movement At: 8
Distance: 16.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1872, N'Tech-Roll Backward', N'btechroll', NULL, NULL, 40, NULL, NULL, NULL, 52, 0, NULL, N'Horizontal Movement At: 9
Distance: 16.6 ft
Invincible: 1-20', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1873, N'Getup-Attack (Back)', N'bgetup', NULL, NULL, 49, NULL, NULL, NULL, 52, 0, NULL, N'Hit: 17-19 (Behind), 25-27 (Front)
Invincible: 1-27', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1874, N'Getup-Attack (Stomach)', N'fgetup', NULL, NULL, 49, NULL, NULL, NULL, 52, 0, NULL, N'Hit: 17-18 (Front), 25-26 (Behind)
Invincible: 1-26', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1875, N'Getup-Roll Forward (Back)', N'fgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 52, 0, NULL, N'Horizontal Movement At: 12
Distance: 14.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1876, N'Getup-Roll Forward (Stomach)', N'fgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 52, 0, NULL, N'Horizontal Movement At: 12
Distance: 14.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1877, N'Getup-Roll Backward (Back)', N'bgetuprollback', NULL, NULL, 35, NULL, NULL, NULL, 52, 0, NULL, N'Horizontal Movement At: 10
Distance: 14.4 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1878, N'Getup-Roll Backward (Stomach)', N'bgetuprollstomach', NULL, NULL, 35, NULL, NULL, NULL, 52, 0, NULL, N'Horizontal Movement At: 3
Distance: 15.6 ft
Invincible: 1-19', NULL, NULL, N'https://smashboards.com/threads/detailed-throws-techs-and-getups-frame-data.206469/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1879, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 27, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1880, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 28, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1881, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 29, 0, NULL, N'Invincible: 1-24', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1882, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 30, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1883, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 31, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1884, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 32, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1885, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 33, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1886, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 34, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1887, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 35, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1888, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 36, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1889, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 37, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1890, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 38, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1891, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 39, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1892, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 40, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1893, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 41, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1894, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 42, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1895, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 43, 0, NULL, N'Invincible: 1-24', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1896, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 44, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1897, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 45, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1898, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 46, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1899, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 47, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1900, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 48, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1901, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 49, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1902, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 50, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1903, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 51, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1904, N'Tech-Neutral', N'neutraltech', NULL, NULL, 26, NULL, NULL, NULL, 52, 0, NULL, N'Invincible: 1-20', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1905, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 27, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1906, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 28, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1907, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 29, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1908, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 30, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1909, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 31, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1910, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 32, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1911, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 33, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1912, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 34, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1913, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 35, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1914, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 36, 0, NULL, N'Invincible: 1-19
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1915, N'Tech-Wall', N'walltech', NULL, NULL, 30, 6, NULL, NULL, 37, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1916, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 38, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1917, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 39, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1918, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 40, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1919, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 41, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1920, N'Tech-Wall', N'walltech', NULL, NULL, 25, 6, NULL, NULL, 42, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1921, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 43, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1922, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 44, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1923, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 45, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1924, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 46, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1925, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 47, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1926, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 48, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1927, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 49, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1928, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 50, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1929, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 51, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1930, N'Tech-Wall', N'walltech', NULL, NULL, 31, 6, NULL, NULL, 52, 0, NULL, N'Invincible: 1-14
Input an upwards direction anywhere on 1-4 for walljump tech on 6)', NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1931, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 27, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1932, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 28, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1933, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 29, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1934, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 30, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1935, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 31, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1936, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 32, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1937, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 33, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1938, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 34, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1939, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 35, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1940, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 36, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1941, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 37, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1942, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 38, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1943, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 39, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1944, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 40, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1945, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 41, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1946, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 42, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1947, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 43, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1948, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 44, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1949, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 45, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1950, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 46, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1951, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 47, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1952, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 48, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1953, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 49, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1954, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 50, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1955, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 51, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1956, N'Tech-Wall Jump', N'walltechjump', NULL, NULL, 40, 1, NULL, NULL, 52, 0, NULL, NULL, NULL, NULL, N'http://meleeframedata.com/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1957, N'Jab 1', N'jab1', NULL, NULL, 30, NULL, NULL, NULL, 53, 1, 12, NULL, NULL, 11, N'https://fightcore.gg/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1958, N'Forward Tilt', N'ftilt', NULL, NULL, 37, NULL, NULL, NULL, 53, 1, 14, NULL, NULL, 12, N'https://fightcore.gg/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1959, N'Up Tilt', N'utilt', NULL, NULL, 43, NULL, NULL, NULL, 53, 1, 24, NULL, NULL, 10, N'https://fightcore.gg/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1960, N'Down Tilt', N'dtilt', NULL, NULL, 32, NULL, NULL, NULL, 53, 1, 7, NULL, NULL, 5, N'https://fightcore.gg/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1961, N'Up Air', N'uair', 30, 15, 0, NULL, NULL, NULL, 53, 0, 17, NULL, NULL, 16, N'https://fightcore.gg/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1962, N'Forward Air', N'fair', 30, 15, 0, NULL, NULL, NULL, 53, 0, 11, NULL, NULL, 8, N'https://fightcore.gg/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1963, N'Down Air', N'dair', 30, 15, 0, NULL, NULL, NULL, 53, 0, 17, NULL, NULL, 14, N'https://fightcore.gg/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1964, N'Neutral Air', N'nair', 30, 15, 0, NULL, NULL, NULL, 53, 0, 27, N'Hitboxes at 6-7 10-11 14-15 18-19 22-23 26-27', NULL, 6, N'https://fightcore.gg/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1965, N'Up Smash', N'usmash', NULL, NULL, 56, 49, NULL, NULL, 53, 0, 29, N'Hitboxes at 10-15 26-29', NULL, 10, N'https://fightcore.gg/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1966, N'Forward Smash', N'fsmash', NULL, NULL, 40, 40, NULL, NULL, 53, 0, 16, NULL, NULL, 16, N'https://fightcore.gg/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1967, N'Down Smash', N'dsmash', NULL, NULL, 40, 34, NULL, NULL, 53, 0, 16, N'Hitboxes at 4-7 13-16', NULL, 4, N'https://fightcore.gg/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1968, N'Forward Smash 2', N'fsmash2', NULL, NULL, 59, 50, NULL, NULL, 33, 2, 13, N'Shield stun: 18 shield hit lag: 8 Adantage: -28', NULL, 10, N'https://smashboards.com/threads/link-hitboxes-and-frame-data.306010/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1969, N'Forward Smash 2', N'fsmash2', NULL, NULL, 40, NULL, NULL, NULL, 51, 2, 13, NULL, NULL, 10, N'https://smashboards.com/threads/young-link-hitboxes-and-frame-data.301753/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1970, N'Up B (Air)', N'aupb', 30, NULL, 94, NULL, NULL, NULL, 45, 4, 42, N'Invincible: 18-55 Landfallspeciallag: 4 The frame of choosing direction: 35', NULL, 36, N'https://smashboards.com/threads/sheik-hitboxes-and-frame-data.299984/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1971, N'Double Edged Dance (2 Forward/Neutral/Down)', N'sideb2', NULL, NULL, 40, NULL, NULL, NULL, 28, 4, 16, N'Window for the next move: 8-26', NULL, 14, N'https://smashboards.com/threads/roy-hitboxes-and-frame-data.286427/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1972, N'Double Edged Dance (2, Up)', N'sideb2up', NULL, NULL, 40, NULL, NULL, NULL, 28, 4, 15, N'Window for the next move: 17-32', NULL, 12, N'https://smashboards.com/threads/roy-hitboxes-and-frame-data.286427/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1973, N'Double Edged Dance (3, Forward/Neutral)', N'sideb3', NULL, NULL, 46, NULL, NULL, NULL, 28, 4, 14, N'Window for the next move: 16-37
', NULL, 11, N'https://smashboards.com/threads/roy-hitboxes-and-frame-data.286427/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1974, N'Double Edged Dance (3, Up)', N'sideb3up', NULL, NULL, 46, NULL, NULL, NULL, 28, 4, 17, N'Window for the next move: 18-37', NULL, 13, N'https://smashboards.com/threads/roy-hitboxes-and-frame-data.286427/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1976, N'Double Edged Dance (3, Down)', N'sideb3down', NULL, NULL, 46, NULL, NULL, NULL, 28, 4, NULL, N'Hit: 16, 18, 20, 22
Window for the next move: 23-35', NULL, NULL, N'https://smashboards.com/threads/roy-hitboxes-and-frame-data.286427/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1977, N'Double Edged Dance (4, Forward/Neutral)', N'sideb4', NULL, NULL, 50, NULL, NULL, NULL, 28, 4, 26, NULL, NULL, 23, N'https://smashboards.com/threads/roy-hitboxes-and-frame-data.286427/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1978, N'Double Edged Dance (4, Up)', N'sideb4up', NULL, NULL, 50, NULL, NULL, NULL, 28, 4, 25, NULL, NULL, 20, N'https://smashboards.com/threads/roy-hitboxes-and-frame-data.286427/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1979, N'Double Edged Dance (4, Down)', N'sideb4down', NULL, NULL, 50, NULL, NULL, NULL, 29, 4, NULL, N'Hit: 13-15, 19-21, 25-27, 31-33
37-38', NULL, NULL, N'https://smashboards.com/threads/roy-hitboxes-and-frame-data.286427/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1982, N'Sword Dance (2, Neutral/Side/Down)', N'sideb2', NULL, NULL, 40, NULL, NULL, NULL, 48, 4, 16, N'Window for attack 3: 17-33', NULL, 14, N'https://smashboards.com/threads/complete-marth-hitboxes-and-frame-data.285324/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1983, N'Sword Dance (2, Up)', N'sideb2up', NULL, NULL, 40, NULL, NULL, NULL, 48, 4, 15, N'Window for attack 3: 17-32', NULL, 12, N'https://smashboards.com/threads/complete-marth-hitboxes-and-frame-data.285324/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1984, N'Sword Dance (3, Side/Neutral)', N'sideb3', NULL, NULL, 46, NULL, NULL, NULL, 48, 4, 14, N'Window for attack 4: 16-37', NULL, 11, N'https://smashboards.com/threads/complete-marth-hitboxes-and-frame-data.285324/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1985, N'Sword Dance (3, Up)', N'sideb3up', NULL, NULL, 46, NULL, NULL, NULL, 48, 4, 17, N'Window for attack 4: 18-38', NULL, 13, N'https://smashboards.com/threads/complete-marth-hitboxes-and-frame-data.285324/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1986, N'Sword Dance (3, Down)', N'sideb3down', NULL, NULL, 46, NULL, NULL, NULL, 48, 4, 18, N'Window for attack 4: 19-35', NULL, 15, N'https://smashboards.com/threads/complete-marth-hitboxes-and-frame-data.285324/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1988, N'Sword Dance (4, Side/Neutral)', N'sideb4', NULL, NULL, 50, NULL, NULL, NULL, 48, 4, 26, NULL, NULL, 23, N'https://smashboards.com/threads/complete-marth-hitboxes-and-frame-data.285324/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1989, N'Sword Dance (4, Up)', N'sideb4up', NULL, NULL, 50, NULL, NULL, NULL, 48, 4, 25, NULL, NULL, 20, N'https://smashboards.com/threads/complete-marth-hitboxes-and-frame-data.285324/')
GO
INSERT [dbo].[Move] ([Id], [Name], [NormalizedName], [LandLag], [LCanceledLandLag], [TotalFrames], [IASA], [AutoCancelBefore], [AutoCancelAfter], [CharacterId], [Type], [End], [Notes], [Percent], [Start], [Source]) VALUES (1990, N'Sword Dance (4, Down)', N'sideb4down', NULL, NULL, 60, NULL, NULL, NULL, 48, 4, NULL, N'Hit: 13-15, 19-21, 25-27, 31-33,
37-38
', NULL, NULL, N'https://smashboards.com/threads/complete-marth-hitboxes-and-frame-data.285324/')
GO
SET IDENTITY_INSERT [dbo].[Move] OFF
GO
ALTER TABLE [dbo].[CharacterStatistics] ADD  DEFAULT ((0)) FOR [DashFrames]
GO
ALTER TABLE [dbo].[CharacterStatistics] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [InitialDash]
GO
ALTER TABLE [dbo].[CharacterStatistics] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [WaveDashLength]
GO
ALTER TABLE [dbo].[Move] ADD  DEFAULT ((0)) FOR [Type]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_CharacterMiscInfo_CharacterInfoId] FOREIGN KEY([CharacterInfoId])
REFERENCES [dbo].[CharacterMiscInfo] ([Id])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_CharacterMiscInfo_CharacterInfoId]
GO
ALTER TABLE [dbo].[Characters]  WITH CHECK ADD  CONSTRAINT [FK_Characters_CharacterStatistics_CharacterStatisticsId] FOREIGN KEY([CharacterStatisticsId])
REFERENCES [dbo].[CharacterStatistics] ([Id])
GO
ALTER TABLE [dbo].[Characters] CHECK CONSTRAINT [FK_Characters_CharacterStatistics_CharacterStatisticsId]
GO
ALTER TABLE [dbo].[Hitbox]  WITH CHECK ADD  CONSTRAINT [FK_Hitbox_Move_MoveId] FOREIGN KEY([MoveId])
REFERENCES [dbo].[Move] ([Id])
GO
ALTER TABLE [dbo].[Hitbox] CHECK CONSTRAINT [FK_Hitbox_Move_MoveId]
GO
ALTER TABLE [dbo].[Move]  WITH CHECK ADD  CONSTRAINT [FK_Move_Characters_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[Characters] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Move] CHECK CONSTRAINT [FK_Move_Characters_CharacterId]
GO
