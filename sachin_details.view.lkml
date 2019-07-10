view: sachin_details {
  sql_table_name: SRT.Sachin_Details ;;

  dimension: balls {
    type: number
    sql: ${TABLE}.BALLS ;;
  }

  dimension: batting_position {
    type: number
    sql: ${TABLE}.BATTING_POSITION ;;
  }

  dimension: bowling {
    type: string
    sql: ${TABLE}.BOWLING ;;
  }

  dimension: fours {
    type: number
    sql: ${TABLE}.FOURS ;;
  }

  dimension: innings {
    type: number
    sql: ${TABLE}.INNINGS ;;
  }

  dimension: match_id {
    type: number
    sql: ${TABLE}.MATCH_ID ;;
  }

  dimension: minutes {
    type: number
    sql: ${TABLE}.MINUTES ;;
  }

  dimension: out_type {
    type: string
    sql: ${TABLE}.OUT_TYPE ;;
  }

  dimension: runs {
    type: number
    sql: ${TABLE}.RUNS ;;
  }

  dimension: second_player {
    type: string
    sql: ${TABLE}.SECOND_PLAYER ;;
  }

  dimension: sixes {
    type: number
    sql: ${TABLE}.SIXES ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  #developer defined variables
  measure: total_runs{
    type: sum
    sql: ${TABLE}.RUNS ;;
  }

  measure: total_balls {
    type: sum
    sql: ${TABLE}.BALLS ;;
  }

  measure: runs_from_fours {
    type: sum
    sql: ${TABLE}.FOURS*4 ;;
  }

  measure: runs_from_sixes {
    type: sum
    sql: ${TABLE}.SIXES*6 ;;
  }

  measure: no_of_matches {
    type: number
    sql: count(${TABLE}.MATCH_ID) ;;
  }

  measure: centuries {
    type: number
    sql: count(${TABLE}.RUNS) ;;
  }

  measure: no_of_innings {
    type: number
    sql: count(${innings}) ;;
  }

  measure: no_of_out_type {
    type: number
    sql: count(${TABLE}.OUT_TYPE) ;;
  }

}
