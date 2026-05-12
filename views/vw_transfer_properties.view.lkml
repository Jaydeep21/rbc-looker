view: vw_transfer_properties {
  sql_table_name: `rbc_domain_views.VW_TRANSFER_PROPERTIES` ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }
  dimension: dest_arngid {
    type: string
    sql: ${TABLE}.DEST_ARNGID ;;
  }
  dimension: ia_code {
    type: string
    sql: ${TABLE}.IA_CODE ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension_group: last_modified {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LAST_MODIFIED_DATE ;;
  }
  dimension_group: settle {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SETTLE_DATE ;;
  }
  dimension: source_arngid {
    type: string
    sql: ${TABLE}.SOURCE_ARNGID ;;
  }
  dimension: transfer_amount {
    type: number
    sql: ${TABLE}.TRANSFER_AMOUNT ;;
  }
  dimension: transfer_amount_cad {
    type: number
    sql: ${TABLE}.TRANSFER_AMOUNT_CAD ;;
  }
  dimension_group: transfer {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TRANSFER_DATE ;;
  }
  dimension: transfer_id {
    type: string
    sql: ${TABLE}.TRANSFER_ID ;;
  }
  dimension: transfer_status {
    type: string
    sql: ${TABLE}.TRANSFER_STATUS ;;
  }
  dimension: transfer_type {
    type: string
    sql: ${TABLE}.TRANSFER_TYPE ;;
  }
  measure: count {
    type: count
  }
}
