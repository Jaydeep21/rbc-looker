view: vw_internal_transfer_match {
  sql_table_name: `rbc_domain_views.VW_INTERNAL_TRANSFER_MATCH` ;;

  dimension: dest_arngid {
    type: string
    sql: ${TABLE}.DEST_ARNGID ;;
  }
  dimension: source_arngid {
    type: string
    sql: ${TABLE}.SOURCE_ARNGID ;;
  }
  dimension: transfer_id {
    type: string
    sql: ${TABLE}.TRANSFER_ID ;;
  }
  measure: count {
    type: count
  }
}
