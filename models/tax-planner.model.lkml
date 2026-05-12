# ==============================================================================
# RBC HACKATHON BASE MODEL
# ==============================================================================
# This model uses the default unenhanced base views directly pulled from
# genaimarketingdemo.rbc_domain_views and wires the joins based on the
# reference Entity Relationship diagram.

# Adjusted to match the connection name expected by your Looker environment
connection: "bq_data"

# Include all generated base views
include: "/views/**/*.view.lkml"
include: "/dashboards/*"


# ==============================================================================
# 1. CLIENT DOMAIN
# ==============================================================================
explore: vw_client_core_profile {
  label: "Client Domain"
  view_label: "Client Core Profile"
  description: "Primary hub for exploring Client attributes, KYC, AML, and Planning."

  join: vw_client_address {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_address.ipid} ;;
    relationship: one_to_many
  }

  join: vw_client_email_addresses {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_email_addresses.ipid} ;;
    relationship: one_to_many
  }

  join: vw_client_phone_numbers {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_phone_numbers.ipid} ;;
    relationship: one_to_many
  }

  join: vw_client_kyc {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_kyc.ipid} ;;
    relationship: one_to_one
  }

  join: vw_client_aml {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_aml.ipid} ;;
    relationship: one_to_one
  }

  join: vw_client_banking_information {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_banking_information.ipid} ;;
    relationship: one_to_one
  }

  join: vw_client_consents_and_preferences {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_consents_and_preferences.ipid} ;;
    relationship: one_to_one
  }

  join: vw_client_crs {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_crs.ipid} ;;
    relationship: one_to_one
  }

  join: vw_client_fatca_qi {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_fatca_qi.ipid} ;;
    relationship: one_to_one
  }

  join: vw_client_forms {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_forms.ipid} ;;
    relationship: one_to_many
  }

  join: vw_client_identifier {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_identifier.ipid} ;;
    relationship: one_to_one
  }

  join: vw_client_planning_info {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_planning_info.ipid} ;;
    relationship: one_to_one
  }

  join: vw_client_relationships {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_relationships.ipid} ;;
    relationship: one_to_many
  }

  join: vw_client_tax_details {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_tax_details.ipid} ;;
    relationship: one_to_one
  }

  join: vw_client_employment_info {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_client_employment_info.ipid} ;;
    relationship: one_to_one
  }

  # Wealth Planning Domain linked to Client
  join: vw_wealth_planning_history {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_wealth_planning_history.ipid} ;;
    relationship: one_to_many
  }

  join: vw_wealth_planning_opportunities {
    type: left_outer
    sql_on: ${vw_client_core_profile.ipid} = ${vw_wealth_planning_opportunities.ipid} ;;
    relationship: one_to_many
  }
}


# ==============================================================================
# 2. ACCOUNT DOMAIN
# ==============================================================================
explore: vw_account_properties {
  label: "Account Domain"
  view_label: "Account Properties"
  description: "Primary hub for exploring Account details, Performance, and associated Portfolios."

  join: vw_account_address {
    type: left_outer
    sql_on: ${vw_account_properties.arngid} = ${vw_account_address.arngid} ;;
    relationship: one_to_one
  }

  # Bridge to Client (Commented out due to unknown view error)
  # Looker's auto-generator may have named this view differently (e.g., vw_account_cli_2_acc_rel)
  # or skipped generating it. Verify the view name in your files to re-enable.
  # join: vw_account_cli2acc_rel {
  #   type: left_outer
  #   sql_on: ${vw_account_properties.arngid} = ${vw_account_cli2acc_rel.arngid} ;;
  #   relationship: one_to_many
  # }

  # join: vw_client_core_profile {
  #   type: left_outer
  #   sql_on: ${vw_account_cli2acc_rel.ipid} = ${vw_client_core_profile.ipid} ;;
  #   relationship: many_to_one
  # }

  join: vw_account_cashflow {
    type: left_outer
    sql_on: ${vw_account_properties.arngid} = ${vw_account_cashflow.arngid} ;;
    relationship: one_to_one
  }

  join: vw_account_performance {
    type: left_outer
    sql_on: ${vw_account_properties.arngid} = ${vw_account_performance.arngid} ;;
    relationship: one_to_one
  }

  join: vw_account_identifiers {
    type: left_outer
    sql_on: ${vw_account_properties.arngid} = ${vw_account_identifiers.arngid} ;;
    relationship: one_to_one
  }

  join: vw_account_kyc {
    type: left_outer
    sql_on: ${vw_account_properties.arngid} = ${vw_account_kyc.arngid} ;;
    relationship: one_to_one
  }

  join: vw_account_payment_and_bank_info {
    type: left_outer
    sql_on: ${vw_account_properties.arngid} = ${vw_account_payment_and_bank_info.arngid} ;;
    relationship: one_to_one
  }

  join: vw_account_sub_account_details {
    type: left_outer
    sql_on: ${vw_account_properties.arngid} = ${vw_account_sub_account_details.arngid} ;;
    relationship: one_to_many
  }

  # Portfolio Domain mapped to Account
  join: vw_portfolio_acc_grouping {
    type: left_outer
    sql_on: ${vw_account_properties.arngid} = ${vw_portfolio_acc_grouping.arngid} ;;
    relationship: one_to_many
  }

  join: vw_portfolio_ips {
    type: left_outer
    sql_on: ${vw_account_properties.arngid} = ${vw_portfolio_ips.arngid} ;;
    relationship: one_to_one
  }

  join: vw_portfolio_properties {
    type: left_outer
    sql_on: ${vw_account_properties.arngid} = ${vw_portfolio_properties.arngid} ;;
    relationship: one_to_one
  }

  # Link VW_PORTFOLIO_PERF_METRIC via derived PORT_ID
  join: vw_portfolio_perf_metric {
    type: left_outer
    sql_on: CONCAT('PORT', ${vw_account_properties.arngid}) = ${vw_portfolio_perf_metric.port_id} ;;
    relationship: one_to_one
  }

  # Fees & Commissions Domain
  join: vw_feecomm_acct_fee_rate {
    type: left_outer
    sql_on: ${vw_account_properties.arngid} = ${vw_feecomm_acct_fee_rate.arngid} ;;
    relationship: one_to_one
  }

  join: vw_feecomm_schedules {
    type: left_outer
    sql_on: ${vw_feecomm_acct_fee_rate.schedule_id} = ${vw_feecomm_schedules.schedule_id} ;;
    relationship: many_to_one
  }
}


# ==============================================================================
# 3. SECURITIES DOMAIN
# ==============================================================================
explore: vw_securities_properties {
  label: "Securities Domain"
  view_label: "Securities Properties"
  description: "Core table for Security and Instrument profiles."

  join: vw_securities_identifiers {
    type: left_outer
    sql_on: ${vw_securities_properties.instrument_id} = ${vw_securities_identifiers.instrument_id} ;;
    relationship: one_to_many
  }
}


# ==============================================================================
# 4. POSITION DOMAIN
# ==============================================================================
explore: vw_position_properties {
  label: "Position Domain"
  view_label: "Position Properties"
  description: "Brings together Account and Security facts for active holdings."

  join: vw_securities_properties {
    type: left_outer
    sql_on: ${vw_position_properties.instrument_id} = ${vw_securities_properties.instrument_id} ;;
    relationship: many_to_one
  }
}


# ==============================================================================
# 5. TRANSACTION DOMAIN
# ==============================================================================
explore: vw_transaction_properties {
  label: "Transaction Domain"
  view_label: "Transaction Properties"
  description: "Historical transaction logs bridging Accounts to Securities."

  join: vw_securities_properties {
    type: left_outer
    sql_on: ${vw_transaction_properties.instrument_id} = ${vw_securities_properties.instrument_id} ;;
    relationship: many_to_one
  }
}

# Standalone explores for Transaction Schedules and Transfers
explore: vw_transaction_sched_trans {
  label: "Scheduled Transactions"
  hidden: yes
}

explore: vw_transfer_properties {
  label: "Transfer Properties"

  join: vw_internal_transfer_match {
    type: left_outer
    sql_on: ${vw_transfer_properties.source_arngid} = ${vw_internal_transfer_match.source_arngid}
      AND ${vw_transfer_properties.dest_arngid} = ${vw_internal_transfer_match.dest_arngid} ;;
    relationship: one_to_one
  }
}


# ==============================================================================
# 6. ORGANISATION DOMAIN
# ==============================================================================
explore: vw_org_repcode_profile {
  label: "Organisation Domain"
  view_label: "Organisation Repcode Profile"
  description: "Investment Advisor and Organizational structure mappings."

  join: vw_org_repcode_employees {
    type: left_outer
    sql_on: ${vw_org_repcode_profile.repcode} = ${vw_org_repcode_employees.repcode} ;;
    relationship: one_to_many
  }

  join: vw_org_team_owners_repcodes {
    type: left_outer
    sql_on: ${vw_org_repcode_profile.repcode} = ${vw_org_team_owners_repcodes.repcode} ;;
    relationship: many_to_many
  }

  join: vw_org_team_profile {
    type: left_outer
    sql_on: ${vw_org_team_owners_repcodes.team_id} = ${vw_org_team_profile.team_id} ;;
    relationship: many_to_one
  }
}
