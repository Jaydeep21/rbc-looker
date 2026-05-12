view: vw_account_identifiers {
  sql_table_name: `rbc_domain_views.VW_ACCOUNT_IDENTIFIERS` ;;

  dimension: acct_no_13_d {
    type: number
    sql: ${TABLE}.ACCT_NO_13D ;;
  }
  dimension: acct_no_8_d {
    type: number
    sql: ${TABLE}.ACCT_NO_8D ;;
  }
  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: source_system {
    type: string
    sql: ${TABLE}.SOURCE_SYSTEM ;;
  }
  measure: count {
    type: count
  }
}
