view: employee_tbl {
  sql_table_name: dbo.EMPLOYEE_TBL ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }
  dimension: uid {
    type: string
    sql: ${TABLE}.UID ;;
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
  dimension: user_name {
    type: string
    sql: ${TABLE}.USER_NAME ;;
  }
  dimension: user_orgunit {
    type: string
    sql: ${TABLE}.USER_ORGUNIT ;;
  }
  dimension: user_title {
    type: string
    sql: ${TABLE}.USER_TITLE ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user_name]
  }
}
