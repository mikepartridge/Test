- view: utilisation_targets
  sql_table_name: Utilisation_Targets
  fields:

  - dimension: actual_utilisation
    type: int
    sql: ${TABLE}.ActualUtilisation

  - dimension: cost_centre_code
    type: int
    sql: ${TABLE}.CostCentreCode

  - dimension: employee_id
    type: int
    sql: ${TABLE}.EmployeeID

  - dimension: first_name
    sql: ${TABLE}.FirstName

  - dimension: last_name
    sql: ${TABLE}.LastName

  - dimension: level
    sql: ${TABLE}.Level

  - dimension: utilisation_target
    type: int
    sql: ${TABLE}.UtilisationTarget

  - measure: count
    type: count
    drill_fields: [first_name, last_name]

