view: vw_account_cli2_acc_rel {
  sql_table_name: `rbc_domain_views.VW_ACCOUNT_CLI2ACC_REL` ;;

  dimension: allocation_percent {
    type: number
    sql: ${TABLE}.ALLOCATION_PERCENT ;;
  }
  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: bene_type {
    type: string
    sql: ${TABLE}.BENE_TYPE ;;
  }
  dimension: bene_type_id {
    type: string
    sql: ${TABLE}.BENE_TYPE_ID ;;
  }
  dimension: cli_acc_rel_active_ind {
    type: number
    sql: ${TABLE}.CLI_ACC_REL_ACTIVE_IND ;;
  }
  dimension: close_date {
    type: string
    sql: ${TABLE}.CLOSE_DATE ;;
  }
  dimension: custodial_parent {
    type: string
    sql: ${TABLE}.CUSTODIAL_PARENT ;;
  }
  dimension_group: effective {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EFFECTIVE_DATE ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.IS_DELETED ;;
  }
  dimension: rel_status {
    type: string
    sql: ${TABLE}.REL_STATUS ;;
  }
  dimension: rel_type {
    type: string
    sql: ${TABLE}.REL_TYPE ;;
  }
  dimension: rel_type_id {
    type: string
    sql: ${TABLE}.REL_TYPE_ID ;;
  }
  dimension: tax_pkg_ind {
    type: number
    sql: ${TABLE}.TAX_PKG_IND ;;
  }
  measure: count {
    type: count
  }
}
