view: vw_wealth_planning_history {
  sql_table_name: `rbc_domain_views.VW_WEALTH_PLANNING_HISTORY` ;;

  dimension: advisor_name {
    type: string
    sql: ${TABLE}.ADVISOR_NAME ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.CREATED_BY ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CREATED_DATE ;;
  }
  dimension: current_savings {
    type: number
    sql: ${TABLE}.CURRENT_SAVINGS ;;
  }
  dimension: goal_amount {
    type: number
    sql: ${TABLE}.GOAL_AMOUNT ;;
  }
  dimension: inflation_rate {
    type: number
    sql: ${TABLE}.INFLATION_RATE ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
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
  dimension: life_expectancy {
    type: number
    sql: ${TABLE}.LIFE_EXPECTANCY ;;
  }
  dimension_group: plan {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PLAN_DATE ;;
  }
  dimension: plan_id {
    type: string
    sql: ${TABLE}.PLAN_ID ;;
  }
  dimension: plan_notes {
    type: string
    sql: ${TABLE}.PLAN_NOTES ;;
  }
  dimension: plan_objective {
    type: string
    sql: ${TABLE}.PLAN_OBJECTIVE ;;
  }
  dimension_group: plan_review {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PLAN_REVIEW_DATE ;;
  }
  dimension: plan_status {
    type: string
    sql: ${TABLE}.PLAN_STATUS ;;
  }
  dimension: plan_type {
    type: string
    sql: ${TABLE}.PLAN_TYPE ;;
  }
  dimension: projected_value {
    type: number
    sql: ${TABLE}.PROJECTED_VALUE ;;
  }
  dimension: retirement_age {
    type: number
    sql: ${TABLE}.RETIREMENT_AGE ;;
  }
  dimension: return_rate {
    type: number
    sql: ${TABLE}.RETURN_RATE ;;
  }
  dimension: risk_profile {
    type: string
    sql: ${TABLE}.RISK_PROFILE ;;
  }
  dimension: shortfall_amount {
    type: number
    sql: ${TABLE}.SHORTFALL_AMOUNT ;;
  }
  measure: count {
    type: count
    drill_fields: [advisor_name]
  }
}
