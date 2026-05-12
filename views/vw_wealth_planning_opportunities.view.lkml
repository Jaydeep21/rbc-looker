view: vw_wealth_planning_opportunities {
  sql_table_name: `rbc_domain_views.VW_WEALTH_PLANNING_OPPORTUNITIES` ;;

  dimension: assigned_ia {
    type: string
    sql: ${TABLE}.ASSIGNED_IA ;;
  }
  dimension: assigned_ia_name {
    type: string
    sql: ${TABLE}.ASSIGNED_IA_NAME ;;
  }
  dimension: aum_impact {
    type: number
    sql: ${TABLE}.AUM_IMPACT ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.CAMPAIGN_ID ;;
  }
  dimension_group: close {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CLOSE_DATE ;;
  }
  dimension: contact_method {
    type: string
    sql: ${TABLE}.CONTACT_METHOD ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CREATED_DATE ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension_group: last_contact {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LAST_CONTACT_DATE ;;
  }
  dimension_group: last_modified {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LAST_MODIFIED_DATE ;;
  }
  dimension: next_action {
    type: string
    sql: ${TABLE}.NEXT_ACTION ;;
  }
  dimension_group: next_action {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.NEXT_ACTION_DATE ;;
  }
  dimension: notes {
    type: string
    sql: ${TABLE}.NOTES ;;
  }
  dimension_group: opportunity {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OPPORTUNITY_DATE ;;
  }
  dimension: opportunity_id {
    type: string
    sql: ${TABLE}.OPPORTUNITY_ID ;;
  }
  dimension: opportunity_status {
    type: string
    sql: ${TABLE}.OPPORTUNITY_STATUS ;;
  }
  dimension: opportunity_type {
    type: string
    sql: ${TABLE}.OPPORTUNITY_TYPE ;;
  }
  dimension: opportunity_value {
    type: number
    sql: ${TABLE}.OPPORTUNITY_VALUE ;;
  }
  dimension: priority {
    type: string
    sql: ${TABLE}.PRIORITY ;;
  }
  dimension: probability {
    type: number
    sql: ${TABLE}.PROBABILITY ;;
  }
  dimension: product_category {
    type: string
    sql: ${TABLE}.PRODUCT_CATEGORY ;;
  }
  dimension: revenue_impact {
    type: number
    sql: ${TABLE}.REVENUE_IMPACT ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.SEGMENT ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.SOURCE ;;
  }
  measure: count {
    type: count
    drill_fields: [assigned_ia_name]
  }
}
