connection: "azuresqldb_vbisqldb_srt"

# include all the views
include: "*.view"

datagroup: srt_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: srt_project_default_datagroup

explore: match_info {
  view_label: "Match Info"
  view_name: match_info

  join: sachin_details {
    view_label: "Sachin Details"
    type: inner
    relationship: one_to_many
    sql_on: ${match_info.match_id}=${sachin_details.match_id} ;;
  }

  join: stadium_info {
    view_label: "Stadium Info"
    type: inner
    relationship: many_to_one
    sql_on: ${match_info.stadium_id}=${stadium_info.stadium_id} ;;
  }
}

#explore: sachin_details {}

#explore: stadium_info {}
