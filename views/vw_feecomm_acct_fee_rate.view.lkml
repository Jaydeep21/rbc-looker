view: vw_feecomm_acct_fee_rate {
  sql_table_name: `rbc_domain_views.VW_FEECOMM_ACCT_FEE_RATE` ;;

  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: aum_bracket_high {
    type: number
    sql: ${TABLE}.AUM_BRACKET_HIGH ;;
  }
  dimension: aum_bracket_low {
    type: number
    sql: ${TABLE}.AUM_BRACKET_LOW ;;
  }
  dimension: base_fee {
    type: number
    sql: ${TABLE}.BASE_FEE ;;
  }
  dimension: billing_frequency {
    type: string
    sql: ${TABLE}.BILLING_FREQUENCY ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }
  dimension_group: effective {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EFFECTIVE_DATE ;;
  }
  dimension: fee_rate {
    type: number
    sql: ${TABLE}.FEE_RATE ;;
  }
  dimension: fee_rate_type {
    type: string
    sql: ${TABLE}.FEE_RATE_TYPE ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension_group: last_modified {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LAST_MODIFIED_DATE ;;
  }
  dimension_group: next_review {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NEXT_REVIEW_DATE ;;
  }
  dimension: override_rate {
    type: number
    sql: ${TABLE}.OVERRIDE_RATE ;;
  }
  dimension: override_reason {
    type: string
    sql: ${TABLE}.OVERRIDE_REASON ;;
  }
  dimension: schedule_id {
    type: string
    sql: ${TABLE}.SCHEDULE_ID ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }
  measure: count {
    type: count
  }
}
