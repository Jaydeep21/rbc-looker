view: vw_transaction_properties {
  sql_table_name: `rbc_domain_views.VW_TRANSACTION_PROPERTIES` ;;

  dimension: acct_cashflow_sign {
    type: number
    sql: ${TABLE}.ACCT_CASHFLOW_SIGN ;;
  }
  dimension: acct_no_13_d {
    type: number
    sql: ${TABLE}.ACCT_NO_13D ;;
  }
  dimension: adj_curr_cd {
    type: string
    sql: ${TABLE}.ADJ_CURR_CD ;;
  }
  dimension: adp_no {
    type: number
    sql: ${TABLE}.ADP_NO ;;
  }
  dimension: avg_base_price {
    type: number
    sql: ${TABLE}.AVG_BASE_PRICE ;;
  }
  dimension: avg_trade_price {
    type: number
    sql: ${TABLE}.AVG_TRADE_PRICE ;;
  }
  dimension: base_curr_cd {
    type: string
    sql: ${TABLE}.BASE_CURR_CD ;;
  }
  dimension: base_txn_id {
    type: string
    sql: ${TABLE}.BASE_TXN_ID ;;
  }
  dimension: bkoff_entry_cd {
    type: string
    sql: ${TABLE}.BKOFF_ENTRY_CD ;;
  }
  dimension: cancel_prcss_dt {
    type: string
    sql: ${TABLE}.CANCEL_PRCSS_DT ;;
  }
  dimension: cashflow_amt_cd {
    type: string
    sql: ${TABLE}.CASHFLOW_AMT_CD ;;
  }
  dimension: cashflow_base_amt {
    type: number
    sql: ${TABLE}.CASHFLOW_BASE_AMT ;;
  }
  dimension: comm_base_amt {
    type: number
    sql: ${TABLE}.COMM_BASE_AMT ;;
  }
  dimension: comm_trade_amt {
    type: number
    sql: ${TABLE}.COMM_TRADE_AMT ;;
  }
  dimension: cost_base_amt {
    type: number
    sql: ${TABLE}.COST_BASE_AMT ;;
  }
  dimension: cost_trade_amt {
    type: number
    sql: ${TABLE}.COST_TRADE_AMT ;;
  }
  dimension_group: entry_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ENTRY_DT ;;
  }
  dimension_group: expect_setl_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EXPECT_SETL_DT ;;
  }
  dimension: gross_base_amt {
    type: number
    sql: ${TABLE}.GROSS_BASE_AMT ;;
  }
  dimension: gross_trade_amt {
    type: number
    sql: ${TABLE}.GROSS_TRADE_AMT ;;
  }
  dimension: ia_code {
    type: string
    sql: ${TABLE}.IA_CODE ;;
  }
  dimension: instr_cashflow_sign {
    type: number
    sql: ${TABLE}.INSTR_CASHFLOW_SIGN ;;
  }
  dimension: instrument_id {
    type: string
    sql: ${TABLE}.INSTRUMENT_ID ;;
  }
  dimension: movement_qty {
    type: number
    sql: ${TABLE}.MOVEMENT_QTY ;;
  }
  dimension: net_base_amt {
    type: number
    sql: ${TABLE}.NET_BASE_AMT ;;
  }
  dimension: net_setl_amt {
    type: number
    sql: ${TABLE}.NET_SETL_AMT ;;
  }
  dimension: net_trade_amt {
    type: number
    sql: ${TABLE}.NET_TRADE_AMT ;;
  }
  dimension: setl_curr_cd {
    type: string
    sql: ${TABLE}.SETL_CURR_CD ;;
  }
  dimension: trade_curr_cd {
    type: string
    sql: ${TABLE}.TRADE_CURR_CD ;;
  }
  dimension_group: trade_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TRADE_DT ;;
  }
  dimension_group: trade_prcss_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TRADE_PRCSS_DT ;;
  }
  dimension: txn_cancel_ind {
    type: number
    sql: ${TABLE}.TXN_CANCEL_IND ;;
  }
  dimension: txn_desc {
    type: string
    sql: ${TABLE}.TXN_DESC ;;
  }
  dimension: txn_type {
    type: string
    sql: ${TABLE}.TXN_TYPE ;;
  }
  dimension: txn_type_cd {
    type: string
    sql: ${TABLE}.TXN_TYPE_CD ;;
  }
  measure: count {
    type: count
  }
}
