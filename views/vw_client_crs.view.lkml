view: vw_client_crs {
  sql_table_name: `rbc_domain_views.VW_CLIENT_CRS` ;;

  dimension: account_holder_type {
    type: string
    sql: ${TABLE}.ACCOUNT_HOLDER_TYPE ;;
  }
  dimension: control_person_ind {
    type: number
    sql: ${TABLE}.CONTROL_PERSON_IND ;;
  }
  dimension: crs_status {
    type: string
    sql: ${TABLE}.CRS_STATUS ;;
  }
  dimension: crs_tax_country {
    type: string
    sql: ${TABLE}.CRS_TAX_COUNTRY ;;
  }
  dimension: crs_tax_country_code {
    type: string
    sql: ${TABLE}.CRS_TAX_COUNTRY_CODE ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: passive_nfe_ind {
    type: number
    sql: ${TABLE}.PASSIVE_NFE_IND ;;
  }
  dimension: reportable_account_ind {
    type: number
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
  dimension: self_cert_type {
    type: string
    sql: ${TABLE}.SELF_CERT_TYPE ;;
  }
  dimension: tax_id_no {
    type: string
    sql: ${TABLE}.TAX_ID_NO ;;
  }
  measure: count {
    type: count
  }
}
