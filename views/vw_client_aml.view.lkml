view: vw_client_aml {
  sql_table_name: `rbc_domain_views.VW_CLIENT_AML` ;;

  dimension: aml_acct_auth_minor_pcdid {
    type: string
    sql: ${TABLE}.AML_ACCT_AUTH_MINOR_PCDID ;;
  }
  dimension: aml_agent_firm {
    type: string
    sql: ${TABLE}.AML_AGENT_FIRM ;;
  }
  dimension: aml_agent_name {
    type: string
    sql: ${TABLE}.AML_AGENT_NAME ;;
  }
  dimension: aml_agent_type_desc {
    type: string
    sql: ${TABLE}.AML_AGENT_TYPE_DESC ;;
  }
  dimension: aml_ascertained_ind {
    type: yesno
    sql: ${TABLE}.AML_ASCERTAINED_IND ;;
  }
  dimension: aml_country_of_idntf {
    type: string
    sql: ${TABLE}.AML_COUNTRY_OF_IDNTF ;;
  }
  dimension_group: aml_date_of_confirmation {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.AML_DATE_OF_CONFIRMATION ;;
  }
  dimension: aml_employee_name_at_affiliate {
    type: string
    sql: ${TABLE}.AML_EMPLOYEE_NAME_AT_AFFILIATE ;;
  }
  dimension: aml_fintrac_gf_ind {
    type: number
    sql: ${TABLE}.AML_FINTRAC_GF_IND ;;
  }
  dimension: aml_full_name {
    type: string
    sql: ${TABLE}.AML_FULL_NAME ;;
  }
  dimension: aml_full_name_ind {
    type: yesno
    sql: ${TABLE}.AML_FULL_NAME_IND ;;
  }
  dimension_group: aml_idntf_expiry {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.AML_IDNTF_EXPIRY_DATE ;;
  }
  dimension: aml_mthd_id_of_verif_used {
    type: number
    value_format_name: id
    sql: ${TABLE}.AML_MTHD_ID_OF_VERIF_USED ;;
  }
  dimension: aml_mthd_of_verif_desc {
    type: string
    sql: ${TABLE}.AML_MTHD_OF_VERIF_DESC ;;
  }
  dimension: aml_mthd_of_verif_desc_fr {
    type: string
    sql: ${TABLE}.AML_MTHD_OF_VERIF_DESC_FR ;;
  }
  dimension: aml_name_of_affiliate_entity {
    type: string
    sql: ${TABLE}.AML_NAME_OF_AFFILIATE_ENTITY ;;
  }
  dimension: aml_name_of_bank_contact {
    type: string
    sql: ${TABLE}.AML_NAME_OF_BANK_CONTACT ;;
  }
  dimension: aml_name_of_gcofoath {
    type: string
    sql: ${TABLE}.AML_NAME_OF_GCOFOATH ;;
  }
  dimension: aml_occupation_of_gcofoath_desc {
    type: string
    sql: ${TABLE}.AML_OCCUPATION_OF_GCOFOATH_DESC ;;
  }
  dimension: aml_pos_of_bank_contact {
    type: string
    sql: ${TABLE}.AML_POS_OF_BANK_CONTACT ;;
  }
  dimension: aml_prov_or_state_of_idntf {
    type: string
    sql: ${TABLE}.AML_PROV_OR_STATE_OF_IDNTF ;;
  }
  dimension: aml_province_of_idntf {
    type: string
    sql: ${TABLE}.AML_PROVINCE_OF_IDNTF ;;
  }
  dimension: aml_rules_apply {
    type: yesno
    sql: ${TABLE}.AML_RULES_APPLY ;;
  }
  dimension: aml_source_of_credit_file {
    type: string
    sql: ${TABLE}.AML_SOURCE_OF_CREDIT_FILE ;;
  }
  dimension: aml_telephone_of_gcofoath {
    type: string
    sql: ${TABLE}.AML_TELEPHONE_OF_GCOFOATH ;;
  }
  dimension: aml_unique_idntf_ref_num {
    type: number
    value_format_name: id
    sql: ${TABLE}.AML_UNIQUE_IDNTF_REF_NUM ;;
  }
  dimension: aml_value_of_cheque_clrd {
    type: string
    sql: ${TABLE}.AML_VALUE_OF_CHEQUE_CLRD ;;
  }
  dimension_group: aml_verif {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.AML_VERIF_DATE ;;
  }
  dimension: aml_verif_date_by_affiliate {
    type: string
    sql: ${TABLE}.AML_VERIF_DATE_BY_AFFILIATE ;;
  }
  dimension: aml_verif_first_src_doc {
    type: string
    sql: ${TABLE}.AML_VERIF_FIRST_SRC_DOC ;;
  }
  dimension: aml_verif_in_person_ind {
    type: yesno
    sql: ${TABLE}.AML_VERIF_IN_PERSON_IND ;;
  }
  dimension: aml_verif_second_src_doc {
    type: string
    sql: ${TABLE}.AML_VERIF_SECOND_SRC_DOC ;;
  }
  dimension: cli_aml_bank_acc_no {
    type: number
    sql: ${TABLE}.CLI_AML_BANK_ACC_NO ;;
  }
  dimension: cli_aml_bank_name {
    type: string
    sql: ${TABLE}.CLI_AML_BANK_NAME ;;
  }
  dimension: cli_aml_bank_no {
    type: number
    sql: ${TABLE}.CLI_AML_BANK_NO ;;
  }
  dimension: cli_aml_branch_name {
    type: string
    sql: ${TABLE}.CLI_AML_BRANCH_NAME ;;
  }
  dimension: cli_idntf_typ_desc {
    type: string
    sql: ${TABLE}.CLI_IDNTF_TYP_DESC ;;
  }
  dimension: cli_idntf_typ_desc_fr {
    type: string
    sql: ${TABLE}.CLI_IDNTF_TYP_DESC_FR ;;
  }
  dimension: cli_idntf_typ_id {
    type: number
    sql: ${TABLE}.CLI_IDNTF_TYP_ID ;;
  }
  dimension: credit_acc_no {
    type: number
    sql: ${TABLE}.CREDIT_ACC_NO ;;
  }
  dimension: credit_acc_no_dtc {
    type: string
    sql: ${TABLE}.CREDIT_ACC_NO_DTC ;;
  }
  dimension: credit_acc_typ {
    type: string
    sql: ${TABLE}.CREDIT_ACC_TYP ;;
  }
  dimension: credit_acct_currncy_code {
    type: string
    sql: ${TABLE}.CREDIT_ACCT_CURRNCY_CODE ;;
  }
  dimension: credit_acct_currncy_desc {
    type: string
    sql: ${TABLE}.CREDIT_ACCT_CURRNCY_DESC ;;
  }
  dimension: credit_di_relatnshp {
    type: string
    sql: ${TABLE}.CREDIT_DI_RELATNSHP ;;
  }
  dimension: credit_transit_no {
    type: number
    sql: ${TABLE}.CREDIT_TRANSIT_NO ;;
  }
  dimension: dual_process_mthd_other_reason_desc {
    type: string
    sql: ${TABLE}.DUAL_PROCESS_MTHD_OTHER_REASON_DESC ;;
  }
  dimension: dual_process_mthd_reason_desc {
    type: string
    sql: ${TABLE}.DUAL_PROCESS_MTHD_REASON_DESC ;;
  }
  dimension: dual_process_mthd_reason_desc_fr {
    type: string
    sql: ${TABLE}.DUAL_PROCESS_MTHD_REASON_DESC_FR ;;
  }
  dimension: dual_process_mthd_reason_id {
    type: string
    sql: ${TABLE}.DUAL_PROCESS_MTHD_REASON_ID ;;
  }
  dimension: employee_perform_aml_verif {
    type: string
    sql: ${TABLE}.EMPLOYEE_PERFORM_AML_VERIF ;;
  }
  dimension: first_src_doc_acc_no_or_ref_num {
    type: number
    sql: ${TABLE}.FIRST_SRC_DOC_ACC_NO_OR_REF_NUM ;;
  }
  dimension: first_src_doc_type_of_info_verif_desc {
    type: string
    sql: ${TABLE}.FIRST_SRC_DOC_TYPE_OF_INFO_VERIF_DESC ;;
  }
  dimension: first_src_doc_type_of_info_verif_desc_fr {
    type: string
    sql: ${TABLE}.FIRST_SRC_DOC_TYPE_OF_INFO_VERIF_DESC_FR ;;
  }
  dimension: first_src_doc_type_of_info_verif_id {
    type: number
    sql: ${TABLE}.FIRST_SRC_DOC_TYPE_OF_INFO_VERIF_ID ;;
  }
  dimension: first_src_idntf_doc_used {
    type: string
    sql: ${TABLE}.FIRST_SRC_IDNTF_DOC_USED ;;
  }
  dimension: ipid {
    type: string
    sql: ${TABLE}.IPID ;;
  }
  dimension: is_delete {
    type: number
    sql: ${TABLE}.IS_DELETE ;;
  }
  dimension: second_src_acc_no_or_ref_num {
    type: string
    sql: ${TABLE}.SECOND_SRC_ACC_NO_OR_REF_NUM ;;
  }
  dimension: second_src_doc_type_of_info_verif_desc {
    type: string
    sql: ${TABLE}.SECOND_SRC_DOC_TYPE_OF_INFO_VERIF_DESC ;;
  }
  dimension: second_src_doc_type_of_info_verif_desc_fr {
    type: string
    sql: ${TABLE}.SECOND_SRC_DOC_TYPE_OF_INFO_VERIF_DESC_FR ;;
  }
  dimension: second_src_doc_type_of_info_verif_id {
    type: string
    sql: ${TABLE}.SECOND_SRC_DOC_TYPE_OF_INFO_VERIF_ID ;;
  }
  dimension: second_src_idntf_doc_used {
    type: string
    sql: ${TABLE}.SECOND_SRC_IDNTF_DOC_USED ;;
  }
  measure: count {
    type: count
    drill_fields: [cli_aml_branch_name, cli_aml_bank_name, aml_agent_name, aml_full_name]
  }
}
