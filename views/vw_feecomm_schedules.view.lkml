view: vw_feecomm_schedules {
  sql_table_name: `rbc_domain_views.VW_FEECOMM_SCHEDULES` ;;

  dimension_group: effective {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EFFECTIVE_DATE ;;
  }
  dimension_group: expiry {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EXPIRY_DATE ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: schedule_id {
    type: string
    sql: ${TABLE}.SCHEDULE_ID ;;
  }
  dimension: schedule_name {
    type: string
    sql: ${TABLE}.SCHEDULE_NAME ;;
  }
  dimension: schedule_type {
    type: string
    sql: ${TABLE}.SCHEDULE_TYPE ;;
  }
  measure: count {
    type: count
    drill_fields: [schedule_name]
  }
}
