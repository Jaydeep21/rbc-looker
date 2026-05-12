view: vw_account_kyc {
  sql_table_name: `rbc_domain_views.VW_ACCOUNT_KYC` ;;

  dimension: acquisition_method {
    type: string
    sql: ${TABLE}.ACQUISITION_METHOD ;;
  }
  dimension: annual_income {
    type: number
    sql: ${TABLE}.ANNUAL_INCOME ;;
  }
  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: control_block_ind {
    type: yesno
    sql: ${TABLE}.CONTROL_BLOCK_IND ;;
  }
  dimension: docs_provided {
    type: yesno
    sql: ${TABLE}.DOCS_PROVIDED ;;
  }
  dimension: form_agreement_ind {
    type: yesno
    sql: ${TABLE}.FORM_AGREEMENT_IND ;;
  }
  dimension: insider_ind {
    type: yesno
    sql: ${TABLE}.INSIDER_IND ;;
  }
  dimension: invest_knowledge {
    type: string
    sql: ${TABLE}.INVEST_KNOWLEDGE ;;
  }
  dimension: invest_knowledge_id {
    type: number
    sql: ${TABLE}.INVEST_KNOWLEDGE_ID ;;
  }
  dimension: investment_objective {
    type: string
    sql: ${TABLE}.INVESTMENT_OBJECTIVE ;;
  }
  dimension: investment_objective_id {
    type: number
    sql: ${TABLE}.INVESTMENT_OBJECTIVE_ID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension_group: kyc_review {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.KYC_REVIEW_DATE ;;
  }
  dimension: kyc_status {
    type: string
    sql: ${TABLE}.KYC_STATUS ;;
  }
  dimension: liquidity_needs {
    type: string
    sql: ${TABLE}.LIQUIDITY_NEEDS ;;
  }
  dimension: liquidity_needs_id {
    type: number
    sql: ${TABLE}.LIQUIDITY_NEEDS_ID ;;
  }
  dimension: net_fix_assets {
    type: number
    sql: ${TABLE}.NET_FIX_ASSETS ;;
  }
  dimension: net_liquid_assets {
    type: number
    sql: ${TABLE}.NET_LIQUID_ASSETS ;;
  }
  dimension: org_type_id {
    type: string
    sql: ${TABLE}.ORG_TYPE_ID ;;
  }
  dimension: other_broker_name1 {
    type: string
    sql: ${TABLE}.OTHER_BROKER_NAME1 ;;
  }
  dimension: other_brokeracct_ind {
    type: yesno
    sql: ${TABLE}.OTHER_BROKERACCT_IND ;;
  }
  dimension: political_exposed_ind {
    type: yesno
    sql: ${TABLE}.POLITICAL_EXPOSED_IND ;;
  }
  dimension: pro_ind {
    type: yesno
    sql: ${TABLE}.PRO_IND ;;
  }
  dimension: risk_tolerance {
    type: string
    sql: ${TABLE}.RISK_TOLERANCE ;;
  }
  dimension: risk_tolerance_id {
    type: number
    sql: ${TABLE}.RISK_TOLERANCE_ID ;;
  }
  dimension_group: suitability {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SUITABILITY_DATE ;;
  }
  dimension: suitability_response {
    type: string
    sql: ${TABLE}.SUITABILITY_RESPONSE ;;
  }
  dimension: time_horizon {
    type: string
    sql: ${TABLE}.TIME_HORIZON ;;
  }
  dimension: time_horizon_id {
    type: number
    sql: ${TABLE}.TIME_HORIZON_ID ;;
  }
  dimension: total_net_worth {
    type: number
    sql: ${TABLE}.TOTAL_NET_WORTH ;;
  }
  measure: count {
    type: count
  }
}
