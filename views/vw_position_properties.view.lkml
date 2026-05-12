view: vw_position_properties {
  sql_table_name: `rbc_domain_views.VW_POSITION_PROPERTIES` ;;

  dimension: accrued_income {
    type: number
    sql: ${TABLE}.ACCRUED_INCOME ;;
  }
  dimension: accrued_income_cad {
    type: number
    sql: ${TABLE}.ACCRUED_INCOME_CAD ;;
  }
  dimension: acct_no_13_d {
    type: number
    sql: ${TABLE}.ACCT_NO_13D ;;
  }

  dimension: acct_no_13_d_join {
    type: number
    # sql: ${TABLE}.ACCT_NO_13D ;;
    sql: LEFT(CAST(${TABLE}.ACCT_NO_13D AS STRING) , 8) ;;
  }
  dimension: book_cost {
    type: number
    sql: ${TABLE}.BOOK_COST ;;
  }
  dimension: book_cost_cad {
    type: number
    sql: ${TABLE}.BOOK_COST_CAD ;;
  }
  dimension: cl_instrument_id {
    type: string
    sql: ${TABLE}.CL_INSTRUMENT_ID ;;
  }
  dimension: close_quantity {
    type: number
    sql: ${TABLE}.CLOSE_QUANTITY ;;
  }
  dimension: cost_base_settledate {
    type: number
    sql: ${TABLE}.COST_BASE_SETTLEDATE ;;
  }
  dimension: cost_base_tradedate {
    type: number
    sql: ${TABLE}.COST_BASE_TRADEDATE ;;
  }
  dimension: cost_trade_settledate {
    type: number
    sql: ${TABLE}.COST_TRADE_SETTLEDATE ;;
  }
  dimension: cost_trade_tradedate {
    type: number
    sql: ${TABLE}.COST_TRADE_TRADEDATE ;;
  }
  dimension_group: effective {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EFFECTIVE_DATE ;;
  }
  dimension: exchange_rate_cad {
    type: number
    sql: ${TABLE}.EXCHANGE_RATE_CAD ;;
  }
  dimension: exchange_rate_usd {
    type: number
    sql: ${TABLE}.EXCHANGE_RATE_USD ;;
  }
  dimension: instrument_id {
    type: string
    sql: ${TABLE}.INSTRUMENT_ID ;;
  }
  dimension_group: last_purchase {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LAST_PURCHASE_DATE ;;
  }
  dimension_group: last_trade {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LAST_TRADE_DATE ;;
  }
  dimension: market_value {
    type: number
    sql: ${TABLE}.MARKET_VALUE ;;
  }
  dimension: market_value_cad {
    type: number
    sql: ${TABLE}.MARKET_VALUE_CAD ;;
  }
  dimension: position_status {
    type: string
    sql: ${TABLE}.POSITION_STATUS ;;
  }
  dimension: quantity_settledate {
    type: number
    sql: ${TABLE}.QUANTITY_SETTLEDATE ;;
  }
  dimension: quantity_tradedate {
    type: number
    sql: ${TABLE}.QUANTITY_TRADEDATE ;;
  }
  measure: count {
    type: count
  }
}
