layout: page
title: "Technical Info"
permalink: https://GraceLoggins/SparcElectric/docs/technical.md

## Additional Information for SparcElectric Mixed Workload Database / DW

### Main Entities for the data mart focused on fleet operations:

1. Customer: (a simulated customer service account a work order is created against)
2. Inventory: (a simulated inventory element belonging to SparcElectric requiring service a work order is created against)
3. Employee: (the simulated SparcElectric fleet employee servicing either customer service account or inventory)
4. Work Order: (a service incident generated against either a customer account or an inventory element)

### Future Directions for the Test-bed (in no particular order)

1. Move part or all of the simulation onto the Azure Platform. Migrate some (hybrid data environment) or all (total re-platforming).
2. “Lift and Shift” the SSIS packages that generate the simulated work orders onto Azure. (as an exercise to test the process.)
3. Implement the Electric Delivery (Metering) data simulation. Add simulated near real-time meter reads, as SparcElectric migrates from its existing analog and AMR meters to fully digital and near-real-time data collection.
4. Implement the Grid Storage data simulation. Add the entities and simulation of grid storage, interaction with outside vendors, and grid loss to the test-bed.
5. Alter the methods of randomizing the data, to bring it more in line with what a real power company would experience.

[THENAMEOFLINK](index.md)

![Test Pic2](/entities_pix/InventoryEntity.png)

