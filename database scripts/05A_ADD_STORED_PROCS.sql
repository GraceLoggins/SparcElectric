/***********************************************************/
/*     CREATE PROCEDURES SparcElectricHybridDW             */
/***********************************************************/
USE [SparcElectricHybridDW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*******************************************************************************/
IF EXISTS(SELECT 1 FROM sys.procedures WHERE Name = 'sparc_ProcessCustWOintoDW')
DROP PROCEDURE dbo.sparc_ProcessCustWOintoDW;
/*******************************************************************************/
/*     CREATE PROCEDURE sparc_ProcessCustWOintoDW                              */ 
/*******************************************************************************/
CREATE PROCEDURE [dbo].[sparc_ProcessCustWOintoDW]
AS
BEGIN

INSERT INTO WorkOrderCustFact(
    SparcWONumber, CustomerID, WorkOrderTypeID, 
    WOTotTimeHrs, WOTotTimeMins, WOEquipCost, WOLaborCost, 
	JobComplete, FirstBeginDate, LastEndDate, HoursNoteVStart
    )
    SELECT woc.SparcWONumber, woc.CustomerID, woc.WorkOrderTypeID, 
            SUM(DATEDIFF(hh,woc.WOBegin,woc.WOEnd)), SUM(DATEDIFF(mi,woc.WOBegin, woc.WOEnd)%60),
            SUM(woc.WOEquipCost), SUM(woc.WOLaborCost), 
			SUM(CASE(JobComplete) WHEN 1 THEN 1 ELSE 0 END), 
			MIN(WOBegin), MAX(WOEnd),
			MIN(DATEDIFF(hh,woc.NoticeDateTime, woc.WOBegin))
    FROM WOCustomer woc
	WHERE DWProc = 0
    GROUP BY woc.SparcWONumber, woc.CustomerID, woc.WorkOrderTypeID;

UPDATE fac
SET 
fac.MeterName = md.MeterModelName,
fac.MeterType = md.MeterModelType,
fac.MeterModelNumber = md.MeterModelNumber, 
fac.ConnTypeName = ctc.TypeName
FROM WorkOrderCustFact AS fac
    INNER JOIN (select ct.ConnectionTypeID, ct.TypeName, wt.WorkOrderTypeID
                    from ConnectionType ct, WorkOrderType wt
                    where wt.ConnectionType = ct.ConnectionTypeID) AS ctc
	ON fac.WorkOrderTypeID = ctc.WorkOrderTypeID
    INNER JOIN (select me.MeterModelID, me.MeterModelName, 
    me.MeterModelType, me.MeterModelNumber, cus.CustomerID
                    from MeterModel me, Customer cus
                    where cus.MeterModelID = me.MeterModelID) md
	ON fac.CustomerID = md.CustomerID;

UPDATE woc
SET
woc.DWProc = 1
FROM WOCustomer woc, WorkOrderCustFact wf
WHERE woc.SparcWONumber = wf.SparcWONumber;

END
GO

/*******************************************************************************/
IF EXISTS(SELECT 1 FROM sys.procedures WHERE Name = 'sparc_ProcessInfrasWOintoDW')
DROP PROCEDURE dbo.sparc_ProcessInfrasWOintoDW;
/*******************************************************************************/
/*     CREATE PROCEDURE sparc_ProcessInfrasWOintoDW                            */ 
/*******************************************************************************/
CREATE PROCEDURE [dbo].[sparc_ProcessInfrasWOintoDW]
AS
BEGIN

INSERT INTO WorkOrderInfrasFact(
	SparcWONumber, InventoryID, WorkOrderTypeID, 
    WOTotTimeHrs, WOTotTimeMins, WOEquipCost, WOLaborCost, 
	JobComplete, FirstBeginDate, LastEndDate, HoursNoteVStart
    )
    SELECT  inf.SparcWONumber, inf.InventoryID, inf.WorkOrderTypeID, 
            SUM(DATEDIFF(hh,inf.WOBegin,inf.WOEnd)), SUM(DATEDIFF(mi,inf.WOBegin, inf.WOEnd)%60),
            SUM(inf.WOEquipCost), SUM(inf.WOLaborCost), 
			SUM(CASE(inf.JobComplete) WHEN 1 THEN 1 ELSE 0 END), 
			MIN(WOBegin), MAX(WOEnd),
			MIN(DATEDIFF(hh,inf.NoticeDateTime, inf.WOBegin))
	FROM WOInfras inf
    WHERE DWProc = 0
    GROUP BY inf.SparcWONumber, inf.InventoryID, inf.WorkOrderTypeID;

UPDATE fac
SET 
fac.InfrasName = spe.InfrasName,
fac.InfrasType = spe.InfrasType,
fac.InventoryName = inv.InventoryName
FROM WorkOrderInfrasFact AS fac
    INNER JOIN Inventory inv
	ON fac.InventoryID = inv.InventoryID
    INNER JOIN (select ift.InfrasTypeID, ift.InfrasName, 
    ift.InfrasType, inv.InventoryID
                    from InfrasType ift, Inventory inv
                    where inv.InfrasTypeID = ift.InfrasTypeID) spe
	ON fac.InventoryID = spe.InventoryID;

UPDATE woi
SET
woi.DWProc = 1
FROM WOInfras woi, WorkOrderInfrasFact wf
WHERE woi.SparcWONumber = wf.SparcWONumber;

END
GO


