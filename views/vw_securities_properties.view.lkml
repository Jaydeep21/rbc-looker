view: vw_securities_properties {
  sql_table_name: `rbc_domain_views.VW_SECURITIES_PROPERTIES` ;;

  dimension: asset_class {
    type: string
    sql: ${TABLE}.ASSET_CLASS ;;
  }
  dimension_group: call {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CALL_DATE ;;
  }
  dimension: call_price {
    type: number
    sql: ${TABLE}.CALL_PRICE ;;
  }
  dimension: composite_rating {
    type: string
    sql: ${TABLE}.COMPOSITE_RATING ;;
  }
  dimension: composite_rating_group {
    type: string
    sql: ${TABLE}.COMPOSITE_RATING_GROUP ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }
  dimension: current_yield {
    type: number
    sql: ${TABLE}.CURRENT_YIELD ;;
  }
  dimension: fund_ind {
    type: number
    sql: ${TABLE}.FUND_IND ;;
  }
  dimension: geography {
    type: string
    sql: ${TABLE}.GEOGRAPHY ;;
  }
  dimension: geography_group {
    type: string
    sql: ${TABLE}.GEOGRAPHY_GROUP ;;
  }
  dimension: has_holdings_ind {
    type: number
    sql: ${TABLE}.HAS_HOLDINGS_IND ;;
  }
  dimension: inst_type {
    type: string
    sql: ${TABLE}.INST_TYPE ;;
  }
  dimension: instrument_id {
    type: string
    sql: ${TABLE}.INSTRUMENT_ID ;;
  }
  dimension: instrument_name {
    type: string
    sql: ${TABLE}.INSTRUMENT_NAME ;;
  }
  dimension: maturity_band {
    type: string
    sql: ${TABLE}.MATURITY_BAND ;;
  }
  dimension: maturity_band_group {
    type: string
    sql: ${TABLE}.MATURITY_BAND_GROUP ;;
  }
  dimension_group: maturity {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.MATURITY_DATE ;;
  }
  dimension: parent_company {
    type: string
    sql: ${TABLE}.PARENT_COMPANY ;;
  }
  dimension: pay_frequency {
    type: string
    sql: ${TABLE}.PAY_FREQUENCY ;;
  }
  dimension: pay_frequency_ind {
    type: string
    sql: ${TABLE}.PAY_FREQUENCY_IND ;;
  }
  dimension: pay_rate {
    type: number
    sql: ${TABLE}.PAY_RATE ;;
  }
  dimension: price_base {
    type: number
    sql: ${TABLE}.PRICE_BASE ;;
  }
  dimension: price_cad {
    type: number
    sql: ${TABLE}.PRICE_CAD ;;
  }
  dimension: rbc_hisa_ind {
    type: number
    sql: ${TABLE}.RBC_HISA_IND ;;
  }
  dimension: sector {
    type: string
    sql: ${TABLE}.SECTOR ;;
  }
  dimension: sector_group {
    type: string
    sql: ${TABLE}.SECTOR_GROUP ;;
  }
  dimension: thirdparty_hisa_ind {
    type: number
    sql: ${TABLE}.THIRDPARTY_HISA_IND ;;
  }
  dimension: vehicle_type {
    type: string
    sql: ${TABLE}.VEHICLE_TYPE ;;
  }
  dimension: ytm {
    type: number
    sql: ${TABLE}.YTM ;;
  }
  measure: count {
    type: count
    drill_fields: [instrument_name]
  }
}
