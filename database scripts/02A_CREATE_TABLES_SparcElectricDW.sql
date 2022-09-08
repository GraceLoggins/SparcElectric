/***********************************************************/
/*     CREATE tables SparcElectricHybridDW                 */
/***********************************************************/
USE [SparcElectricHybridDW]
GO

/****** Object:  Table [dbo].[ConnectionType]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConnectionType](
	[ConnectionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](30) NOT NULL,
	[TypeDescription] [varchar](180) NULL,
	[TypeFlag] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ConnectionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[ConnectionTypeID] [int] NOT NULL,
	[CustomerName] [varchar](50) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[State] [varchar](3) NOT NULL,
	[Zipcode] [varchar](10) NULL,
	[CustomerCategory] [varchar](50) NOT NULL,
	[PublicOrPrivate] [varchar](8) NOT NULL,
	[AccountStartDate] [date] NOT NULL,
	[AccountEndDate] [date] NULL,
	[MeterModelID] [int] NULL,
	[CustMeterIdent] [varchar](50) NOT NULL,
	[eRate] [float] NULL,
	[LastRemoteCheck] [datetime] NULL,
	[LastInPersonCheck] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DistributionType]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DistributionType](
	[DistributionTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DistributionType] [varchar](50) NOT NULL,
	[DistributionInfo] [varchar](240) NULL,
PRIMARY KEY CLUSTERED 
(
	[DistributionTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElecDelivery]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElecDelivery](
	[ElecDeliveryID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[DistributionTypeID] [int] NOT NULL,
	[ETransBegin] [datetime] NOT NULL,
	[ETransEnd] [datetime] NOT NULL,
	[AmountKWH] [float] NOT NULL,
	[RatePerUnit] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ElecDeliveryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ElecDeliveryFact]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElecDeliveryFact](
	[ElecDeliveryFactID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[DistributionTypeID] [int] NOT NULL,
	[TotTimeHrs] [int] NOT NULL,
	[TotTimeMins] [int] NOT NULL,
	[AmountKWH] [float] NOT NULL,
	[Rate] [float] NOT NULL,
 CONSTRAINT [PK_ElecDeliveryFact] PRIMARY KEY CLUSTERED 
(
	[ElecDeliveryFactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](30) NOT NULL,
	[MName] [varchar](30) NULL,
	[LName] [varchar](50) NOT NULL,
	[EmpAddressLn1] [varchar](50) NOT NULL,
	[EmpAddressLn2] [varchar](50) NULL,
	[EmpCity] [varchar](30) NOT NULL,
	[EmpState] [varchar](2) NOT NULL,
	[EmpZipcode] [varchar](10) NOT NULL,
	[HourlyRate] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSkill]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSkill](
	[EmployeeSkillID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[WorkSkillsID] [int] NOT NULL,
	[EmployeeRating] [varchar](30) NOT NULL,
	[SkillRatingDesc] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeSkillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GridStoreFact]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GridStoreFact](
	[GridStoreFactID] [int] IDENTITY(1,1) NOT NULL,
	[Direction] [bit] NOT NULL,
	[GridStoreSrcID] [int] NOT NULL,
	[AmountKWH] [float] NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[eRate] [float] NOT NULL,
 CONSTRAINT [PK_GridStoreFact] PRIMARY KEY CLUSTERED 
(
	[GridStoreFactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GridStoreLoss]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GridStoreLoss](
	[GridStoreLossID] [int] IDENTITY(1,1) NOT NULL,
	[GridStoreSrcID] [int] NOT NULL,
	[LossRate] [float] NOT NULL,
	[LossDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_GridStoreLoss] PRIMARY KEY CLUSTERED 
(
	[GridStoreLossID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GridStoreSrc]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GridStoreSrc](
	[GridStoreSrcID] [int] IDENTITY(1,1) NOT NULL,
	[SourceName] [varchar](50) NOT NULL,
	[SourceDesc] [varchar](240) NOT NULL,
	[SparcOwned] [bit] NULL,
	[GridVendorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GridStoreSrcID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GridVendor]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GridVendor](
	[GridVendorID] [int] IDENTITY(1,1) NOT NULL,
	[GridVendorName] [varchar](50) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[State] [varchar](3) NOT NULL,
	[Zipcode] [varchar](10) NULL,
	[GridVendorCategory] [varchar](50) NOT NULL,
	[PublicOrPrivate] [varchar](8) NOT NULL,
	[ContractNumber] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[GridVendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InfrasType]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfrasType](
	[InfrasTypeID] [int] IDENTITY(1,1) NOT NULL,
	[InfrasName] [varchar](50) NOT NULL,
	[InfrasType] [varchar](30) NOT NULL,
	[InventoryType] [varchar](30) NOT NULL,
	[InfrasTypeDesc] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[InfrasTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[InfrasTypeID] [int] NOT NULL,
	[InventoryName] [varchar](20) NULL,
	[InventoryDesc] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[InventoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeterModel]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeterModel](
	[MeterModelID] [int] IDENTITY(1,1) NOT NULL,
	[MeterModelName] [varchar](50) NOT NULL,
	[MeterModelType] [varchar](30) NOT NULL,
	[MeterModelNumber] [varchar](30) NULL,
	[MeterDesc] [varchar](80) NULL,
	[DataFormats] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[MeterModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WOCustomer]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WOCustomer](
	[WOCustomerID] [bigint] NOT NULL,
	[SparcWONumber] [bigint] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[WorkOrderTypeID] [int] NOT NULL,
	[WOBegin] [datetime] NOT NULL,
	[WOEnd] [datetime] NULL,
	[WOEquipCost] [money] NULL,
	[WOLaborCost] [money] NULL,
	[JobComplete] [bit] NOT NULL,
	[JobNotes] [varchar](240) NULL,
	[MeterModelID] [int] NULL,
	[NoticeDateTime] [datetime] NULL,
	[DWProc] [bit] NOT NULL,
 CONSTRAINT [PK_WOCustomer] PRIMARY KEY CLUSTERED 
(
	[WOCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WOInfras]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WOInfras](
	[WOInfrasID] [bigint] NOT NULL,
	[SparcWONumber] [bigint] NOT NULL,
	[InventoryID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[WorkOrderTypeID] [int] NOT NULL,
	[WOBegin] [datetime] NOT NULL,
	[WOEnd] [datetime] NULL,
	[WOEquipCost] [money] NULL,
	[WOLaborCost] [money] NULL,
	[JobComplete] [bit] NOT NULL,
	[JobNotes] [varchar](240) NULL,
	[NoticeDateTime] [datetime] NULL,
	[DWProc] [bit] NOT NULL,
 CONSTRAINT [PK_WOInfras] PRIMARY KEY CLUSTERED 
(
	[WOInfrasID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOrderCustFact]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderCustFact](
	[WorkOrderCustFactID] [int] IDENTITY(1,1) NOT NULL,
	[SparcWONumber] [bigint] NOT NULL,
	[CustomerID] [int] NULL,
	[WorkOrderTypeID] [int] NOT NULL,
	[WOTotTimeHrs] [int] NULL,
	[WOTotTimeMins] [int] NULL,
	[WOEquipCost] [money] NULL,
	[WOLaborCost] [money] NULL,
	[JobComplete] [bit] NOT NULL,
	[FirstBeginDate] [datetime] NULL,
	[LastEndDate] [datetime] NULL,
	[HoursNoteVStart] [int] NULL,
	[MeterName] [varchar](50) NULL,
	[MeterType] [varchar](30) NULL,
	[MeterModelNumber] [varchar](50) NULL,
	[ConnTypeName] [varchar](30) NULL,
 CONSTRAINT [PK_WorkOrderCustFact] PRIMARY KEY CLUSTERED 
(
	[WorkOrderCustFactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOrderInfrasFact]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderInfrasFact](
	[WorkOrderInfrasFactID] [int] IDENTITY(1,1) NOT NULL,
	[SparcWONumber] [bigint] NOT NULL,
	[InventoryID] [int] NULL,
	[WorkOrderTypeID] [int] NOT NULL,
	[WOTotTimeHrs] [int] NULL,
	[WOTotTimeMins] [int] NULL,
	[WOEquipCost] [money] NULL,
	[WOLaborCost] [money] NULL,
	[JobComplete] [bit] NOT NULL,
	[FirstBeginDate] [datetime] NULL,
	[LastEndDate] [datetime] NULL,	
	[HoursNoteVStart] [int] NULL,
	[InfrasName] [varchar](50) NULL,
	[InfrasType] [varchar](30) NULL,
	[InventoryName] [varchar](20) NULL,
 CONSTRAINT [PK_WorkOrderInfrasFact] PRIMARY KEY CLUSTERED 
(
	[WorkOrderInfrasFactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkOrderType]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkOrderType](
	[WorkOrderTypeID] [int] IDENTITY(1,1) NOT NULL,
	[WorkOrder] [varchar](50) NOT NULL,
	[Description] [varchar](240) NULL,
	[ConnectionType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkOrderTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSkill]    Script Date: 7/30/2022 5:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSkill](
	[WorkSkillID] [int] IDENTITY(1,1) NOT NULL,
	[SkillType] [varchar](30) NOT NULL,
	[RequiredFor] [varchar](30) NOT NULL,
	[InfrasTypeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkSkillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Add Comments to ElectDeliveryFact, WorkOrderCustFact, WorkOrderInfrasFact (09/08/2022)  *****/
USE SparcElectricHybridDW;
GO
EXEC sp_addextendedproperty
@name = N'Comment',
@value = 'Per customer daily totals table',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'ElecDeliveryFact';
GO
EXEC sp_addextendedproperty
@name = N'Comment',
@value = 'Per full customer work order record',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'WorkOrderCustFact';
GO
EXEC sp_addextendedproperty
@name = N'Comment',
@value = 'Per full inventory/infrastructure work order record',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'WorkOrderInfrasFact';
GO
/*************************************************************************/