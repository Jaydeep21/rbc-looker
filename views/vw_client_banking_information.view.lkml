view: vw_client_banking_information {
  sql_table_name: `rbc_domain_views.VW_CLIENT_BANKING_INFORMATION` ;;

  dimension: account_no {
    type: number
    sql: ${TABLE}.ACCOUNT_NO ;;
  }
  dimension: account_type {
    type: string
    sql: ${TABLE}.ACCOUNT_TYPE ;;
  }
  dimension: bank_name {
    type: string
    sql: ${TABLE}.BANK_NAME ;;
  }
  dimension: bank_no {
    type: number
    sql: ${TABLE}.BANK_NO ;;
  }
  dimension: branch_name {
    type: string
    sql: ${TABLE}.BRANCH_NAME ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
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
  dimension: transit_no {
    type: number
    sql: ${TABLE}.TRANSIT_NO ;;
  }
  measure: count {
    type: count
    drill_fields: [branch_name, bank_name]
  }
}
