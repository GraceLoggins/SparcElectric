/***********************************************************/
/*     ADD FOREIGN KEYS SparcElectricHybridDW                    */
/***********************************************************/
USE [SparcElectricHybridDW]
GO

ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_ConnectionType] FOREIGN KEY([ConnectionTypeID])
REFERENCES [dbo].[ConnectionType] ([ConnectionTypeID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_ConnectionType]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_MeterModel] FOREIGN KEY([MeterModelID])
REFERENCES [dbo].[MeterModel] ([MeterModelID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_MeterModel]
GO
ALTER TABLE [dbo].[ElecDelivery]  WITH CHECK ADD  CONSTRAINT [FK_ElecDelivery_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[ElecDelivery] CHECK CONSTRAINT [FK_ElecDelivery_Customer]
GO
ALTER TABLE [dbo].[ElecDelivery]  WITH CHECK ADD  CONSTRAINT [FK_ElecDelivery_DistributionType] FOREIGN KEY([DistributionTypeID])
REFERENCES [dbo].[DistributionType] ([DistributionTypeID])
GO
ALTER TABLE [dbo].[ElecDelivery] CHECK CONSTRAINT [FK_ElecDelivery_DistributionType]
GO
ALTER TABLE [dbo].[ElecDeliveryFact]  WITH CHECK ADD  CONSTRAINT [FK_ElecDeliveryFact_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[ElecDeliveryFact] CHECK CONSTRAINT [FK_ElecDeliveryFact_Customer]
GO
ALTER TABLE [dbo].[ElecDeliveryFact]  WITH CHECK ADD  CONSTRAINT [FK_ElecDeliveryFact_DistributionType] FOREIGN KEY([DistributionTypeID])
REFERENCES [dbo].[DistributionType] ([DistributionTypeID])
GO
ALTER TABLE [dbo].[ElecDeliveryFact] CHECK CONSTRAINT [FK_ElecDeliveryFact_DistributionType]
GO
ALTER TABLE [dbo].[EmployeeSkill]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSkill_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[EmployeeSkill] CHECK CONSTRAINT [FK_EmployeeSkill_Employee]
GO
ALTER TABLE [dbo].[EmployeeSkill]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSkill_WorkSkill] FOREIGN KEY([WorkSkillsID])
REFERENCES [dbo].[WorkSkill] ([WorkSkillID])
GO
ALTER TABLE [dbo].[EmployeeSkill] CHECK CONSTRAINT [FK_EmployeeSkill_WorkSkill]
GO
ALTER TABLE [dbo].[GridStoreFact]  WITH CHECK ADD  CONSTRAINT [FK_GridStoreFact_GridStoreSrc] FOREIGN KEY([GridStoreSrcID])
REFERENCES [dbo].[GridStoreSrc] ([GridStoreSrcID])
GO
ALTER TABLE [dbo].[GridStoreFact] CHECK CONSTRAINT [FK_GridStoreFact_GridStoreSrc]
GO
ALTER TABLE [dbo].[GridStoreLoss]  WITH CHECK ADD  CONSTRAINT [FK_GridStoreLoss_GridStoreSrc] FOREIGN KEY([GridStoreSrcID])
REFERENCES [dbo].[GridStoreSrc] ([GridStoreSrcID])
GO
ALTER TABLE [dbo].[GridStoreLoss] CHECK CONSTRAINT [FK_GridStoreLoss_GridStoreSrc]
GO
ALTER TABLE [dbo].[GridStoreSrc]  WITH CHECK ADD  CONSTRAINT [FK_GridStoreSrc_GridVendor] FOREIGN KEY([GridVendorID])
REFERENCES [dbo].[GridVendor] ([GridVendorID])
GO
ALTER TABLE [dbo].[GridStoreSrc] CHECK CONSTRAINT [FK_GridStoreSrc_GridVendor]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_InfrasType] FOREIGN KEY([InfrasTypeID])
REFERENCES [dbo].[InfrasType] ([InfrasTypeID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_InfrasType]
GO
ALTER TABLE [dbo].[WOCustomer]  WITH CHECK ADD  CONSTRAINT [FK_WOCustomer_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[WOCustomer] CHECK CONSTRAINT [FK_WOCustomer_Customer]
GO
ALTER TABLE [dbo].[WOCustomer]  WITH CHECK ADD  CONSTRAINT [FK_WOCustomer_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[WOCustomer] CHECK CONSTRAINT [FK_WOCustomer_Employee]
GO
ALTER TABLE [dbo].[WOCustomer]  WITH CHECK ADD  CONSTRAINT [FK_WOCustomer_MeterModel] FOREIGN KEY([MeterModelID])
REFERENCES [dbo].[MeterModel] ([MeterModelID])
GO
ALTER TABLE [dbo].[WOCustomer] CHECK CONSTRAINT [FK_WOCustomer_MeterModel]
GO
ALTER TABLE [dbo].[WOCustomer]  WITH CHECK ADD  CONSTRAINT [FK_WOCustomer_WorkOrderType] FOREIGN KEY([WorkOrderTypeID])
REFERENCES [dbo].[WorkOrderType] ([WorkOrderTypeID])
GO
ALTER TABLE [dbo].[WOCustomer] CHECK CONSTRAINT [FK_WOCustomer_WorkOrderType]
GO
ALTER TABLE [dbo].[WOInfras]  WITH CHECK ADD  CONSTRAINT [FK_WOInfras_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[WOInfras] CHECK CONSTRAINT [FK_WOInfras_Employee]
GO
ALTER TABLE [dbo].[WOInfras]  WITH CHECK ADD  CONSTRAINT [FK_WOInfras_Inventory] FOREIGN KEY([InventoryID])
REFERENCES [dbo].[Inventory] ([InventoryID])
GO
ALTER TABLE [dbo].[WOInfras] CHECK CONSTRAINT [FK_WOInfras_Inventory]
GO
ALTER TABLE [dbo].[WOInfras]  WITH CHECK ADD  CONSTRAINT [FK_WOInfras_WorkOrderType] FOREIGN KEY([WorkOrderTypeID])
REFERENCES [dbo].[WorkOrderType] ([WorkOrderTypeID])
GO
ALTER TABLE [dbo].[WOInfras] CHECK CONSTRAINT [FK_WOInfras_WorkOrderType]
GO
ALTER TABLE [dbo].[WorkOrderCustFact]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderCustFact_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[WorkOrderCustFact] CHECK CONSTRAINT [FK_WorkOrderCustFact_Customer]
GO
ALTER TABLE [dbo].[WorkOrderCustFact]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderCustFact_WorkOrderType] FOREIGN KEY([WorkOrderTypeID])
REFERENCES [dbo].[WorkOrderType] ([WorkOrderTypeID])
GO
ALTER TABLE [dbo].[WorkOrderCustFact] CHECK CONSTRAINT [FK_WorkOrderCustFact_WorkOrderType]
GO
ALTER TABLE [dbo].[WorkOrderInfrasFact]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderInfrasFact_Inventory] FOREIGN KEY([InventoryID])
REFERENCES [dbo].[Inventory] ([InventoryID])
GO
ALTER TABLE [dbo].[WorkOrderInfrasFact] CHECK CONSTRAINT [FK_WorkOrderInfrasFact_Inventory]
GO
ALTER TABLE [dbo].[WorkOrderInfrasFact]  WITH CHECK ADD  CONSTRAINT [FK_WorkOrderInfrasFact_WorkOrderType] FOREIGN KEY([WorkOrderTypeID])
REFERENCES [dbo].[WorkOrderType] ([WorkOrderTypeID])
GO
ALTER TABLE [dbo].[WorkOrderInfrasFact] CHECK CONSTRAINT [FK_WorkOrderInfrasFact_WorkOrderType]
GO
USE [master]
GO
ALTER DATABASE [SparcElectricHybridDW] SET  READ_WRITE 
GO
/****** Add NONCLUSTERED INDEXes for Foreign Keys ******/
Use SparcElectricHybridDW;
GO
CREATE NONCLUSTERED INDEX IX_Customer_ConnectionTypeID on Customer (ConnectionTypeID ASC);
CREATE NONCLUSTERED INDEX IX_Customer_MeterModelID on Customer (MeterModelID ASC);
CREATE NONCLUSTERED INDEX IX_EmployeeSkill_EmployeeID on EmployeeSkill (EmployeeID ASC);
CREATE NONCLUSTERED INDEX IX_EmployeeSkill_WorkSkillsID on EmployeeSkill (WorkSkillsID ASC);
CREATE NONCLUSTERED INDEX IX_Inventory_InfrasTypeID on Inventory (InfrasTypeID ASC);
CREATE NONCLUSTERED INDEX IX_WOCustomer_CustomerID on WOCustomer (CustomerID ASC);
CREATE NONCLUSTERED INDEX IX_WOCustomer_EmployeeID on WOCustomer (EmployeeID ASC);
CREATE NONCLUSTERED INDEX IX_WOCustomer_MeterModelID on WOCustomer (MeterModelID ASC);
CREATE NONCLUSTERED INDEX IX_WOCustomer_WorkOrderTypeID on WOCustomer (WorkOrderTypeID ASC);
CREATE NONCLUSTERED INDEX IX_WOInfras_EmployeeID on WOInfras (EmployeeID ASC);
CREATE NONCLUSTERED INDEX IX_WOInfras_InventoryID on WOInfras (InventoryID ASC);
CREATE NONCLUSTERED INDEX IX_WOInfras_WorkOrderTypeID on WOInfras (WorkOrderTypeID ASC);
CREATE NONCLUSTERED INDEX IX_WorkOrderCustFact_CustomerID on WorkOrderCustFact (CustomerID ASC);
CREATE NONCLUSTERED INDEX IX_WorkOrderCustFact_WorkOrderTypeID on WorkOrderCustFact (WorkOrderTypeID ASC);
CREATE NONCLUSTERED INDEX IX_WorkOrderInfrasFact_InventoryID on WorkOrderInfrasFact (InventoryID ASC);
CREATE NONCLUSTERED INDEX IX_WorkOrderInfrasFact_WorkOrderTypeID on WorkOrderInfrasFact (WorkOrderTypeID ASC);
GO

