view: vw_client_planning_info {
  sql_table_name: `rbc_domain_views.VW_CLIENT_PLANNING_INFO` ;;

  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: planning_goal_amount {
    type: number
    sql: ${TABLE}.PLANNING_GOAL_AMOUNT ;;
  }
  dimension: planning_status {
    type: string
    sql: ${TABLE}.PLANNING_STATUS ;;
  }
  dimension: planning_type {
    type: string
    sql: ${TABLE}.PLANNING_TYPE ;;
  }
  measure: count {
    type: count
  }
}
