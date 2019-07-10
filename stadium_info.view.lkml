view: stadium_info {
  sql_table_name: SRT.Stadium_Info ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }

  dimension: stadium_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.STADIUM_ID ;;
  }

  dimension: stadium_name {
    type: string
    sql: ${TABLE}.STADIUM_NAME ;;
  }

  dimension: stadium_place {
    type: string
    sql: ${TABLE}.STADIUM_PLACE ;;
  }

  measure: count {
    type: count
    drill_fields: [stadium_name]
  }

  #developer defined variables
  dimension: home_or_away {
    type: string
    case: {
      when: {
        sql: ${country}='India' ;;
        label: "Home"
      }
      else: "Away"
    }
  }
}
