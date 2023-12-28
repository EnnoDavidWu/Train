view: course_m_tbl {
  sql_table_name: dbo.COURSE_M_TBL ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }
  dimension: actual_cost {
    type: string
    sql: ${TABLE}.actual_cost ;;
  }
  dimension: contact {
    type: string
    sql: ${TABLE}.contact ;;
  }
  dimension: course_id {
    type: string
    sql: ${TABLE}.course_id ;;
  }
  dimension: course_name {
    type: string
    sql: ${TABLE}.course_name ;;
  }
  dimension_group: course_schedule_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.course_schedule_end ;;
  }
  dimension_group: course_schedule_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.course_schedule_start ;;
  }
  dimension: course_seq {
    type: string
    sql: ${TABLE}.course_seq ;;
  }
  dimension: course_times {
    type: number
    sql: ${TABLE}.course_times ;;
  }
  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.create_time ;;
  }
  dimension: creator {
    type: string
    sql: ${TABLE}.creator ;;
  }
  dimension: demand_basis {
    type: string
    sql: ${TABLE}.demand_basis ;;
  }
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: department_type {
    type: string
    sql: ${TABLE}.department_type ;;
  }
  dimension: deptsponsor {
    type: string
    sql: ${TABLE}.deptsponsor ;;
  }
  dimension: evaluation_method {
    type: string
    sql: ${TABLE}.evaluation_method ;;
  }
  dimension: include_in {
    type: string
    sql: ${TABLE}.include_in ;;
  }
  dimension: include_in_budget {
    type: string
    sql: ${TABLE}.include_in_budget ;;
  }
  dimension: include_outsiders {
    type: string
    sql: ${TABLE}.include_outsiders ;;
  }
  dimension: need_out_sourcing {
    type: string
    sql: ${TABLE}.NeedOutSourcing ;;
  }
  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }
  dimension: onrevise {
    type: string
    sql: ${TABLE}.onrevise ;;
  }
  dimension: organizer {
    type: string
    sql: ${TABLE}.organizer ;;
  }
  dimension: owner {
    type: string
    sql: ${TABLE}.owner ;;
  }
  dimension: real_trainee_count {
    type: string
    sql: ${TABLE}.real_trainee_count ;;
  }
  dimension: seq {
    type: number
    sql: ${TABLE}.seq ;;
  }
  dimension_group: signin_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.signin_end ;;
  }
  dimension_group: signin_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.signin_start ;;
  }
  dimension: trainee_count {
    type: string
    sql: ${TABLE}.trainee_count ;;
  }
  dimension: trainees {
    type: string
    sql: ${TABLE}.trainees ;;
  }
  dimension: training_category {
    type: string
    sql: ${TABLE}.training_category ;;
  }
  dimension: training_method {
    type: string
    sql: ${TABLE}.training_method ;;
  }
  dimension: training_purpose {
    type: string
    sql: ${TABLE}.training_purpose ;;
  }
  measure: count {
    type: count
    drill_fields: [id, course_name]
  }
}
