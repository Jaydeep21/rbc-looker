view: vw_client_consents_and_preferences {
  sql_table_name: `rbc_domain_views.VW_CLIENT_CONSENTS_AND_PREFERENCES` ;;

  dimension_group: casl_consent {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CASL_CONSENT_DATE ;;
  }
  dimension: casl_consent_ind {
    type: number
    sql: ${TABLE}.CASL_CONSENT_IND ;;
  }
  dimension: do_not_call_date {
    type: string
    sql: ${TABLE}.DO_NOT_CALL_DATE ;;
  }
  dimension: do_not_call_ind {
    type: number
    sql: ${TABLE}.DO_NOT_CALL_IND ;;
  }
  dimension: do_not_mail_date {
    type: string
    sql: ${TABLE}.DO_NOT_MAIL_DATE ;;
  }
  dimension: do_not_mail_ind {
    type: number
    sql: ${TABLE}.DO_NOT_MAIL_IND ;;
  }
  dimension_group: electronic_delivery {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ELECTRONIC_DELIVERY_DATE ;;
  }
  dimension: electronic_delivery_ind {
    type: number
    sql: ${TABLE}.ELECTRONIC_DELIVERY_IND ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension_group: marketing_consent {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.MARKETING_CONSENT_DATE ;;
  }
  dimension: marketing_consent_ind {
    type: number
    sql: ${TABLE}.MARKETING_CONSENT_IND ;;
  }
  dimension: preferred_contact_method {
    type: string
    sql: ${TABLE}.PREFERRED_CONTACT_METHOD ;;
  }
  dimension: preferred_language {
    type: string
    sql: ${TABLE}.PREFERRED_LANGUAGE ;;
  }
  measure: count {
    type: count
  }
}
