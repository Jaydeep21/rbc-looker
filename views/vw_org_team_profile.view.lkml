view: vw_org_team_profile {
  sql_table_name: `rbc_domain_views.VW_ORG_TEAM_PROFILE` ;;

  dimension: aum_target {
    type: number
    sql: ${TABLE}.AUM_TARGET ;;
  }
  dimension: branch_code {
    type: number
    sql: ${TABLE}.BRANCH_CODE ;;
  }
  dimension: branch_name {
    type: string
    sql: ${TABLE}.BRANCH_NAME ;;
  }
  dimension: close_date {
    type: string
    sql: ${TABLE}.CLOSE_DATE ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: lob {
    type: string
    sql: ${TABLE}.LOB ;;
  }
  dimension_group: open {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OPEN_DATE ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }
  dimension: team_desc {
    type: string
    sql: ${TABLE}.TEAM_DESC ;;
  }
  dimension: team_id {
    type: string
    sql: ${TABLE}.TEAM_ID ;;
  }
  dimension: team_lead_repcode {
    type: string
    sql: ${TABLE}.TEAM_LEAD_REPCODE ;;
  }
  dimension: team_name {
    type: string
    sql: ${TABLE}.TEAM_NAME ;;
  }
  dimension: team_status {
    type: string
    sql: ${TABLE}.TEAM_STATUS ;;
  }
  dimension: team_type {
    type: string
    sql: ${TABLE}.TEAM_TYPE ;;
  }
  measure: count {
    type: count
    drill_fields: [team_name, branch_name]
  }
}
