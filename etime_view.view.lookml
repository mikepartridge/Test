- view: etime_view
  sql_table_name: Etime_View
  fields:

  - dimension: client_code
    sql: ${TABLE}.ClientCode

  - dimension: client_name
    sql: ${TABLE}.ClientName

  - dimension: cost_centre_code
    sql: ${TABLE}.CostCentreCode

  - dimension: cost_centre_name
    sql: ${TABLE}.CostCentreName

  - dimension: employee_id
    type: int
    sql: ${TABLE}.EmployeeID

  - dimension: engagement_code
    sql: ${TABLE}.EngagementCode

  - dimension: engagement_name
    sql: ${TABLE}.EngagementName

  - dimension: engagement_type
    sql: ${TABLE}.EngagementType

  - dimension: first_name
    sql: ${TABLE}.FirstName

  - dimension: hours_charged
    sql: ${TABLE}.HoursCharged

  - dimension: last_name
    sql: ${TABLE}.LastName

  - dimension: level
    sql: ${TABLE}.Level

  - dimension: reports_to
    sql: ${TABLE}.ReportsTo

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.StartDate

  - dimension_group: time_sheet_approval_period
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TimeSheetApprovalPeriod

  - measure: count
    type: count
    drill_fields: [first_name, last_name, cost_centre_name, engagement_name, client_name]

