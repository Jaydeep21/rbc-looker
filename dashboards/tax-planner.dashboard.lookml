- dashboard: tax_optimization_forecast
  title: "AI Retirement Tax Optimization & Withdrawal Strategy"
  layout: newspaper
  description: "Tax optimization and withdrawal strategy forecast for retired clients (65+) based on lifestyle needs and asset location."

  # Dashboard Filters for the Advisor to tweak the scenario
  filters:
    - name: client_id
      title: "Client ID"
      type: field_filter
      default_value: "12345" # Example ID for the 65-year old couple
      allow_multiple_values: false
      required: true
      model: rbc_wealth
      explore: client_360
      field: vw_client_core_profile.ipid

    - name: target_lifestyle_income
      title: "Target Annual Lifestyle Need ($)"
      type: number_filter
      default_value: "100000"

    - name: assumed_ror
      title: "Assumed Rate of Return (%)"
      type: number_filter
      default_value: "5"

  elements:
    # -------------------------------------------------------------------------
    # ROW 1: CURRENT STATE & DEMOGRAPHICS
    # -------------------------------------------------------------------------
    - name: client_summary
      title: "Client & Spouse Profile"
      type: single_value
      model: rbc_wealth
      explore: client_360
      fields: [vw_client_core_profile.full_name, vw_client_core_profile.age, vw_client_relationships.spouse_name]
      listen:
        client_id: vw_client_core_profile.ipid
      row: 0
      col: 0
      width: 8
      height: 4

    - name: total_current_wealth
      title: "Total Starting Assets"
      type: single_value
      model: rbc_wealth
      explore: client_360
      fields: [vw_account_performance.total_aum]
      listen:
        client_id: vw_client_core_profile.ipid
      row: 0
      col: 8
      width: 8
      height: 4

    - name: asset_location_breakdown
      title: "Current Asset Location (The 5 Accounts)"
      type: looker_pie
      model: rbc_wealth
      explore: client_360
      fields: [vw_account_properties.acct_sub_type, vw_account_performance.total_aum]
      sorts: [vw_account_performance.total_aum desc]
      listen:
        client_id: vw_client_core_profile.ipid
      row: 0
      col: 16
      width: 8
      height: 6

    # -------------------------------------------------------------------------
    # ROW 2: AI OPTIMIZED WITHDRAWAL STRATEGY (YEAR BY YEAR)
    # -------------------------------------------------------------------------
    # Note: This tile assumes a projected table or derived table exists that calculates the future state.
    - name: withdrawal_strategy_chart
      title: "Optimal Withdrawal Strategy (Age 65 to 95)"
      type: looker_column
      model: rbc_wealth
      explore: client_360  # In reality, this would likely query an AI-generated projection explore
      fields: [
        vw_client_core_profile.projected_age,
        vw_account_properties.acct_sub_type,
        vw_account_cashflow.projected_withdrawal_amount
      ]
      pivots: [vw_account_properties.acct_sub_type]
      sorts: [vw_client_core_profile.projected_age asc]
      stacking: normal
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      show_x_axis_label: true
      x_axis_label: "Client Age"
      show_x_axis_ticks: true
      x_axis_scale: auto
      listen:
        client_id: vw_client_core_profile.ipid
      row: 6
      col: 0
      width: 16
      height: 8

    # -------------------------------------------------------------------------
    # ROW 3: TAX BRACKET & SAVINGS PROJECTION
    # -------------------------------------------------------------------------
    - name: tax_savings_vs_baseline
      title: "Cumulative Lifetime Tax Savings"
      type: single_value
      model: rbc_wealth
      explore: client_360
      fields: [vw_client_tax_details.projected_lifetime_tax_savings]
      listen:
        client_id: vw_client_core_profile.ipid
      row: 6
      col: 16
      width: 8
      height: 4

    - name: projected_tax_bracket
      title: "Projected Effective Tax Rate (Ontario)"
      type: looker_line
      model: rbc_wealth
      explore: client_360
      fields: [vw_client_core_profile.projected_age, vw_client_tax_details.effective_tax_rate_percentage]
      sorts: [vw_client_core_profile.projected_age asc]
      y_axis_gridlines: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      show_x_axis_label: true
      x_axis_label: "Client Age"
      listen:
        client_id: vw_client_core_profile.ipid
      row: 10
      col: 16
      width: 8
      height: 4

    # -------------------------------------------------------------------------
    # ROW 4: DETAILED YEARLY BREAKDOWN (DATA TABLE)
    # -------------------------------------------------------------------------
    - name: detailed_year_by_year_table
      title: "Year-by-Year Withdrawal & Tax Breakdown"
      type: looker_grid
      model: rbc_wealth
      explore: client_360
      fields: [
        vw_client_core_profile.projected_age,
        vw_account_cashflow.holdco_dividend_withdrawal,
        vw_account_cashflow.rrsp_withdrawal,
        vw_account_cashflow.tfsa_withdrawal,
        vw_account_cashflow.personal_taxable_withdrawal,
        vw_client_tax_details.total_tax_paid,
        vw_client_tax_details.tax_savings_achieved
      ]
      sorts: [vw_client_core_profile.projected_age asc]
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      listen:
        client_id: vw_client_core_profile.ipid
      row: 14
      col: 0
      width: 24
      height: 8
