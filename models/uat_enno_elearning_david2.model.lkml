connection: "ennoconn-it-mssql-test-001-ennolearning"

access_grant: user_id {
  user_attribute: id
  allowed_values: ["2", "6", "14", "15"] #Darren, Joan, Vivian
}


# include all the views
include: "/views/**/*.view.lkml"

datagroup: uat_enno_elearning_david2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: uat_enno_elearning_david2_default_datagroup

explore: coruse_d_signin_record {}

explore: course_m_tbl {}

explore: employee_tbl {}

explore: looker_train_time_summary {
  required_access_grants: [user_id]
}
