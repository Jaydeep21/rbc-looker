view: vw_account_properties {
  sql_table_name: `rbc_domain_views.VW_ACCOUNT_PROPERTIES` ;;

  dimension: acct_class {
    type: string
    sql: ${TABLE}.ACCT_CLASS ;;
  }
  dimension: acct_name {
    type: string
    sql: ${TABLE}.ACCT_NAME ;;
  }
  dimension: acct_no_8_d {
    type: number
    sql: ${TABLE}.ACCT_NO_8D ;;
  }
  dimension: acct_type {
    type: string
    sql: ${TABLE}.ACCT_TYPE ;;
  }
  dimension: acct_view_consent {
    type: yesno
    sql: ${TABLE}.ACCT_VIEW_CONSENT ;;
  }
  dimension: acct_view_name {
    type: string
    sql: ${TABLE}.ACCT_VIEW_NAME ;;
  }
  dimension: acctstatusdesc {
    type: string
    sql: ${TABLE}.ACCTSTATUSDESC ;;
  }
  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: authorities_ind {
    type: number
    sql: ${TABLE}.AUTHORITIES_IND ;;
  }
  dimension: bus_acct_type {
    type: string
    sql: ${TABLE}.BUS_ACCT_TYPE ;;
  }
  dimension: bus_product_type {
    type: string
    sql: ${TABLE}.BUS_PRODUCT_TYPE ;;
  }
  dimension: close_date {
    type: string
    sql: ${TABLE}.CLOSE_DATE ;;
  }
  dimension: closed_reason {
    type: string
    sql: ${TABLE}.CLOSED_REASON ;;
  }
  dimension: comm_discount_override {
    type: number
    sql: ${TABLE}.COMM_DISCOUNT_OVERRIDE ;;
  }
  dimension: custodian_ind {
    type: number
    sql: ${TABLE}.CUSTODIAN_IND ;;
  }
  dimension: custodian_type {
    type: string
    sql: ${TABLE}.CUSTODIAN_TYPE ;;
  }
  dimension: disclosure {
    type: string
    sql: ${TABLE}.DISCLOSURE ;;
  }
  dimension: discretionary_ind {
    type: yesno
    sql: ${TABLE}.DISCRETIONARY_IND ;;
  }
  dimension: dividend_reinv_ind {
    type: number
    sql: ${TABLE}.DIVIDEND_REINV_IND ;;
  }
  dimension_group: effective {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EFFECTIVE_DATE ;;
  }
  dimension: fee_based_ind {
    type: number
    sql: ${TABLE}.FEE_BASED_IND ;;
  }
  dimension: ia_code {
    type: string
    sql: ${TABLE}.IA_CODE ;;
  }
  dimension: ia_name {
    type: string
    sql: ${TABLE}.IA_NAME ;;
  }
  dimension: inv_policy_ind {
    type: number
    sql: ${TABLE}.INV_POLICY_IND ;;
  }
  dimension_group: inv_policy_signed {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.INV_POLICY_SIGNED_DATE ;;
  }
  dimension: joint_ind {
    type: yesno
    sql: ${TABLE}.JOINT_IND ;;
  }
  dimension: joint_type {
    type: string
    sql: ${TABLE}.JOINT_TYPE ;;
  }
  dimension: language {
    type: string
    sql: ${TABLE}.LANGUAGE ;;
  }
  dimension_group: last_modified {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LAST_MODIFIED_DATE ;;
  }
  dimension: lob {
    type: string
    sql: ${TABLE}.LOB ;;
  }
  dimension: lockedin_date {
    type: string
    sql: ${TABLE}.LOCKEDIN_DATE ;;
  }
  dimension: lockedin_ind {
    type: number
    sql: ${TABLE}.LOCKEDIN_IND ;;
  }
  dimension: mail_cost_consent {
    type: yesno
    sql: ${TABLE}.MAIL_COST_CONSENT ;;
  }
  dimension: obj_proxy {
    type: string
    sql: ${TABLE}.OBJ_PROXY ;;
  }
  dimension_group: open_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OPEN_DATE ;;
  }
  dimension: option_buy_status {
    type: string
    sql: ${TABLE}.OPTION_BUY_STATUS ;;
  }
  dimension: option_coveredwriting_status {
    type: string
    sql: ${TABLE}.OPTION_COVEREDWRITING_STATUS ;;
  }
  dimension: option_nakedcalls_status {
    type: string
    sql: ${TABLE}.OPTION_NAKEDCALLS_STATUS ;;
  }
  dimension: option_nakedputs_status {
    type: string
    sql: ${TABLE}.OPTION_NAKEDPUTS_STATUS ;;
  }
  dimension: option_spreading_status {
    type: string
    sql: ${TABLE}.OPTION_SPREADING_STATUS ;;
  }
  dimension_group: options_change {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OPTIONS_CHANGE_DATE ;;
  }
  dimension: options_ind {
    type: number
    sql: ${TABLE}.OPTIONS_IND ;;
  }
  dimension: origination_channel {
    type: string
    sql: ${TABLE}.ORIGINATION_CHANNEL ;;
  }
  dimension: pc_usa_acct_ind {
    type: number
    sql: ${TABLE}.PC_USA_ACCT_IND ;;
  }
  dimension: pro_ind {
    type: yesno
    sql: ${TABLE}.PRO_IND ;;
  }
  dimension: product_type {
    type: string
    sql: ${TABLE}.PRODUCT_TYPE ;;
  }
  dimension: registered_ind {
    type: number
    sql: ${TABLE}.REGISTERED_IND ;;
  }
  dimension: relshipinfostatus {
    type: string
    sql: ${TABLE}.RELSHIPINFOSTATUS ;;
  }
  dimension: reopen_date {
    type: string
    sql: ${TABLE}.REOPEN_DATE ;;
  }
  dimension: rsp_fee_paid_id {
    type: string
    sql: ${TABLE}.RSP_FEE_PAID_ID ;;
  }
  dimension: rsp_fee_type_id {
    type: string
    sql: ${TABLE}.RSP_FEE_TYPE_ID ;;
  }
  dimension: source_id {
    type: string
    sql: ${TABLE}.SOURCE_ID ;;
  }
  dimension: speculation {
    type: string
    sql: ${TABLE}.SPECULATION ;;
  }
  dimension: spousal_ind {
    type: number
    sql: ${TABLE}.SPOUSAL_IND ;;
  }
  dimension: statement_freq {
    type: string
    sql: ${TABLE}.STATEMENT_FREQ ;;
  }
  dimension: statements_no {
    type: number
    sql: ${TABLE}.STATEMENTS_NO ;;
  }
  dimension: tax_code {
    type: string
    sql: ${TABLE}.TAX_CODE ;;
  }
  dimension: trade_confirms_no {
    type: number
    sql: ${TABLE}.TRADE_CONFIRMS_NO ;;
  }
  dimension: trade_consolidation_ind {
    type: number
    sql: ${TABLE}.TRADE_CONSOLIDATION_IND ;;
  }
  dimension: us_residence_ind {
    type: number
    sql: ${TABLE}.US_RESIDENCE_IND ;;
  }
  dimension: wrap_code {
    type: string
    sql: ${TABLE}.WRAP_CODE ;;
  }
  measure: count {
    type: count
    drill_fields: [ia_name, acct_view_name, acct_name]
  }
}
