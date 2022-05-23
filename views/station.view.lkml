# The name of this view in Looker is "Station"
view: station {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."STATION"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Airport Flag" in Explore.

  dimension: airport_flag {
    type: string
    sql: ${TABLE}."AIRPORT_FLAG" ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: closing {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CLOSING_DATE" ;;
  }

  dimension_group: opening {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."OPENING_DATE" ;;
  }

  dimension: station_area_code {
    type: string
    sql: ${TABLE}."STATION_AREA_CODE" ;;
  }

  dimension: station_area_description {
    type: string
    sql: ${TABLE}."STATION_AREA_DESCRIPTION" ;;
  }

  dimension: station_category_code {
    type: string
    sql: ${TABLE}."STATION_CATEGORY_CODE" ;;
  }

  dimension: station_category_description {
    type: string
    sql: ${TABLE}."STATION_CATEGORY_DESCRIPTION" ;;
  }

  dimension: station_code {
    type: string
    sql: ${TABLE}."STATION_CODE" ;;
  }

  dimension: station_country_code {
    type: string
    sql: ${TABLE}."STATION_COUNTRY_CODE" ;;
  }

  dimension: station_country_description {
    type: string
    sql: ${TABLE}."STATION_COUNTRY_DESCRIPTION" ;;
  }

  dimension: station_location_type {
    type: string
    sql: ${TABLE}."STATION_LOCATION_TYPE" ;;
  }

  dimension: station_location_type_description {
    type: string
    sql: ${TABLE}."STATION_LOCATION_TYPE_DESCRIPTION" ;;
  }

  dimension: station_name {
    type: string
    sql: ${TABLE}."STATION_NAME" ;;
  }

  dimension: station_region_code {
    type: string
    sql: ${TABLE}."STATION_REGION_CODE" ;;
  }

  dimension: station_region_description {
    type: string
    sql: ${TABLE}."STATION_REGION_DESCRIPTION" ;;
  }

  measure: count {
    type: count
    drill_fields: [station_name]
  }
}
