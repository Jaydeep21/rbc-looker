view: vw_account_performance {
  sql_table_name: `rbc_domain_views.VW_ACCOUNT_PERFORMANCE` ;;

  dimension: accrued_income_base_amt {
    type: number
    sql: ${TABLE}.ACCRUED_INCOME_BASE_AMT ;;
  }
  dimension: acct_no_13_d {
    type: number
    sql: ${TABLE}.ACCT_NO_13D ;;
  }
  dimension: alpha_measure {
    type: number
    sql: ${TABLE}.ALPHA_MEASURE ;;
  }
  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: beta_measure {
    type: number
    sql: ${TABLE}.BETA_MEASURE ;;
  }
  dimension: exp_return_pc {
    type: number
    sql: ${TABLE}.EXP_RETURN_PC ;;
  }
  dimension: exp_risk_pc {
    type: number
    sql: ${TABLE}.EXP_RISK_PC ;;
  }
  dimension_group: fiscal_year_beg_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FISCAL_YEAR_BEG_DT ;;
  }
  dimension_group: fiscal_year_end_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FISCAL_YEAR_END_DT ;;
  }
  dimension: py_tw_ror {
    type: number
    sql: ${TABLE}.PY_TW_ROR ;;
  }
  dimension: sd_bal_base_amt {
    type: number
    sql: ${TABLE}.SD_BAL_BASE_AMT ;;
  }
  dimension: sharpe_ratio {
    type: number
    sql: ${TABLE}.SHARPE_RATIO ;;
  }
  dimension: since_incept_an_mw_ror {
    type: number
    sql: ${TABLE}.SINCE_INCEPT_AN_MW_ROR ;;
  }
  dimension: since_incept_an_tw_ror {
    type: number
    sql: ${TABLE}.SINCE_INCEPT_AN_TW_ROR ;;
  }
  dimension: since_incept_nan_tw_ror {
    type: number
    sql: ${TABLE}.SINCE_INCEPT_NAN_TW_ROR ;;
  }
  dimension: standard_deviation {
    type: number
    sql: ${TABLE}.STANDARD_DEVIATION ;;
  }
  dimension: yield_to_maturity_pct {
    type: number
    sql: ${TABLE}.YIELD_TO_MATURITY_PCT ;;
  }
  dimension: ytd_long_realized_gain_amt {
    type: number
    sql: ${TABLE}.YTD_LONG_REALIZED_GAIN_AMT ;;
  }
  dimension: ytd_mw_ror {
    type: number
    sql: ${TABLE}.YTD_MW_ROR ;;
  }
  dimension: ytd_short_realized_gain_amt {
    type: number
    sql: ${TABLE}.YTD_SHORT_REALIZED_GAIN_AMT ;;
  }
  dimension: ytd_tw_ror {
    type: number
    sql: ${TABLE}.YTD_TW_ROR ;;
  }
  measure: count {
    type: count
  }
}
