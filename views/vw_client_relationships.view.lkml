view: vw_client_relationships {
  sql_table_name: `rbc_domain_views.VW_CLIENT_RELATIONSHIPS` ;;

  dimension: close_date {
    type: string
    sql: ${TABLE}.CLOSE_DATE ;;
  }
  dimension_group: effective {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.EFFECTIVE_DATE ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: poa_ind {
    type: number
    sql: ${TABLE}.POA_IND ;;
  }
  dimension: related_ipid {
    type: string
    sql: ${TABLE}.RELATED_IPID ;;
  }
  dimension: relationship_status {
    type: string
    sql: ${TABLE}.RELATIONSHIP_STATUS ;;
  }
  dimension: relationship_type {
    type: string
    sql: ${TABLE}.RELATIONSHIP_TYPE ;;
  }
  measure: count {
    type: count
  }
}
