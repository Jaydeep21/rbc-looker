view: vw_portfolio_acc_grouping {
  sql_table_name: `rbc_domain_views.VW_PORTFOLIO_ACC_GROUPING` ;;

  dimension: acct_no_13_d {
    type: number
    sql: ${TABLE}.ACCT_NO_13D ;;
  }
  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: group_id {
    type: string
    sql: ${TABLE}.GROUP_ID ;;
  }
  dimension: group_type {
    type: string
    sql: ${TABLE}.GROUP_TYPE ;;
  }
  dimension: group_type_id {
    type: number
    sql: ${TABLE}.GROUP_TYPE_ID ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }
  measure: count {
    type: count
  }
}
