view: vw_transaction_sched_trans {
  sql_table_name: `rbc_domain_views.VW_TRANSACTION_SCHED_TRANS` ;;

  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  measure: count {
    type: count
  }
}
