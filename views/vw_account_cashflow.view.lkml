view: vw_account_cashflow {
  sql_table_name: `rbc_domain_views.VW_ACCOUNT_CASHFLOW` ;;

  dimension: acct_no_13_d {
    type: number
    sql: ${TABLE}.ACCT_NO_13D ;;
  }
  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: nine_mth_cashflow {
    type: number
    sql: ${TABLE}.NINE_MTH_CASHFLOW ;;
  }
  dimension: ninety_day_trades_count_no {
    type: number
    sql: ${TABLE}.NINETY_DAY_TRADES_COUNT_NO ;;
  }
  dimension: one_mth_cashflow {
    type: number
    sql: ${TABLE}.ONE_MTH_CASHFLOW ;;
  }
  dimension: one_year_cashflow {
    type: number
    sql: ${TABLE}.ONE_YEAR_CASHFLOW ;;
  }
  dimension: one_year_trades_count_no {
    type: number
    sql: ${TABLE}.ONE_YEAR_TRADES_COUNT_NO ;;
  }
  dimension: since_incep_cashflow {
    type: number
    sql: ${TABLE}.SINCE_INCEP_CASHFLOW ;;
  }
  dimension: six_mth_cashflow {
    type: number
    sql: ${TABLE}.SIX_MTH_CASHFLOW ;;
  }
  dimension: ten_year_cashflow {
    type: number
    sql: ${TABLE}.TEN_YEAR_CASHFLOW ;;
  }
  dimension: thirty_day_trades_count_no {
    type: number
    sql: ${TABLE}.THIRTY_DAY_TRADES_COUNT_NO ;;
  }
  dimension: three_mth_cashflow {
    type: number
    sql: ${TABLE}.THREE_MTH_CASHFLOW ;;
  }
  dimension: three_year_cashflow {
    type: number
    sql: ${TABLE}.THREE_YEAR_CASHFLOW ;;
  }
  measure: count {
    type: count
  }
}
