# The name of this view in Looker is "Vehicle Category"
view: vehicle_category {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."VEHICLE_CATEGORY"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Vehicle Category Code" in Explore.

  dimension: vehicle_category_code {
    type: string
    sql: ${TABLE}."VEHICLE_CATEGORY_CODE" ;;
  }

  dimension: vehicle_category_description {
    type: string
    sql: ${TABLE}."VEHICLE_CATEGORY_DESCRIPTION" ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}."VEHICLE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
