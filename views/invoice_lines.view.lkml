# The name of this view in Looker is "Invoice Lines"
view: invoice_lines {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."INVOICE_LINES"
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Charge Type" in Explore.

  dimension: charge_type {
    type: string
    sql: ${TABLE}."CHARGE_TYPE" ;;
  }

  dimension: general_ledger_code {
    type: string
    sql: ${TABLE}."GENERAL_LEDGER_CODE" ;;
  }

  dimension: invoice_line_revenue_in_euro {
    type: number
    sql: ${TABLE}."INVOICE_LINE_REVENUE_IN_EURO" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_invoice_line_revenue_in_euro {
    type: sum
    sql: ${invoice_line_revenue_in_euro} ;;
  }

  measure: average_invoice_line_revenue_in_euro {
    type: average
    sql: ${invoice_line_revenue_in_euro} ;;
  }

  dimension: invoice_number {
    type: number
    sql: ${TABLE}."INVOICE_NUMBER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
