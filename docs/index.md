## SparcElectric Mixed-Use Data Warehouse test-bed

Site is currently in process of upload, editing, and pages creation.
            Please be patient. Changes are incomplete.
            
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
             
             
             
