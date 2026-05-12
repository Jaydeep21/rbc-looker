connection: "bq_data" # <-- Update this to your actual Looker connection name

# Include all the auto-generated view files from your project
include: "/views/**/*.view.lkml"

# -----------------------------------------------------------------------------
# EXPLORE: CLIENT 360 & WEALTH HUB
# -----------------------------------------------------------------------------
explore: client_360 {
  label: "Client 360° & Wealth Hub"
  description: "Comprehensive view starting from the Client, traversing through their Accounts, Positions, Transactions, and Advisor relationships."
  view_name: vw_client_core_profile
  view_label: "1. Client Core Profile"

  # ===========================================================================
  # DOMAIN 1: CLIENT DETAILS (Joined on IPID)
  # ===========================================================================

  join: vw_client_tax_details {
    view_label: "1. Client Tax & Planning"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_tax_details.ipid} ;;
  }

  join: vw_client_planning_info {
    view_label: "1. Client Tax & Planning"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_planning_info.ipid} ;;
  }

  join: vw_client_address {
    view_label: "1. Client Contact Info"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_address.ipid} ;;
  }

  join: vw_client_email_addresses {
    view_label: "1. Client Contact Info"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_email_addresses.ipid} ;;
  }

  join: vw_client_phone_numbers {
    view_label: "1. Client Contact Info"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_phone_numbers.ipid} ;;
  }

  join: vw_client_employment_info {
    view_label: "1. Client Demographics"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_employment_info.ipid} ;;
  }

  join: vw_client_banking_information {
    view_label: "1. Client Admin & Banking"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_banking_information.ipid} ;;
  }

  join: vw_client_consents_and_preferences {
    view_label: "1. Client Admin & Banking"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_consents_and_preferences.ipid} ;;
  }

  join: vw_client_identifier {
    view_label: "1. Client Admin & Banking"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_identifier.ipid} ;;
  }

  join: vw_client_forms {
    view_label: "1. Client Compliance"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_forms.ipid} ;;
  }

  join: vw_client_kyc {
    view_label: "1. Client Compliance"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_kyc.ipid} ;;
  }

  join: vw_client_aml {
    view_label: "1. Client Compliance"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_aml.ipid} ;;
  }

  join: vw_client_crs {
    view_label: "1. Client Compliance"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_crs.ipid} ;;
  }

  join: vw_client_fatca_qi {
    view_label: "1. Client Compliance"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_fatca_qi.ipid} ;;
  }

  join: vw_client_relationships {
    view_label: "1. Client Relationships"
    type: left_outer
    relationship: many_to_many
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_relationships.ipid} ;;
  }

  # ===========================================================================
  # DOMAIN 2: WEALTH PLANNING (Joined on IPID)
  # ===========================================================================

  join: vw_wealth_planning_history {
    view_label: "2. Wealth Planning"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_client_core_profile.ipid} = ${vw_wealth_planning_history.ipid} ;;
  }

  join: vw_wealth_planning_opportunities {
    view_label: "2. Wealth Planning"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_client_core_profile.ipid} = ${vw_wealth_planning_opportunities.ipid} ;;
  }

  # ===========================================================================
  # DOMAIN 3: ACCOUNTS (Bridge -> IPID to ARNGID)
  # ===========================================================================

  join: vw_account_cli2_acc_rel {
    view_label: "3. Account Ownership Bridge"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_client_core_profile.ipid} = ${vw_account_cli2_acc_rel.ipid} ;;
  }

  join: vw_account_properties {
    view_label: "3. Account Details"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_account_cli2_acc_rel.arngid} = ${vw_account_properties.arngid} ;;
  }

  join: vw_account_performance {
    view_label: "3. Account Performance"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_account_properties.arngid} = ${vw_account_performance.arngid} ;;
  }

  join: vw_account_cashflow {
    view_label: "3. Account Performance"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_account_properties.arngid} = ${vw_account_cashflow.arngid} ;;
  }

  join: vw_account_address {
    view_label: "3. Account Admin"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_account_properties.arngid} = ${vw_account_address.arngid} ;;
  }

  join: vw_account_identifiers {
    view_label: "3. Account Admin"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_account_properties.arngid} = ${vw_account_identifiers.arngid} ;;
  }

  join: vw_account_kyc {
    view_label: "3. Account Admin"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_account_properties.arngid} = ${vw_account_kyc.arngid} ;;
  }

  join: vw_account_payment_and_bank_info {
    view_label: "3. Account Admin"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_account_properties.arngid} = ${vw_account_payment_and_bank_info.arngid} ;;
  }

  join: vw_account_sub_account_details {
    view_label: "3. Account Details"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_account_properties.arngid} = ${vw_account_sub_account_details.arngid} ;;
  }

  # ===========================================================================
  # DOMAIN 4: POSITIONS & SECURITIES (Joined on ACCT_NO_13D & INSTRUMENT_ID)
  # ===========================================================================

  join: vw_position_properties {
    view_label: "4. Holdings & Positions"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_account_properties.acct_no_8_d} = ${vw_position_properties.acct_no_13_d_join} ;;
  }

  join: vw_securities_properties {
    view_label: "4. Security Masters"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_position_properties.instrument_id} = ${vw_securities_properties.instrument_id} ;;
  }

  join: vw_securities_identifiers {
    view_label: "4. Security Masters"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_securities_properties.instrument_id} = ${vw_securities_identifiers.instrument_id} ;;
  }

  # ===========================================================================
  # DOMAIN 5: TRANSACTIONS & TRANSFERS (Joined on ACCT_NO_13D / ARNGID)
  # ===========================================================================

  join: vw_transaction_properties {
    view_label: "5. Transactions"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_account_properties.acct_no_8_d} = ${vw_transaction_properties.acct_no_13_d} ;;
  }

  # join: vw_transaction_sched_trans {
  #   view_label: "5. Scheduled Transactions"
  #   type: left_outer
  #   relationship: one_to_many
  #   sql_on: ${vw_account_properties.acct_no_8_d} = ${vw_transaction_sched_trans.acct_no_13d} ;;
  # }

  join: vw_transfer_properties {
    view_label: "5. Transfers"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_account_properties.arngid} = ${vw_transfer_properties.source_arngid} ;;
  }

  join: vw_internal_transfer_match {
    view_label: "5. Transfers"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_transfer_properties.transfer_id} = ${vw_internal_transfer_match.transfer_id} ;;
  }

  # ===========================================================================
  # DOMAIN 6: PORTFOLIO (Joined on ARNGID or PORT_ID)
  # ===========================================================================

  join: vw_portfolio_properties {
    view_label: "6. Portfolios"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_account_properties.arngid} = ${vw_portfolio_properties.arngid} ;;
  }

  join: vw_portfolio_ips {
    view_label: "6. Portfolios"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_account_properties.arngid} = ${vw_portfolio_ips.arngid} ;;
  }

  join: vw_portfolio_acc_grouping {
    view_label: "6. Portfolios"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_account_properties.arngid} = ${vw_portfolio_acc_grouping.arngid} ;;
  }

  join: vw_portfolio_perf_metric {
    view_label: "6. Portfolio Performance"
    type: left_outer
    relationship: one_to_one
    # Data dictionary explicit rule: PORT_ID = 'PORT' + ARNGID
    sql_on: ${vw_portfolio_perf_metric.port_id} = CONCAT('PORT', ${vw_account_properties.arngid}) ;;
  }

  # ===========================================================================
  # DOMAIN 7: ORGANISATION & ADVISORS (Joined on IA_CODE to REPCODE)
  # ===========================================================================

  join: vw_org_repcode_profile {
    view_label: "7. Advisor (Rep) Profile"
    type: left_outer
    relationship: many_to_one
    # Data dictionary rule: IA_CODE links to REPCODE
    sql_on: ${vw_account_properties.ia_code} = ${vw_org_repcode_profile.repcode} ;;
  }

  join: vw_org_repcode_employees {
    view_label: "7. Advisor (Rep) Profile"
    type: left_outer
    relationship: one_to_many
    sql_on: ${vw_org_repcode_profile.repcode} = ${vw_org_repcode_employees.repcode} ;;
  }

  join: vw_org_team_owners_repcodes {
    view_label: "7. Org Teams"
    type: left_outer
    relationship: many_to_many
    sql_on: ${vw_org_repcode_profile.repcode} = ${vw_org_team_owners_repcodes.repcode} ;;
  }

  join: vw_org_team_profile {
    view_label: "7. Org Teams"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_org_team_owners_repcodes.team_id} = ${vw_org_team_profile.team_id} ;;
  }

  # ===========================================================================
  # DOMAIN 8: FEES & COMMISSIONS
  # ===========================================================================

  join: vw_feecomm_acct_fee_rate {
    view_label: "8. Fees & Commissions"
    type: left_outer
    relationship: one_to_one
    sql_on: ${vw_account_properties.arngid} = ${vw_feecomm_acct_fee_rate.arngid} ;;
  }

  join: vw_feecomm_schedules {
    view_label: "8. Fees & Commissions"
    type: left_outer
    relationship: many_to_one
    sql_on: ${vw_feecomm_acct_fee_rate.schedule_id} = ${vw_feecomm_schedules.schedule_id} ;;
  }
}
