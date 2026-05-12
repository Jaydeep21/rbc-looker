view: vw_client_employment_info {
  sql_table_name: `rbc_domain_views.VW_CLIENT_EMPLOYMENT_INFO` ;;

  dimension: employer_address {
    type: string
    sql: ${TABLE}.EMPLOYER_ADDRESS ;;
  }
  dimension: employer_name {
    type: string
    sql: ${TABLE}.EMPLOYER_NAME ;;
  }
  dimension: employment_status {
    type: string
    sql: ${TABLE}.EMPLOYMENT_STATUS ;;
  }
  dimension: industry {
    type: string
    sql: ${TABLE}.INDUSTRY ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: is_primary {
    type: number
    sql: ${TABLE}.IS_PRIMARY ;;
  }
  dimension: occupation {
    type: string
    sql: ${TABLE}.OCCUPATION ;;
  }
  dimension: years_employed {
    type: number
    sql: ${TABLE}.YEARS_EMPLOYED ;;
  }
  measure: count {
    type: count
    drill_fields: [employer_name]
  }
}
