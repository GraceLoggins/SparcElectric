[Back to Main Page](index.md)

---  
## Latest Update
---  
UPDATES to SparcElectric (11202022)

### Documentation changes
Change: altered plans in technical section regarding future updates.

---
UPDATES to SparcElectric (09082022)  

### Documentation changes  
added comments on tables in format:
```
USE SparcElectricHybridDW;
GO
EXEC sp_addextendedproperty
@name = N'Comment',
@value = 'Per customer daily totals table',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table', @level1name = 'ElecDeliveryFact';
```
Change: Comment on table ElecDeliveryFact (per customer daily totals table)  
Change: Comment on WorkOrderCustFact (per full customer work order record)  
Change: Comment on WorkOrderInfrasFact (per full inventory/infrastructure work order record)  
Justification: Documentation.

Change: Add to documentation - things on Test-bed future directions list (on technical page):  
- Testing of different query execution plans and adjustment of indexes (and the columns participating in them) where necessary. (Taking the time to check indexing for queries, instead of our single columns FKs).  
- Before customer expansion and before the addition of meter reading, SparcElectric will need to consider how to handle partitioning (multiple filegroups).  
- In conjunction with partitioning, SparcElectric will need to weigh the benefits and any drawbacks of implementing columnstore indexes on the largest tables in its non-standard implementation.  
Justification: Documentation addition to clarify plans.

Change: Add to Documentation (In case it wasn't already clear) on index.md
"None of the code in the SparcElectric Mixed Database and Data Warehouse Test-bed is production ready and should not be run against a production instance. This is a sample test-bed for testing, entertainment, and simulation purposes." 
Justification: Warning.

### Key changes  
Change: The table ElecDelivery primary key changed to BIGINT  
Justification: Clearly, if the meter reading system - when implemented - is going to have 96 reads/day per every meter on the system -  every customer has at least one meter and some commercial customers more than one - and the customer count is going to be 2 magnitudes higher (growing from 300 customers to 30,000, which is a more realistic customer base for a small electric energy company) then the primary key needs to be BIGINT to keep the company from running out of key space within three to five years.

### Index changes  
Non-clustered indexes on foreign keys:  
It's time to put indexes on the foreign keys already in use, to provide better performance during joins. (Meter reading through ElecDelivery and storage through GridStore will be approached later.)

Added the following NONCLUSTERED indexes:

Customer  
- IX_Customer_ConnectionTypeID  
- IX_Customer_MeterModelID

EmployeeSkill  
- IX_EmployeeSkill_EmployeeID  
- IX_EmployeeSkill_WorkSkillsID

Inventory  
- IX_Inventory_InfrasTypeID

WOCustomer  
- IX_WOCustomer_CustomerID  
- IX_WOCustomer_EmployeeID  
- IX_WOCustomer_MeterModelID  
- IX_WOCustomer_WorkOrderTypeID

WOInfras  
- IX_WOInfras_EmployeeID  
- IX_WOInfras_InventoryID  
- IX_WOInfras_WorkOrderTypeID

WorkOrderCustomerFact  
- IX_WorkOrderCustFact_CustomerID  
- IX_WorkOrderCustFact_WorkOrderTypeID

WorkOrderInfrasFact  
- IX_WorkOrderInfrasFact_InventoryID  
- IX_WorkOrderInfrasFact_WorkOrderTypeID


Change: Add clustered primary key to DimDate  
Justification: Correct oversight. DimDate is not a heap table, and should have a primary key and clustered index. It was set up to be to have a primary key of DateKey from the natural number of the date in 'YYYYMMDD' format.

[Back to Main Page](index.md)   
