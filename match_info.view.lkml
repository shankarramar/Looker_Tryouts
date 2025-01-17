view: match_info {
  sql_table_name: SRT.MATCH_INFO ;;

  dimension: against {
    type: string
    sql: ${TABLE}.AGAINST ;;
  }

  dimension: bat {
    type: number
    sql: ${TABLE}.BAT ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: man_of_the_match {
    type: string
    sql: ${TABLE}.MAN_OF_THE_MATCH ;;
  }

  dimension: match_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MATCH_ID ;;
  }

  dimension: result {
    type: string
    sql: ${TABLE}.RESULT ;;
  }

  dimension: stadium_id {
    type: number
    sql: ${TABLE}.STADIUM_ID ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: toss {
    type: string
    sql: ${TABLE}.TOSS ;;
  }

  dimension: won_by {
    type: string
    sql: ${TABLE}.WON_BY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  #developer defined variables
  measure: No_of_matches {
    type: count_distinct
    sql: ${TABLE}.MATCH_ID ;;
  }
}
