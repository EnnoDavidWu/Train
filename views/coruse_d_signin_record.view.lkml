view: coruse_d_signin_record {
  sql_table_name: dbo.CORUSE_D_SIGNIN_RECORD ;;

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }
  dimension: course_name {
    type: string
    sql: ${TABLE}.course_name ;;
  }
  dimension: course_seq {
    type: string
    sql: ${TABLE}.course_seq ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: emp_id {
    type: string
    sql: ${TABLE}.emp_id ;;
  }
  dimension_group: sign_in_record {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.sign_in_record ;;
  }
  measure: count {
    type: count
    drill_fields: [course_name]
  }
}
