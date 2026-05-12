view: vw_client_phone_numbers {
  sql_table_name: `rbc_domain_views.VW_CLIENT_PHONE_NUMBERS` ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }
  dimension: country_iso {
    type: string
    sql: ${TABLE}.COUNTRY_ISO ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CREATED_DATE ;;
  }
  dimension_group: do_not_call {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DO_NOT_CALL_DATE ;;
  }
  dimension: do_not_call_ind {
    type: number
    sql: ${TABLE}.DO_NOT_CALL_IND ;;
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
  dimension_group: phone_change {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PHONE_CHANGE_DATE ;;
  }
  dimension: phone_country_code {
    type: number
    sql: ${TABLE}.PHONE_COUNTRY_CODE ;;
  }
  dimension: phone_ext {
    type: number
    sql: ${TABLE}.PHONE_EXT ;;
  }
  dimension: phone_no {
    type: string
    sql: ${TABLE}.PHONE_NO ;;
  }
  dimension: phone_status {
    type: string
    sql: ${TABLE}.PHONE_STATUS ;;
  }
  dimension: phone_type {
    type: string
    sql: ${TABLE}.PHONE_TYPE ;;
  }
  measure: count {
    type: count
  }
}
