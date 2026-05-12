view: vw_client_email_addresses {
  sql_table_name: `rbc_domain_views.VW_CLIENT_EMAIL_ADDRESSES` ;;

  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CREATED_DATE ;;
  }
  dimension: email_address {
    type: string
    sql: ${TABLE}.EMAIL_ADDRESS ;;
  }
  dimension_group: email_change {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EMAIL_CHANGE_DATE ;;
  }
  dimension: email_status {
    type: string
    sql: ${TABLE}.EMAIL_STATUS ;;
  }
  dimension: email_type {
    type: string
    sql: ${TABLE}.EMAIL_TYPE ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: is_primary {
    type: number
    sql: ${TABLE}.IS_PRIMARY ;;
  }
  dimension_group: last_modified {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LAST_MODIFIED_DATE ;;
  }
  dimension_group: opt_in {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OPT_IN_DATE ;;
  }
  dimension: opt_in_ind {
    type: number
    sql: ${TABLE}.OPT_IN_IND ;;
  }
  dimension: opt_out_date {
    type: string
    sql: ${TABLE}.OPT_OUT_DATE ;;
  }
  dimension: undeliverable_ind {
    type: number
    sql: ${TABLE}.UNDELIVERABLE_IND ;;
  }
  measure: count {
    type: count
  }
}
