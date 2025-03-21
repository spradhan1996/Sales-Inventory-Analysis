USE [master]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 21-03-2025 21:03:50 ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_AgentSigningCertificate##]    Script Date: 21-03-2025 21:03:50 ******/
CREATE USER [##MS_AgentSigningCertificate##] FOR LOGIN [##MS_AgentSigningCertificate##]
GO
/****** Object:  Table [dbo].[VehicleSalesData]    Script Date: 21-03-2025 21:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleSalesData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Month] [varchar](10) NOT NULL,
	[Year] [int] NOT NULL,
	[NewVehicleSales] [int] NOT NULL,
	[UsedVehicleSales] [int] NOT NULL,
	[TotalSales]  AS ([NewVehicleSales]+[UsedVehicleSales]) PERSISTED,
	[InventoryLevels] [int] NOT NULL,
	[AppointmentSetRate] [decimal](5, 2) NOT NULL,
	[AppointmentCloseRate] [decimal](5, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
