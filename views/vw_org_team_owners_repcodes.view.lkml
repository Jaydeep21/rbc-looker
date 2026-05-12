view: vw_org_team_owners_repcodes {
  sql_table_name: `rbc_domain_views.VW_ORG_TEAM_OWNERS_REPCODES` ;;

  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: repcode {
    type: string
    sql: ${TABLE}.REPCODE ;;
  }
  dimension: team_id {
    type: string
    sql: ${TABLE}.TEAM_ID ;;
  }
  measure: count {
    type: count
  }
}
