view: vw_client_address {
  sql_table_name: `rbc_domain_views.VW_CLIENT_ADDRESS` ;;

  dimension_group: addrchange {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ADDRCHANGE_DATE ;;
  }
  dimension: address_status {
    type: string
    sql: ${TABLE}.ADDRESS_STATUS ;;
  }
  dimension: address_type {
    type: string
    sql: ${TABLE}.ADDRESS_TYPE ;;
  }
  dimension: addrline1 {
    type: string
    sql: ${TABLE}.ADDRLINE1 ;;
  }
  dimension: addrline2 {
    type: string
    sql: ${TABLE}.ADDRLINE2 ;;
  }
  dimension: citytown {
    type: string
    sql: ${TABLE}.CITYTOWN ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }
  dimension: country_iso {
    type: string
    sql: ${TABLE}.COUNTRY_ISO ;;
  }
  dimension: disabled_date {
    type: string
    sql: ${TABLE}.DISABLED_DATE ;;
  }
  dimension_group: enabled {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ENABLED_DATE ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: last_update_id {
    type: string
    sql: ${TABLE}.LAST_UPDATE_ID ;;
  }
  dimension: postal_code {
    type: string
    sql: ${TABLE}.POSTAL_CODE ;;
  }
  dimension: provstate {
    type: string
    sql: ${TABLE}.PROVSTATE ;;
  }
  dimension: reason {
    type: string
    sql: ${TABLE}.REASON ;;
  }
  dimension: sameashome_ind {
    type: number
    sql: ${TABLE}.SAMEASHOME_IND ;;
  }
  dimension: street_name {
    type: string
    sql: ${TABLE}.STREET_NAME ;;
  }
  dimension: street_no {
    type: number
    sql: ${TABLE}.STREET_NO ;;
  }
  dimension: undeliverable_ind {
    type: number
    sql: ${TABLE}.UNDELIVERABLE_IND ;;
  }
  dimension: unit_no {
    type: number
    sql: ${TABLE}.UNIT_NO ;;
  }
  dimension: unit_type {
    type: string
    sql: ${TABLE}.UNIT_TYPE ;;
  }
  dimension: us_mail_exp_dt {
    type: string
    sql: ${TABLE}.US_MAIL_EXP_DT ;;
  }
  measure: count {
    type: count
    drill_fields: [street_name]
  }
}
