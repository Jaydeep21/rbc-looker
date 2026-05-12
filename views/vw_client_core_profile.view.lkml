view: vw_client_core_profile {
  sql_table_name: `rbc_domain_views.VW_CLIENT_CORE_PROFILE` ;;

  dimension: active_client_ind {
    type: yesno
    sql: ${TABLE}.ACTIVE_CLIENT_IND ;;
  }
  dimension: activeaccount_anyrelation_ind {
    type: number
    sql: ${TABLE}.ACTIVEACCOUNT_ANYRELATION_IND ;;
  }
  dimension: activeaccount_owner_ind {
    type: number
    sql: ${TABLE}.ACTIVEACCOUNT_OWNER_IND ;;
  }
  dimension: anyrelation_ind {
    type: number
    sql: ${TABLE}.ANYRELATION_IND ;;
  }
  dimension: anyrelationwithaccount_ind {
    type: number
    sql: ${TABLE}.ANYRELATIONWITHACCOUNT_IND ;;
  }
  dimension_group: birth {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BIRTH_DATE ;;
  }
  dimension: ca_citizen_ind {
    type: yesno
    sql: ${TABLE}.CA_CITIZEN_IND ;;
  }
  dimension: callcentre_feewaiver {
    type: yesno
    sql: ${TABLE}.CALLCENTRE_FEEWAIVER ;;
  }
  dimension: cdic_trust_type {
    type: string
    sql: ${TABLE}.CDIC_TRUST_TYPE ;;
  }
  dimension: client_type {
    type: string
    sql: ${TABLE}.CLIENT_TYPE ;;
  }
  dimension: commission_discount {
    type: number
    sql: ${TABLE}.COMMISSION_DISCOUNT ;;
  }
  dimension: company_name {
    type: string
    sql: ${TABLE}.COMPANY_NAME ;;
  }
  dimension: control_ind {
    type: yesno
    sql: ${TABLE}.CONTROL_IND ;;
  }
  dimension: country_inc {
    type: string
    sql: ${TABLE}.COUNTRY_INC ;;
  }
  dimension: country_inc_code {
    type: string
    sql: ${TABLE}.COUNTRY_INC_CODE ;;
  }
  dimension: credit_interest {
    type: number
    sql: ${TABLE}.CREDIT_INTEREST ;;
  }
  dimension_group: cs_enroll {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CS_ENROLL_DATE ;;
  }
  dimension: death_date {
    type: string
    sql: ${TABLE}.DEATH_DATE ;;
  }
  dimension: debt_interest {
    type: number
    sql: ${TABLE}.DEBT_INTEREST ;;
  }
  dimension: dependants {
    type: number
    sql: ${TABLE}.DEPENDANTS ;;
  }
  dimension: emonitoring {
    type: string
    sql: ${TABLE}.EMONITORING ;;
  }
  dimension: emonitoring_ind {
    type: number
    sql: ${TABLE}.EMONITORING_IND ;;
  }
  dimension: estate_name {
    type: string
    sql: ${TABLE}.ESTATE_NAME ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }
  dimension: forprofit_ind {
    type: number
    sql: ${TABLE}.FORPROFIT_IND ;;
  }
  dimension: full_name {
    type: string
    sql: ${TABLE}.FULL_NAME ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.GENDER ;;
  }
  dimension: highrisk_ind {
    type: number
    sql: ${TABLE}.HIGHRISK_IND ;;
  }
  dimension: ia_registered {
    type: yesno
    sql: ${TABLE}.IA_REGISTERED ;;
  }
  dimension: ia_solicit {
    type: yesno
    sql: ${TABLE}.IA_SOLICIT ;;
  }
  dimension: inc_place {
    type: string
    sql: ${TABLE}.INC_PLACE ;;
  }
  dimension: initial {
    type: string
    sql: ${TABLE}.INITIAL ;;
  }
  dimension: institute_client_ind {
    type: number
    sql: ${TABLE}.INSTITUTE_CLIENT_IND ;;
  }
  dimension: ip_name {
    type: string
    sql: ${TABLE}.IP_NAME ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: language {
    type: string
    sql: ${TABLE}.LANGUAGE ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }
  dimension: leveltradeconsolidation_ind {
    type: number
    sql: ${TABLE}.LEVELTRADECONSOLIDATION_IND ;;
  }
  dimension: life_status {
    type: string
    sql: ${TABLE}.LIFE_STATUS ;;
  }
  dimension: lob {
    type: string
    sql: ${TABLE}.LOB ;;
  }
  dimension: marital_status {
    type: string
    sql: ${TABLE}.MARITAL_STATUS ;;
  }
  dimension: noaccount_anyrelation_ind {
    type: number
    sql: ${TABLE}.NOACCOUNT_ANYRELATION_IND ;;
  }
  dimension: noaccount_owner_ind {
    type: number
    sql: ${TABLE}.NOACCOUNT_OWNER_IND ;;
  }
  dimension: noncorp_entity {
    type: number
    sql: ${TABLE}.NONCORP_ENTITY ;;
  }
  dimension_group: open {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OPEN_DATE ;;
  }
  dimension: openaccount_anyrelation_ind {
    type: number
    sql: ${TABLE}.OPENACCOUNT_ANYRELATION_IND ;;
  }
  dimension: openaccount_owner_ind {
    type: number
    sql: ${TABLE}.OPENACCOUNT_OWNER_IND ;;
  }
  dimension: orignation_channel {
    type: string
    sql: ${TABLE}.ORIGNATION_CHANNEL ;;
  }
  dimension: other_citizenship {
    type: string
    sql: ${TABLE}.OTHER_CITIZENSHIP ;;
  }
  dimension: pcdid {
    type: string
    sql: ${TABLE}.PCDID ;;
  }
  dimension_group: profile_change {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PROFILE_CHANGE_DATE ;;
  }
  dimension: rbfg_no {
    type: string
    sql: ${TABLE}.RBFG_NO ;;
  }
  dimension: relationship_feewaiver {
    type: yesno
    sql: ${TABLE}.RELATIONSHIP_FEEWAIVER ;;
  }
  dimension: residence {
    type: string
    sql: ${TABLE}.RESIDENCE ;;
  }
  dimension: seg_ind {
    type: number
    sql: ${TABLE}.SEG_IND ;;
  }
  dimension: service_type {
    type: string
    sql: ${TABLE}.SERVICE_TYPE ;;
  }
  dimension: subtrust_type {
    type: string
    sql: ${TABLE}.SUBTRUST_TYPE ;;
  }
  dimension: suffix {
    type: string
    sql: ${TABLE}.SUFFIX ;;
  }
  dimension: temp_us_res_ind {
    type: number
    sql: ${TABLE}.TEMP_US_RES_IND ;;
  }
  dimension: ten_owner_exist {
    type: number
    sql: ${TABLE}.TEN_OWNER_EXIST ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }
  dimension: trust_type {
    type: string
    sql: ${TABLE}.TRUST_TYPE ;;
  }
  dimension: us_birth_ind {
    type: number
    sql: ${TABLE}.US_BIRTH_IND ;;
  }
  dimension: us_citizen_ind {
    type: number
    sql: ${TABLE}.US_CITIZEN_IND ;;
  }
  dimension: us_location {
    type: string
    sql: ${TABLE}.US_LOCATION ;;
  }
  dimension: us_mailexpiry_date {
    type: string
    sql: ${TABLE}.US_MAILEXPIRY_DATE ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	estate_name,
	ip_name,
	company_name,
	last_name,
	first_name,
	full_name
	]
  }

}
