## Additional Information
[Back to Main Page](index.md)

[How the SparcElectric Test-bed was Generated](steps_to_build.md)
### Overview:

This is a preliminary setup of data for a mixed workload data warehouse combining OLTP properties with data warehouse capabilities. 
The generated portions follow the fleet operations for the company, mainly work orders, on both customer accounts and the company’s electric infrastructure.
Additional pieces will be added in future, such as meters and grid storage, as well as adjustments to the balance of the fleet portions.

Customer and Inventory tables serve as base tables, and as dimension tables, along with some of their supporting tables. The tables WOCustomer and WOInfras are work order tables and are able to hold multiple transactions against a single Spark work order (SparcWONumber).

WorkOrderCustFact, WorkOrderInfrasFact, and DimDate are all data warehouse tables, and serve to aggregate information about customer work orders, infrastructure/inventory work orders, and DimDate holds multiple levels of date information for any analysis to slice against.

### Main Entities for the data mart focused on fleet operations:

Customer Entity and related tables, showing their relationships:

![Customer Entity](/entities_pix/CustomerEntity.png)

Customer's relationships with other base tables

![Customer Entity2](/entities_pix/CompleteCustomerTables.PNG)



Inventory Entity and related tables, showing their relationships:

![Inventory Entity](/entities_pix/InventoryEntity.png)

Inventory's relationships with the infrastructure base tables

![Inventory Entity2](/entities_pix/CompleteInfrastructureTables.PNG)



Employee Entity and related tables, showing their relationships:

![Employee Entity](/entities_pix/EmployeeEntity.png)



Work Order and related tables, showing their relationships: (a work order represents a service incident generated against either a customer account or an infrastructure / inventory element)

![Work Order Entities](/entities_pix/WorkOrderEntities.png)

Complete Work Order tables

![Work Order Tables](/entities_pix/CompleteWorkOrderTables.PNG)




### Test-bed Future Directions and Updates

- Implement the Electric Delivery (Metering) data simulation. Add simulated near real-time meter reads, as SparcElectric migrates from its existing analog and AMR meters to fully digital and near-real-time data collection.
- Implement the Grid Storage data simulation. Add the entities and simulation of grid storage, interaction with outside vendors, and grid loss to the test-bed.
- Alter the methods of randomizing the data, to bring it more in line with what a real power company would experience.
- Move part or all of the simulation onto the Azure Platform. Migrate some (hybrid data environment) or all (total re-platforming).
- “Lift and Shift” the SSIS packages that generate the simulated work orders onto Azure. (as an exercise to test the process.)


[Back to Main Page](index.md)

[How the SparcElectric Test-bed was Generated](steps_to_build.md)


