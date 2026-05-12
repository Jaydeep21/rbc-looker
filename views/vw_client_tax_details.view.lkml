view: vw_client_tax_details {
  sql_table_name: `rbc_domain_views.VW_CLIENT_TAX_DETAILS` ;;

  dimension: backup_withholding_ind {
    type: number
    sql: ${TABLE}.BACKUP_WITHHOLDING_IND ;;
  }
  dimension: exempt_ind {
    type: number
    sql: ${TABLE}.EXEMPT_IND ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: non_resident_ind {
    type: number
    sql: ${TABLE}.NON_RESIDENT_IND ;;
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
  dimension: tax_country {
    type: string
    sql: ${TABLE}.TAX_COUNTRY ;;
  }
  dimension: tax_country_code {
    type: string
    sql: ${TABLE}.TAX_COUNTRY_CODE ;;
  }
  dimension: tax_id {
    type: number
    sql: ${TABLE}.TAX_ID ;;
  }
  dimension: tax_id_type {
    type: string
    sql: ${TABLE}.TAX_ID_TYPE ;;
  }
  dimension: tax_province {
    type: string
    sql: ${TABLE}.TAX_PROVINCE ;;
  }
  dimension: withholding_rate {
    type: number
    sql: ${TABLE}.WITHHOLDING_RATE ;;
  }
  measure: count {
    type: count
  }
}
