view: vw_portfolio_perf_metric {
  sql_table_name: `rbc_domain_views.VW_PORTFOLIO_PERF_METRIC` ;;

  dimension: port_id {
    type: string
    sql: ${TABLE}.PORT_ID ;;
  }
  dimension: ror_mw_1_m {
    type: number
    sql: ${TABLE}.ROR_MW_1M ;;
  }
  dimension: ror_mw_1_m_ann {
    type: number
    sql: ${TABLE}.ROR_MW_1M_ANN ;;
  }
  dimension: ror_mw_1_y {
    type: number
    sql: ${TABLE}.ROR_MW_1Y ;;
  }
  dimension: ror_mw_1_y_ann {
    type: number
    sql: ${TABLE}.ROR_MW_1Y_ANN ;;
  }
  dimension: ror_mw_3_m {
    type: number
    sql: ${TABLE}.ROR_MW_3M ;;
  }
  dimension: ror_mw_3_m_ann {
    type: number
    sql: ${TABLE}.ROR_MW_3M_ANN ;;
  }
  dimension: ror_mw_3_y {
    type: number
    sql: ${TABLE}.ROR_MW_3Y ;;
  }
  dimension: ror_mw_3_y_ann {
    type: number
    sql: ${TABLE}.ROR_MW_3Y_ANN ;;
  }
  dimension: ror_mw_5_y {
    type: number
    sql: ${TABLE}.ROR_MW_5Y ;;
  }
  dimension: ror_mw_5_y_ann {
    type: number
    sql: ${TABLE}.ROR_MW_5Y_ANN ;;
  }
  dimension: ror_mw_total {
    type: number
    sql: ${TABLE}.ROR_MW_TOTAL ;;
  }
  dimension: ror_mw_total_ann {
    type: number
    sql: ${TABLE}.ROR_MW_TOTAL_ANN ;;
  }
  dimension: ror_mw_ytd {
    type: number
    sql: ${TABLE}.ROR_MW_YTD ;;
  }
  dimension: ror_mw_ytd_ann {
    type: number
    sql: ${TABLE}.ROR_MW_YTD_ANN ;;
  }
  dimension: ror_tw_1_m {
    type: number
    sql: ${TABLE}.ROR_TW_1M ;;
  }
  dimension: ror_tw_1_m_ann {
    type: number
    sql: ${TABLE}.ROR_TW_1M_ANN ;;
  }
  dimension: ror_tw_1_y {
    type: number
    sql: ${TABLE}.ROR_TW_1Y ;;
  }
  dimension: ror_tw_1_y_ann {
    type: number
    sql: ${TABLE}.ROR_TW_1Y_ANN ;;
  }
  dimension: ror_tw_3_m {
    type: number
    sql: ${TABLE}.ROR_TW_3M ;;
  }
  dimension: ror_tw_3_m_ann {
    type: number
    sql: ${TABLE}.ROR_TW_3M_ANN ;;
  }
  dimension: ror_tw_3_y {
    type: number
    sql: ${TABLE}.ROR_TW_3Y ;;
  }
  dimension: ror_tw_3_y_ann {
    type: number
    sql: ${TABLE}.ROR_TW_3Y_ANN ;;
  }
  dimension: ror_tw_5_y {
    type: number
    sql: ${TABLE}.ROR_TW_5Y ;;
  }
  dimension: ror_tw_5_y_ann {
    type: number
    sql: ${TABLE}.ROR_TW_5Y_ANN ;;
  }
  dimension: ror_tw_total {
    type: number
    sql: ${TABLE}.ROR_TW_TOTAL ;;
  }
  dimension: ror_tw_total_ann {
    type: number
    sql: ${TABLE}.ROR_TW_TOTAL_ANN ;;
  }
  dimension: ror_tw_ytd {
    type: number
    sql: ${TABLE}.ROR_TW_YTD ;;
  }
  dimension: ror_tw_ytd_ann {
    type: number
    sql: ${TABLE}.ROR_TW_YTD_ANN ;;
  }
  measure: count {
    type: count
  }
}
