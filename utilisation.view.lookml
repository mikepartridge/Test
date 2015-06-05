- view: utilisation
  sql_table_name: Utilisation
  fields:

  - measure: actual_utilisation
    type: sum
    sql: ${TABLE}.ActualUtilisation

  - dimension: cost_centre_code
    sql: ${TABLE}.CostCentreCode

  - dimension: cost_centre_name
    sql: ${TABLE}.CostCentreName

  - dimension: employee_id
    type: int
    sql: ${TABLE}.EmployeeID

  - dimension: full_name
    sql: ${TABLE}.FullName
    html: |
          {{ linked_value }}
          <a href="dashboards/1?FullName={{ value | encode_uri }}" target="_new">
          <img src="/images/qr-graph-line@2x.png" height=20 width=20></a>

  - dimension: level
    sql: ${TABLE}.Level

  - measure: planned_utilisation
    type: sum
    sql: ${TABLE}.PlannedUtilisation
    drill_fields: [full_name, planned_utilisation, actual_utilisation]

  - dimension_group: time_sheet_approval_period
    type: time
    timeframes: [time, date, week, month, day_of_week]
    sql: ${TABLE}.TimeSheetApprovalPeriod
  
  - dimension: approval_date
    sql: CONVERT(VARCHAR(10),utilisation.TimeSheetApprovalPeriod,120)
    
  - dimension: total_hours
    sql: ${TABLE}.TotalHours

  - dimension: total_non_chargeable
    sql: ${TABLE}.TotalNonChargeable

  - measure: count
    type: count
    drill_fields: [full_name, cost_centre_name]

