view: vw_account_payment_and_bank_info {
  sql_table_name: `rbc_domain_views.VW_ACCOUNT_PAYMENT_AND_BANK_INFO` ;;

  dimension: account_no {
    type: number
    sql: ${TABLE}.ACCOUNT_NO ;;
  }
  dimension: account_type {
    type: string
    sql: ${TABLE}.ACCOUNT_TYPE ;;
  }
  dimension: arngid {
    type: string
    sql: ${TABLE}.ARNGID ;;
  }
  dimension: bank_name {
    type: string
    sql: ${TABLE}.BANK_NAME ;;
  }
  dimension: bank_no {
    type: number
    sql: ${TABLE}.BANK_NO ;;
  }
  dimension: branch_address {
    type: string
    sql: ${TABLE}.BRANCH_ADDRESS ;;
  }
  dimension: cheque_book_ind {
    type: number
    sql: ${TABLE}.CHEQUE_BOOK_IND ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.CURRENCY ;;
  }
  dimension: dda_status {
    type: string
    sql: ${TABLE}.DDA_STATUS ;;
  }
  dimension: direct_deposit_ind {
    type: number
    sql: ${TABLE}.DIRECT_DEPOSIT_IND ;;
  }
  dimension: eft_account_no {
    type: number
    sql: ${TABLE}.EFT_ACCOUNT_NO ;;
  }
  dimension: eft_bank_name {
    type: string
    sql: ${TABLE}.EFT_BANK_NAME ;;
  }
  dimension: eft_bank_no {
    type: number
    sql: ${TABLE}.EFT_BANK_NO ;;
  }
  dimension: eft_status {
    type: string
    sql: ${TABLE}.EFT_STATUS ;;
  }
  dimension: eft_transit_no {
    type: number
    sql: ${TABLE}.EFT_TRANSIT_NO ;;
  }
  dimension: iban {
    type: string
    sql: ${TABLE}.IBAN ;;
  }
  dimension: institution_name {
    type: string
    sql: ${TABLE}.INSTITUTION_NAME ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension_group: pad_agreement {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PAD_AGREEMENT_DATE ;;
  }
  dimension: pad_agreement_ind {
    type: number
    sql: ${TABLE}.PAD_AGREEMENT_IND ;;
  }
  dimension: pap_amount {
    type: number
    sql: ${TABLE}.PAP_AMOUNT ;;
  }
  dimension: pap_frequency {
    type: string
    sql: ${TABLE}.PAP_FREQUENCY ;;
  }
  dimension_group: pap_next {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PAP_NEXT_DATE ;;
  }
  dimension: pap_status {
    type: string
    sql: ${TABLE}.PAP_STATUS ;;
  }
  dimension: payment_method {
    type: string
    sql: ${TABLE}.PAYMENT_METHOD ;;
  }
  dimension: routing_no {
    type: number
    sql: ${TABLE}.ROUTING_NO ;;
  }
  dimension: swift_code {
    type: string
    sql: ${TABLE}.SWIFT_CODE ;;
  }
  dimension: transit_no {
    type: number
    sql: ${TABLE}.TRANSIT_NO ;;
  }
  dimension_group: void_cheque {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.VOID_CHEQUE_DATE ;;
  }
  dimension: void_cheque_ind {
    type: number
    sql: ${TABLE}.VOID_CHEQUE_IND ;;
  }
  measure: count {
    type: count
    drill_fields: [eft_bank_name, institution_name, bank_name]
  }
}
