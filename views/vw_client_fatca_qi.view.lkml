view: vw_client_fatca_qi {
  sql_table_name: `rbc_domain_views.VW_CLIENT_FATCA_QI` ;;

  dimension: backup_withholding_ind {
    type: number
    sql: ${TABLE}.BACKUP_WITHHOLDING_IND ;;
  }
  dimension: capacity {
    type: string
    sql: ${TABLE}.CAPACITY ;;
  }
  dimension_group: certify {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CERTIFY_DATE ;;
  }
  dimension: certify_name {
    type: string
    sql: ${TABLE}.CERTIFY_NAME ;;
  }
  dimension: chapter3_status {
    type: string
    sql: ${TABLE}.CHAPTER3_STATUS ;;
  }
  dimension: chapter4_status {
    type: string
    sql: ${TABLE}.CHAPTER4_STATUS ;;
  }
  dimension: exempt_payee_code {
    type: number
    sql: ${TABLE}.EXEMPT_PAYEE_CODE ;;
  }
  dimension: fatca_classification {
    type: string
    sql: ${TABLE}.FATCA_CLASSIFICATION ;;
  }
  dimension: fatca_exempt_code {
    type: string
    sql: ${TABLE}.FATCA_EXEMPT_CODE ;;
  }
  dimension: fatca_status {
    type: string
    sql: ${TABLE}.FATCA_STATUS ;;
  }
  dimension: giin {
    type: string
    sql: ${TABLE}.GIIN ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: qi_ein {
    type: string
    sql: ${TABLE}.QI_EIN ;;
  }
  dimension: qi_status {
    type: string
    sql: ${TABLE}.QI_STATUS ;;
  }
  dimension: reportable_account_ind {
    type: yesno
    sql: ${TABLE}.REPORTABLE_ACCOUNT_IND ;;
  }
  dimension_group: review {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.REVIEW_DATE ;;
  }
  dimension_group: self_cert {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SELF_CERT_DATE ;;
  }
  dimension: tin {
    type: string
    sql: ${TABLE}.TIN ;;
  }
  dimension: tin_type {
    type: string
    sql: ${TABLE}.TIN_TYPE ;;
  }
  dimension: treaty_article {
    type: string
    sql: ${TABLE}.TREATY_ARTICLE ;;
  }
  dimension: treaty_country {
    type: string
    sql: ${TABLE}.TREATY_COUNTRY ;;
  }
  dimension: treaty_income_type {
    type: string
    sql: ${TABLE}.TREATY_INCOME_TYPE ;;
  }
  dimension: treaty_rate {
    type: string
    sql: ${TABLE}.TREATY_RATE ;;
  }
  dimension: us_address_ind {
    type: number
    sql: ${TABLE}.US_ADDRESS_IND ;;
  }
  dimension: us_birth_place {
    type: string
    sql: ${TABLE}.US_BIRTH_PLACE ;;
  }
  dimension: us_phone_no {
    type: string
    sql: ${TABLE}.US_PHONE_NO ;;
  }
  dimension_group: w8_w9_expiry {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.W8_W9_EXPIRY_DATE ;;
  }
  dimension: w8_w9_form_type {
    type: string
    sql: ${TABLE}.W8_W9_FORM_TYPE ;;
  }
  dimension: withholding_rate {
    type: number
    sql: ${TABLE}.WITHHOLDING_RATE ;;
  }
  measure: count {
    type: count
    drill_fields: [certify_name]
  }
}
