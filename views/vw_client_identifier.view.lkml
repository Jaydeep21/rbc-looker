view: vw_client_identifier {
  sql_table_name: `rbc_domain_views.VW_CLIENT_IDENTIFIER` ;;

  dimension_group: expiry {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EXPIRY_DATE ;;
  }
  dimension: identifier_type {
    type: string
    sql: ${TABLE}.IDENTIFIER_TYPE ;;
  }
  dimension: identifier_value {
    type: number
    sql: ${TABLE}.IDENTIFIER_VALUE ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension_group: issue {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ISSUE_DATE ;;
  }
  measure: count {
    type: count
  }
}
