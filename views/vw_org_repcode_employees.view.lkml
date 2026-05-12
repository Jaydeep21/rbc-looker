view: vw_org_repcode_employees {
  sql_table_name: `rbc_domain_views.VW_ORG_REPCODE_EMPLOYEES` ;;

  dimension: employee_id {
    type: string
    sql: ${TABLE}.EMPLOYEE_ID ;;
  }
  dimension: employee_name {
    type: string
    sql: ${TABLE}.EMPLOYEE_NAME ;;
  }
  dimension: employee_role {
    type: string
    sql: ${TABLE}.EMPLOYEE_ROLE ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: is_primary {
    type: number
    sql: ${TABLE}.IS_PRIMARY ;;
  }
  dimension: repcode {
    type: string
    sql: ${TABLE}.REPCODE ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.START_DATE ;;
  }
  measure: count {
    type: count
    drill_fields: [employee_name]
  }
}
