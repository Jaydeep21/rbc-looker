view: vw_portfolio_properties {
  sql_table_name: `rbc_domain_views.VW_PORTFOLIO_PROPERTIES` ;;

  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: aum {
    type: number
    sql: ${TABLE}.AUM ;;
  }
  dimension: aum_cad {
    type: number
    sql: ${TABLE}.AUM_CAD ;;
  }
  dimension: benchmark {
    type: string
    sql: ${TABLE}.BENCHMARK ;;
  }
  dimension_group: inception {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.INCEPTION_DATE ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension_group: last_review {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LAST_REVIEW_DATE ;;
  }
  dimension: port_id {
    type: string
    sql: ${TABLE}.PORT_ID ;;
  }
  dimension: portfolio_name {
    type: string
    sql: ${TABLE}.PORTFOLIO_NAME ;;
  }
  dimension: portfolio_status {
    type: string
    sql: ${TABLE}.PORTFOLIO_STATUS ;;
  }
  dimension: portfolio_type {
    type: string
    sql: ${TABLE}.PORTFOLIO_TYPE ;;
  }
  measure: count {
    type: count
    drill_fields: [portfolio_name]
  }
}
