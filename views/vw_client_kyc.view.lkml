view: vw_client_kyc {
  sql_table_name: `rbc_domain_views.VW_CLIENT_KYC` ;;

  dimension: acquisition_method {
    type: string
    sql: ${TABLE}.ACQUISITION_METHOD ;;
  }
  dimension: annual_income {
    type: number
    sql: ${TABLE}.ANNUAL_INCOME ;;
  }
  dimension: control_block_company {
    type: string
    sql: ${TABLE}.CONTROL_BLOCK_COMPANY ;;
  }
  dimension: control_block_ind {
    type: yesno
    sql: ${TABLE}.CONTROL_BLOCK_IND ;;
  }
  dimension: control_block_issuer {
    type: string
    sql: ${TABLE}.CONTROL_BLOCK_ISSUER ;;
  }
  dimension: control_block_mktsymbol {
    type: string
    sql: ${TABLE}.CONTROL_BLOCK_MKTSYMBOL ;;
  }
  dimension: docs_provided {
    type: yesno
    sql: ${TABLE}.DOCS_PROVIDED ;;
  }
  dimension: ds_relatedacct_ind {
    type: number
    sql: ${TABLE}.DS_RELATEDACCT_IND ;;
  }
  dimension: form_agreement_ind {
    type: yesno
    sql: ${TABLE}.FORM_AGREEMENT_IND ;;
  }
  dimension: insider_ind {
    type: yesno
    sql: ${TABLE}.INSIDER_IND ;;
  }
  dimension: insider_position {
    type: string
    sql: ${TABLE}.INSIDER_POSITION ;;
  }
  dimension: invest_knowledge {
    type: string
    sql: ${TABLE}.INVEST_KNOWLEDGE ;;
  }
  dimension: invest_knowledge_id {
    type: number
    sql: ${TABLE}.INVEST_KNOWLEDGE_ID ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension_group: knowsince {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.KNOWSINCE_DATE ;;
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
  dimension: other_broker_name2 {
    type: string
    sql: ${TABLE}.OTHER_BROKER_NAME2 ;;
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
  dimension: suitability_channel {
    type: string
    sql: ${TABLE}.SUITABILITY_CHANNEL ;;
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
  dimension: ta_name {
    type: string
    sql: ${TABLE}.TA_NAME ;;
  }
  dimension: total_net_worth {
    type: number
    sql: ${TABLE}.TOTAL_NET_WORTH ;;
  }
  measure: count {
    type: count
    drill_fields: [ta_name]
  }
}
