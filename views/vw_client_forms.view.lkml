view: vw_client_forms {
  sql_table_name: `rbc_domain_views.VW_CLIENT_FORMS` ;;

  dimension_group: form {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FORM_DATE ;;
  }
  dimension_group: form_expiry {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FORM_EXPIRY_DATE ;;
  }
  dimension: form_name {
    type: string
    sql: ${TABLE}.FORM_NAME ;;
  }
  dimension: form_signed_ind {
    type: number
    sql: ${TABLE}.FORM_SIGNED_IND ;;
  }
  dimension: form_status {
    type: string
    sql: ${TABLE}.FORM_STATUS ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: signed_by {
    type: string
    sql: ${TABLE}.SIGNED_BY ;;
  }
  dimension_group: signed {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SIGNED_DATE ;;
  }
  measure: count {
    type: count
    drill_fields: [form_name]
  }
}
