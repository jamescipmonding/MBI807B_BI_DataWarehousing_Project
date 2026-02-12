# DAX Measures

Below are the key measures used in the Power BI model.

---

## Core Measures

### Total Sales

    Total Sales = SUM ( fact_property_sales[price] )

### Sales Count

    Sales Count = COUNT ( fact_property_sales[sale_id] )

### Average Price

    Average Price = AVERAGE ( fact_property_sales[price] )

---

## Time Intelligence Measures

### Sales YoY Change

    Sales YoY Change =
    VAR CurrentYear = [Total Sales]
    VAR PrevYear =
        CALCULATE (
            [Total Sales],
            DATEADD ( dim_date[full_date], -1, YEAR )
        )
    RETURN
        CurrentYear - PrevYear

### Sales YoY %

    Sales YoY % =
    DIVIDE (
        [Sales YoY Change],
        CALCULATE (
            [Total Sales],
            DATEADD ( dim_date[full_date], -1, YEAR )
        )
    )

---

## Model Notes

- Measures are built on top of the warehouse fact table.
- Time intelligence functions rely on a properly configured date dimension.
- All KPIs aggregate correctly due to the star schema structure.
