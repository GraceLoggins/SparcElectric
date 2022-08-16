## SparcElectric Mixed Workload Database / Data Warehouse Test-bed

Site is currently in process of upload, editing, and pages creation.
            Please be patient. Changes are incomplete.
	    
# The Scenario
SparcElectric, a fictitious small electric power supplier, serves seven locations (six in Virginia and one in Maryland).  Their customer types primarily consist of residential and commercial clients – as well as several industrial, city, and county government entities.

To serve their customers and track the operations of their business, SparcElectric employs a mixed workload database – also referred to as a hybrid data warehouse model – which allows them to run OLTP and OLAP workload processing side-by-side. This combined database/data warehouse provides the ability to record data inserts and updates through transactions, and also perform analytics.

Anticipating an increase in workload due to various acquisitions, SparcElectric is moving a portion of their operations to the cloud. They expect a large increase to their current customer base and anticipate re-platforming or hybridizing (to the cloud) their data environment during their modernization efforts.	    
            
### DAX code test
```markdown
small piece of DAX code

# Here
CompDate = CONCATENATE ( 
	CONCATENATE ( YEAR(WorkOrderInfrasFact[LastEndDate]),
        CONCATENATE ( "-", MONTH(WorkOrderInfrasFact[LastEndDate]) ) ),
    	CONCATENATE ( "-", DAY(WorkOrderInfrasFact[LastEndDate]) ) 
) 

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

### SQL
```markdown
# Calendar dates are created here as raw number
CalendarBase as (
    SELECT DateKey = n,
    CalendarDate = DATEADD(day, n - 1, @StartDate )
    FROM cteTally
    WHERE N <= DATEDIFF(day, @StartDate , @EndDate +1)
)
```
This is a preliminary setup of data for a mixed-use data warehouse combining
            OLTP properties with data warehouse capabilities.
            The generated portions follow the fleet operations for the company, mainly
            work orders, on both customer accounts and the company's electric infrastructure.

Additional pieces will be added in future, such as meters and grid storage,
             as well as adjustments to the balance of the fleet portions.
             
             
             
