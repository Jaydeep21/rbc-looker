view: vw_portfolio_ips {
  sql_table_name: `rbc_domain_views.VW_PORTFOLIO_IPS` ;;

  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: investment_objective {
    type: string
    sql: ${TABLE}.INVESTMENT_OBJECTIVE ;;
  }
  dimension_group: ips {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.IPS_DATE ;;
  }
  dimension_group: ips_review {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.IPS_REVIEW_DATE ;;
  }
  dimension: ips_status {
    type: string
    sql: ${TABLE}.IPS_STATUS ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: port_id {
    type: string
    sql: ${TABLE}.PORT_ID ;;
  }
  dimension: risk_tolerance {
    type: string
    sql: ${TABLE}.RISK_TOLERANCE ;;
  }
  dimension: time_horizon {
    type: string
    sql: ${TABLE}.TIME_HORIZON ;;
  }
  measure: count {
    type: count
  }
}
