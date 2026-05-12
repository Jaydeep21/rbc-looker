view: vw_org_repcode_profile {
  sql_table_name: `rbc_domain_views.VW_ORG_REPCODE_PROFILE` ;;

  dimension: assignto {
    type: string
    sql: ${TABLE}.ASSIGNTO ;;
  }
  dimension: employee_role {
    type: string
    sql: ${TABLE}.EMPLOYEE_ROLE ;;
  }
  dimension: is_internal_hire {
    type: yesno
    sql: ${TABLE}.IS_INTERNAL_HIRE ;;
  }
  dimension: is_partof_president_club {
    type: yesno
    sql: ${TABLE}.IS_PARTOF_PRESIDENT_CLUB ;;
  }
  dimension: is_rookie_class {
    type: yesno
    sql: ${TABLE}.IS_ROOKIE_CLASS ;;
  }
  dimension: repcode {
    type: string
    sql: ${TABLE}.REPCODE ;;
  }
  dimension: repcode_desc_eng {
    type: string
    sql: ${TABLE}.REPCODE_DESC_ENG ;;
  }
  dimension: repcode_dsc_fr {
    type: string
    sql: ${TABLE}.REPCODE_DSC_FR ;;
  }
  dimension: repcode_subtype {
    type: string
    sql: ${TABLE}.REPCODE_SUBTYPE ;;
  }
  dimension: repcode_type {
    type: string
    sql: ${TABLE}.REPCODE_TYPE ;;
  }
  measure: count {
    type: count
  }
}
