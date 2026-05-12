view: vw_account_address {
  sql_table_name: `rbc_domain_views.VW_ACCOUNT_ADDRESS` ;;

  dimension: acct_addr_type {
    type: string
    sql: ${TABLE}.ACCT_ADDR_TYPE ;;
  }
  dimension: acct_same_as_mail_ind {
    type: number
    sql: ${TABLE}.ACCT_SAME_AS_MAIL_IND ;;
  }
  dimension: acct_short_name {
    type: string
    sql: ${TABLE}.ACCT_SHORT_NAME ;;
  }
  dimension_group: addr_change {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ADDR_CHANGE_DATE ;;
  }
  dimension: addr_line_1 {
    type: string
    sql: ${TABLE}.ADDR_LINE_1 ;;
  }
  dimension: addr_line_2 {
    type: string
    sql: ${TABLE}.ADDR_LINE_2 ;;
  }
  dimension: addr_type_desc {
    type: string
    sql: ${TABLE}.ADDR_TYPE_DESC ;;
  }
  dimension: addr_upd_user_id {
    type: string
    sql: ${TABLE}.ADDR_UPD_USER_ID ;;
  }
  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: city_town {
    type: string
    sql: ${TABLE}.CITY_TOWN ;;
  }
  dimension: co_attn_line {
    type: string
    sql: ${TABLE}.CO_ATTN_LINE ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }
  dimension: geo_code {
    type: number
    sql: ${TABLE}.GEO_CODE ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IS_DELETED ;;
  }
  dimension: postal_code {
    type: string
    sql: ${TABLE}.POSTAL_CODE ;;
  }
  dimension: prov_state {
    type: string
    sql: ${TABLE}.PROV_STATE ;;
  }
  dimension: routing_branch {
    type: number
    sql: ${TABLE}.ROUTING_BRANCH ;;
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
  dimension: unit_apt_suite_flag {
    type: number
    sql: ${TABLE}.UNIT_APT_SUITE_FLAG ;;
  }
  dimension: unit_no {
    type: string
    sql: ${TABLE}.UNIT_NO ;;
  }
  dimension: unit_type {
    type: string
    sql: ${TABLE}.UNIT_TYPE ;;
  }
  measure: count {
    type: count
    drill_fields: [acct_short_name, street_name]
  }
}
