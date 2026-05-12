view: vw_account_sub_account_details {
  sql_table_name: `rbc_domain_views.VW_ACCOUNT_SUB_ACCOUNT_DETAILS` ;;

  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: sub_account_id {
    type: string
    sql: ${TABLE}.SUB_ACCOUNT_ID ;;
  }
  dimension: sub_account_status {
    type: string
    sql: ${TABLE}.SUB_ACCOUNT_STATUS ;;
  }
  dimension: sub_account_type {
    type: string
    sql: ${TABLE}.SUB_ACCOUNT_TYPE ;;
  }
  measure: count {
    type: count
  }
}
