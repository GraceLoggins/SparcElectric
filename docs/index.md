layout: page
permalink: https://GraceLoggins/SparcElectric/docs/index.md

## SparcElectric Mixed Workload Database / Data Warehouse Test-bed

Site is currently in process of upload, editing, and pages creation.
            Please be patient. Changes are incomplete.
	    
### The Scenario
SparcElectric, a fictitious small electric power supplier, serves seven locations (six in Virginia and one in Maryland).  Their customer types primarily consist of residential and commercial clients – as well as several industrial, city, and county government entities.

To serve their customers and track the operations of their business, SparcElectric employs a mixed workload database – also referred to as a hybrid data warehouse model – which allows them to run OLTP and OLAP workload processing side-by-side. This combined database/data warehouse provides the ability to record data inserts and updates through transactions, and also perform analytics.

Anticipating an increase in workload due to various acquisitions, SparcElectric is moving a portion of their operations to the cloud. They expect a large increase to their current customer base and anticipate re-platforming or hybridizing (to the cloud) their data environment during their modernization efforts.

### First Objectives:
1. Simulate a small on-premise mixed workload (OLTP + OLAP) database/data warehouse environment.
2. Demonstrate the necessary changes as SparcElectric transitions some or all of its processing to the cloud.
3. Simulate SparcElectric's mixed workload on-premise data warehouse – the data mart for the operations side of their enterprise responsible for the SparcElectric fleet and the power distributions to its customers.
4. Transition one or more segments to the cloud (as a hybrid, augmented, or distributed data architecture) as an exercise in re-platforming and modernizing a data environment.
5. Retain all version of the necessary code and insights as a resource.

### Power BI Insights for SparcElectric
Leadership at the fictional power company SparcElectric requires on-demand data visualizations which address the following requirements:

1. What is the balance between SparcElectric's different customer segments in the customer work orders? (residential, commercial, and government accounts)
2. What is the cost of each of those different segments in labor and equipment?
3. How much time is being spent on-site for each customer segment?
4. How much time is being spent on-site for SparcElectric's infrastructure tickets?
5. What inventory segment (street lights, transformers, power lines, etc.) is SparcElectric spending the most on for internal maintenance and repairs?
6. What is the breakdown between equipment and labor costs on internal inventory?

### Technical Choices (Overview)
Platform - Microsoft SQL Server on-prem database, SSMS, SSIS, and Power BI, ultimately incorporating a portion into Azure. 
Data - Work order data is randomized between two limits; a min and max for customer accounts labor and equipment costs that varies over time, and a min and max for infrastructure labor and equipment costs that varies over the same time period.

![Test Pic](https://raw.githubusercontent.com/GraceLoggins/SparcElectric/main/docs/powerbi_pix/01InfrastructureSummary.PNG){:class="img-responsive"}

[test link]({% link technical.md %})

This is a preliminary setup of data for a mixed-use data warehouse combining
            OLTP properties with data warehouse capabilities.
            The generated portions follow the fleet operations for the company, mainly
            work orders, on both customer accounts and the company's electric infrastructure.

Additional pieces will be added in future, such as meters and grid storage,
             as well as adjustments to the balance of the fleet portions.
             
             
             
