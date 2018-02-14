include: "stitch.view.lkml"

view: ads_insights_platform_and_device {
  extends: ["stitch"]

  sql_table_name: {{ _user_attributes["facebook_schema"] }}.ads_insights_platform_and_device ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: actions {
    hidden: yes
    sql: ${TABLE}.actions ;;
  }

  dimension: ad_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ad_id ;;
  }

  dimension: ad_name {
    type: string
    sql: ${TABLE}.ad_name ;;
  }

  dimension: adset_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.adset_id ;;
  }

  dimension: adset_name {
    type: string
    sql: ${TABLE}.adset_name ;;
  }

  dimension: campaign_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: canvas_avg_view_percent {
    type: number
    sql: ${TABLE}.canvas_avg_view_percent ;;
  }

  dimension: canvas_avg_view_time {
    type: number
    sql: ${TABLE}.canvas_avg_view_time ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost_per_inline_link_click {
    type: number
    sql: ${TABLE}.cost_per_inline_link_click ;;
  }

  dimension: cost_per_inline_post_engagement {
    type: number
    sql: ${TABLE}.cost_per_inline_post_engagement ;;
  }

  dimension: cost_per_total_action {
    type: number
    sql: ${TABLE}.cost_per_total_action ;;
  }

  dimension: cost_per_unique_click {
    type: number
    sql: ${TABLE}.cost_per_unique_click ;;
  }

  dimension: cost_per_unique_inline_link_click {
    type: number
    sql: ${TABLE}.cost_per_unique_inline_link_click ;;
  }

  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }

  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }

  dimension: cpp {
    type: number
    sql: ${TABLE}.cpp ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }

  dimension_group: date_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_start ;;
  }

  dimension_group: date_stop {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_stop ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: impression_device {
    type: string
    sql: ${TABLE}.impression_device ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: inline_link_click_ctr {
    type: number
    sql: ${TABLE}.inline_link_click_ctr ;;
  }

  dimension: inline_link_clicks {
    type: number
    sql: ${TABLE}.inline_link_clicks ;;
  }

  dimension: inline_post_engagement {
    type: number
    sql: ${TABLE}.inline_post_engagement ;;
  }

  dimension: objective {
    type: string
    sql: ${TABLE}.objective ;;
  }

  dimension: platform_position {
    type: string
    sql: ${TABLE}.platform_position ;;
  }

  dimension: publisher_platform {
    type: string
    sql: ${TABLE}.publisher_platform ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  dimension: social_clicks {
    type: number
    sql: ${TABLE}.social_clicks ;;
  }

  dimension: social_impressions {
    type: number
    sql: ${TABLE}.social_impressions ;;
  }

  dimension: social_reach {
    type: number
    sql: ${TABLE}.social_reach ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: total_action_value {
    type: number
    sql: ${TABLE}.total_action_value ;;
  }

  dimension: total_actions {
    type: number
    sql: ${TABLE}.total_actions ;;
  }

  dimension: total_unique_actions {
    type: number
    sql: ${TABLE}.total_unique_actions ;;
  }

  dimension: unique_actions {
    hidden: yes
    sql: ${TABLE}.unique_actions ;;
  }

  dimension: unique_clicks {
    type: number
    sql: ${TABLE}.unique_clicks ;;
  }

  dimension: unique_ctr {
    type: number
    sql: ${TABLE}.unique_ctr ;;
  }

  dimension: unique_inline_link_click_ctr {
    type: number
    sql: ${TABLE}.unique_inline_link_click_ctr ;;
  }

  dimension: unique_inline_link_clicks {
    type: number
    sql: ${TABLE}.unique_inline_link_clicks ;;
  }

  dimension: unique_link_clicks_ctr {
    type: number
    sql: ${TABLE}.unique_link_clicks_ctr ;;
  }

  dimension: unique_social_clicks {
    type: number
    sql: ${TABLE}.unique_social_clicks ;;
  }

  dimension: video_10_sec_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_10_sec_watched_actions ;;
  }

  dimension: video_15_sec_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_15_sec_watched_actions ;;
  }

  dimension: video_30_sec_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_30_sec_watched_actions ;;
  }

  dimension: video_p100_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_p100_watched_actions ;;
  }

  dimension: video_p25_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_p25_watched_actions ;;
  }

  dimension: video_p50_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_p50_watched_actions ;;
  }

  dimension: video_p75_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_p75_watched_actions ;;
  }

  dimension: video_p95_watched_actions {
    hidden: yes
    sql: ${TABLE}.video_p95_watched_actions ;;
  }

  dimension: website_ctr {
    hidden: yes
    sql: ${TABLE}.website_ctr ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      adset_name,
      campaign_name,
      account_name,
      ad_name,
      campaigns.name,
      campaigns.id,
      ads.name,
      ads.source_ad_id,
      adsets.created_time,
      adsets.name,
      adsets.id
    ]
  }
}

view: ads_insights_platform_and_device__video_30_sec_watched_actions {
  dimension: _1d_click {
    type: number
    sql: ${TABLE}._1d_click ;;
  }

  dimension: _1d_view {
    type: number
    sql: ${TABLE}._1d_view ;;
  }

  dimension: _28d_click {
    type: number
    sql: ${TABLE}._28d_click ;;
  }

  dimension: _28d_view {
    type: number
    sql: ${TABLE}._28d_view ;;
  }

  dimension: _7d_click {
    type: number
    sql: ${TABLE}._7d_click ;;
  }

  dimension: _7d_view {
    type: number
    sql: ${TABLE}._7d_view ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_target_id {
    type: string
    sql: ${TABLE}.action_target_id ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads_insights_platform_and_device__video_p75_watched_actions {
  dimension: _1d_click {
    type: number
    sql: ${TABLE}._1d_click ;;
  }

  dimension: _1d_view {
    type: number
    sql: ${TABLE}._1d_view ;;
  }

  dimension: _28d_click {
    type: number
    sql: ${TABLE}._28d_click ;;
  }

  dimension: _28d_view {
    type: number
    sql: ${TABLE}._28d_view ;;
  }

  dimension: _7d_click {
    type: number
    sql: ${TABLE}._7d_click ;;
  }

  dimension: _7d_view {
    type: number
    sql: ${TABLE}._7d_view ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_target_id {
    type: string
    sql: ${TABLE}.action_target_id ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads_insights_platform_and_device__video_p95_watched_actions {
  dimension: _1d_click {
    type: number
    sql: ${TABLE}._1d_click ;;
  }

  dimension: _1d_view {
    type: number
    sql: ${TABLE}._1d_view ;;
  }

  dimension: _28d_click {
    type: number
    sql: ${TABLE}._28d_click ;;
  }

  dimension: _28d_view {
    type: number
    sql: ${TABLE}._28d_view ;;
  }

  dimension: _7d_click {
    type: number
    sql: ${TABLE}._7d_click ;;
  }

  dimension: _7d_view {
    type: number
    sql: ${TABLE}._7d_view ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_target_id {
    type: string
    sql: ${TABLE}.action_target_id ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads_insights_platform_and_device__actions {
  dimension: _1d_click {
    type: number
    sql: ${TABLE}._1d_click ;;
  }

  dimension: _1d_view {
    type: number
    sql: ${TABLE}._1d_view ;;
  }

  dimension: _28d_click {
    type: number
    sql: ${TABLE}._28d_click ;;
  }

  dimension: _28d_view {
    type: number
    sql: ${TABLE}._28d_view ;;
  }

  dimension: _7d_click {
    type: number
    sql: ${TABLE}._7d_click ;;
  }

  dimension: _7d_view {
    type: number
    sql: ${TABLE}._7d_view ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_target_id {
    type: string
    sql: ${TABLE}.action_target_id ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads_insights_platform_and_device__website_ctr {
  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_target_id {
    type: string
    sql: ${TABLE}.action_target_id ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads_insights_platform_and_device__video_15_sec_watched_actions {
  dimension: _1d_click {
    type: number
    sql: ${TABLE}._1d_click ;;
  }

  dimension: _1d_view {
    type: number
    sql: ${TABLE}._1d_view ;;
  }

  dimension: _28d_click {
    type: number
    sql: ${TABLE}._28d_click ;;
  }

  dimension: _28d_view {
    type: number
    sql: ${TABLE}._28d_view ;;
  }

  dimension: _7d_click {
    type: number
    sql: ${TABLE}._7d_click ;;
  }

  dimension: _7d_view {
    type: number
    sql: ${TABLE}._7d_view ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_target_id {
    type: string
    sql: ${TABLE}.action_target_id ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads_insights_platform_and_device__video_10_sec_watched_actions {
  dimension: _1d_click {
    type: number
    sql: ${TABLE}._1d_click ;;
  }

  dimension: _1d_view {
    type: number
    sql: ${TABLE}._1d_view ;;
  }

  dimension: _28d_click {
    type: number
    sql: ${TABLE}._28d_click ;;
  }

  dimension: _28d_view {
    type: number
    sql: ${TABLE}._28d_view ;;
  }

  dimension: _7d_click {
    type: number
    sql: ${TABLE}._7d_click ;;
  }

  dimension: _7d_view {
    type: number
    sql: ${TABLE}._7d_view ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_target_id {
    type: string
    sql: ${TABLE}.action_target_id ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads_insights_platform_and_device__unique_actions {
  dimension: _1d_click {
    type: number
    sql: ${TABLE}._1d_click ;;
  }

  dimension: _1d_view {
    type: number
    sql: ${TABLE}._1d_view ;;
  }

  dimension: _28d_click {
    type: number
    sql: ${TABLE}._28d_click ;;
  }

  dimension: _28d_view {
    type: number
    sql: ${TABLE}._28d_view ;;
  }

  dimension: _7d_click {
    type: number
    sql: ${TABLE}._7d_click ;;
  }

  dimension: _7d_view {
    type: number
    sql: ${TABLE}._7d_view ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_target_id {
    type: string
    sql: ${TABLE}.action_target_id ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads_insights_platform_and_device__video_p25_watched_actions {
  dimension: _1d_click {
    type: number
    sql: ${TABLE}._1d_click ;;
  }

  dimension: _1d_view {
    type: number
    sql: ${TABLE}._1d_view ;;
  }

  dimension: _28d_click {
    type: number
    sql: ${TABLE}._28d_click ;;
  }

  dimension: _28d_view {
    type: number
    sql: ${TABLE}._28d_view ;;
  }

  dimension: _7d_click {
    type: number
    sql: ${TABLE}._7d_click ;;
  }

  dimension: _7d_view {
    type: number
    sql: ${TABLE}._7d_view ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_target_id {
    type: string
    sql: ${TABLE}.action_target_id ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads_insights_platform_and_device__video_p100_watched_actions {
  dimension: _1d_click {
    type: number
    sql: ${TABLE}._1d_click ;;
  }

  dimension: _1d_view {
    type: number
    sql: ${TABLE}._1d_view ;;
  }

  dimension: _28d_click {
    type: number
    sql: ${TABLE}._28d_click ;;
  }

  dimension: _28d_view {
    type: number
    sql: ${TABLE}._28d_view ;;
  }

  dimension: _7d_click {
    type: number
    sql: ${TABLE}._7d_click ;;
  }

  dimension: _7d_view {
    type: number
    sql: ${TABLE}._7d_view ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_target_id {
    type: string
    sql: ${TABLE}.action_target_id ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: ads_insights_platform_and_device__video_p50_watched_actions {
  dimension: _1d_click {
    type: number
    sql: ${TABLE}._1d_click ;;
  }

  dimension: _1d_view {
    type: number
    sql: ${TABLE}._1d_view ;;
  }

  dimension: _28d_click {
    type: number
    sql: ${TABLE}._28d_click ;;
  }

  dimension: _28d_view {
    type: number
    sql: ${TABLE}._28d_view ;;
  }

  dimension: _7d_click {
    type: number
    sql: ${TABLE}._7d_click ;;
  }

  dimension: _7d_view {
    type: number
    sql: ${TABLE}._7d_view ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_target_id {
    type: string
    sql: ${TABLE}.action_target_id ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}
