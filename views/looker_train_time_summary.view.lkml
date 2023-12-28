view: looker_train_time_summary {
  sql_table_name: dbo.Looker_TrainTimeSummary ;;

  dimension: course_name {
    type: string
    sql: ${TABLE}.course_name ;;
  }
  dimension: course_seq {
    type: string
    sql: ${TABLE}.course_seq ;;
  }
  dimension: course_times {
    type: number
    sql: ${TABLE}.course_times ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: user_dept {
    type: string
    sql: ${TABLE}.USER_DEPT ;;
  }
  dimension: user_email {
    type: string
    sql: ${TABLE}.USER_EMAIL ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.USER_ID ;;
  }
  dimension: user_orgunit {
    type: string
    sql: ${TABLE}.USER_ORGUNIT ;;
  }
  measure: count {
    type: count
    drill_fields: [course_name]
  }
}
