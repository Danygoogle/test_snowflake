# Define the database connection to be used for this model.
connection: "snowflaketestttt"
include: "*.lkml"
include: "/views/invoice_lines.view.lkml"
# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

#datagroup: dany_snowflake_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
 #$ max_cache_age: "1 hour"
#}

#persist_with: dany_snowflake_default_datagroup
week_start_day: sunday
explore: invoice_lines{}
