# The name of this view in Looker is "Transactions for Rfp"
view: transactions_for_rfp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."TRANSACTIONS_FOR_RFP"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: actual_checkout {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."ACTUAL_CHECKOUT_DATE" ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Charged Sipp Code" in Explore.

  dimension: charged_sipp_code {
    type: string
    sql: ${TABLE}."CHARGED_SIPP_CODE" ;;
  }

  dimension: checkin_station_code {
    type: string
    sql: ${TABLE}."CHECKIN_STATION_CODE" ;;
  }

  dimension: checkout_station_code {
    type: string
    sql: ${TABLE}."CHECKOUT_STATION_CODE" ;;
  }

  dimension: contract_id {
    type: number
    sql: ${TABLE}."CONTRACT_ID" ;;
  }

  dimension: distribution_channel_description {
    type: string
    sql: ${TABLE}."DISTRIBUTION_CHANNEL_DESCRIPTION" ;;
  }

  dimension: domestic_inbound {
    type: string
    sql: ${TABLE}."DOMESTIC_INBOUND" ;;
  }

  dimension: lead_time {
    type: number
    sql: ${TABLE}."LEAD_TIME" ;;
  }

  dimension: main_driver_id {
    type: number
    sql: ${TABLE}."MAIN_DRIVER_ID" ;;
  }

  dimension: net_revenue_in_euro {
    type: number
    sql: ${TABLE}."NET_REVENUE_IN_EURO" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_net_revenue_in_euro {
    type: sum
    sql: ${net_revenue_in_euro} ;;
  }

  measure: average_net_revenue_in_euro {
    type: average
    sql: ${net_revenue_in_euro} ;;
  }

  dimension: oneway_flag {
    type: string
    sql: ${TABLE}."ONEWAY_FLAG" ;;
  }

  dimension: privilege_program_flag {
    type: string
    sql: ${TABLE}."PRIVILEGE_PROGRAM_FLAG" ;;
  }

  dimension: rental_agreement_number {
    type: number
    sql: ${TABLE}."RENTAL_AGREEMENT_NUMBER" ;;
  }

  dimension: rental_agreement_segment_level_1 {
    type: string
    sql: ${TABLE}."RENTAL_AGREEMENT_SEGMENT_LEVEL_1" ;;
  }

  dimension: rental_agreement_segment_level_2 {
    type: string
    sql: ${TABLE}."RENTAL_AGREEMENT_SEGMENT_LEVEL_2" ;;
  }

  dimension: rental_days {
    type: number
    sql: ${TABLE}."RENTAL_DAYS" ;;
  }

  dimension: rental_mileage_in_km {
    type: number
    sql: ${TABLE}."RENTAL_MILEAGE_IN_KM" ;;
  }

  dimension: reservation_number {
    type: number
    sql: ${TABLE}."RESERVATION_NUMBER" ;;
  }

  dimension: reservation_preprintable_flag {
    type: string
    sql: ${TABLE}."RESERVATION_PREPRINTABLE_FLAG" ;;
  }

  dimension_group: reservation_purge {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."RESERVATION_PURGE_DATE" ;;
  }

  dimension: reservation_system_code {
    type: string
    sql: ${TABLE}."RESERVATION_SYSTEM_CODE" ;;
  }

  dimension: reservation_system_description {
    type: string
    sql: ${TABLE}."RESERVATION_SYSTEM_DESCRIPTION" ;;
  }

  dimension: tiers_level {
    type: string
    sql: ${TABLE}."TIERS_LEVEL" ;;
  }

  dimension: traveller_membership_program_code {
    type: string
    sql: ${TABLE}."TRAVELLER_MEMBERSHIP_PROGRAM_CODE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
