view: vw_securities_identifiers {
  sql_table_name: `rbc_domain_views.VW_SECURITIES_IDENTIFIERS` ;;

  dimension: exchange {
    type: string
    sql: ${TABLE}.EXCHANGE ;;
  }
  dimension: identifier_type {
    type: string
    sql: ${TABLE}.IDENTIFIER_TYPE ;;
  }
  dimension: identifier_value {
    type: string
    sql: ${TABLE}.IDENTIFIER_VALUE ;;
  }
  dimension: instrument_id {
    type: string
    sql: ${TABLE}.INSTRUMENT_ID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: is_primary {
    type: number
    sql: ${TABLE}.IS_PRIMARY ;;
  }
  measure: count {
    type: count
  }
}
