prompt --application/shared_components/user_interface/templates/calendar/basic_calendar_002
begin
--   Manifest
--     CALENDAR TEMPLATES: BASIC_CALENDAR
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(1733915933224258393)
,p_cal_template_name=>'Basic Calendar'
,p_internal_name=>'BASIC_CALENDAR'
,p_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" role="presentation" class="m-Calendar" id="calendar_month_#REGION_STATIC_ID#" data-enhance=false>',
'<tr><th class="m-MonthTitle" colspan="7" >#IMONTH# #YYYY#</th></tr>',
'<tr>',
''))
,p_month_open_format=>'<tr>'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="7">',
'<div id="calendar_day_details_#REGION_STATIC_ID#"></div>',
'</td>',
'</tr>',
'</table>',
'<script>',
'    apex.jQuery( this) .on("pageshow", function() {',
'           lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#" );',
'     apex.jQuery( ".m-Today" ).addClass("m-Day");',
'        apex.jQuery( ".m-Today" ).removeClass( "m-Today" );',
'     apex.jQuery("#calendar_month_#REGION_STATIC_ID#").find("td[data-date=#CURRENT_DATE#]").addClass( "m-Today" );',
'     apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", ''#CURRENT_DATE#'', {',
'            clear:   function() {',
'                         lDetails$.empty();',
'                     },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'    // register a delegated event on the table listening for all clicks in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" )',
'        .on( "apexafterrefresh", function() {',
'            apex.jQuery( "#calendar_month_#REGION_STATIC_ID#" ).find( "[data-role=''listview'']").listview(); })',
'        .on( "swipeleft", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''next''); } )',
'        .on( "swiperight", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''previous''); } );',
'',
'    apex.jQuery( window ).on( "orientationchange", function (pEvent) {',
'        if ( pEvent.orientation === "landscape" ) {',
'            if ( $v( "p_calendar_type" ) === "M" || $v( "p_calendar_type" ) === "D" || $v( "p_calendar_type" ) === "A") {',
'                apex.widget.calendar.ajax_calendar( "W", "same");',
'            }',
'        } else {',
'            if ( $v( "p_calendar_type" ) == "W" ) {',
'                apex.widget.calendar.ajax_calendar( "M", "same" ); ',
'            }',
'        }',
'        return false;',
'    });',
'',
'    apex.jQuery( "#calendar_month_#REGION_STATIC_ID#" ).on( "tap", "td[class^=m-]", function () {',
'        var lDate     = apex.jQuery( this ).data( "date" ),',
'            lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#" );',
'        apex.jQuery(".apex-calendar-today-has-data").addClass(''apex-calendar-has-data'');',
'        apex.jQuery(".apex-calendar-today-has-data").removeClass("apex-calendar-today-has-data");',
'        apex.jQuery( ".m-Today" ).addClass("m-Day");',
'        apex.jQuery( ".m-Today" ).removeClass( "m-Today" );',
'        apex.jQuery( this ).addClass( "m-Today" );',
'',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", lDate, {',
'            clear:   function() {',
'                         lDetails$.empty();',
'                     },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'    apex.jQuery( "#calendar_month_#REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'       apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_day_title_format=>'<div class="content-primary" class="m-DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="m-Day #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="m-Today #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="content-primary" class="m-WeekendDayTitle">#DD#</div>',
''))
,p_weekend_open_format=>'<td class="m-WeekendDay #HAS_DATA#"  data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="content-primary" class="m-NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="m-NonDay"  data-date="#CANONICAL_DATE#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" role="presentation" class="m-WeekCalendar">',
'	<tr>',
'        <th class="m-monthTitle" colspan="7" >#WTITLE#</th>',
'	</tr>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="m-DayOfWeek" >#IDY# #MM#/#DD#</th>',
''))
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_weekly_day_open_format=>'<td class="m-Day">'
,p_weekly_day_close_format=>'</td>'
,p_weekly_today_open_format=>'<td class="m-Today">'
,p_weekly_weekend_open_format=>'<td class="m-NonDay">'
,p_weekly_weekend_close_format=>'</td>'
,p_weekly_time_open_format=>'<th scope="row" class="m-hour">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr rowspan="2">'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDAY# #DD# #IMONTH# #YYYY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" role="presentation" class="m-DayCalendar"><tr>',
''))
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_daily_day_open_format=>'<td class="m-Day">'
,p_daily_day_close_format=>'</td>'
,p_daily_today_open_format=>'<td class="m-ToDay">'
,p_daily_time_open_format=>'<th scope="row" class="m-hour">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr rowspan="2" >'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul data-role="listview">',
'#DAYS#',
'</ul>',
''))
,p_agenda_past_day_format=>'<li data-role="list-divider" data-theme="d">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_today_day_format=>'<li data-role="list-divider" data-theme="b">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_future_day_format=>'<li  data-role="list-divider" >#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_past_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_today_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_future_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_month_data_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul id="listview_#REGION_STATIC_ID#" data-role="listview" data-inset="true" data-theme="c">#DAYS#</ul>',
''))
,p_month_data_entry_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li align="left" >#LINK##DATA#<p class="ui-li-aside">#TIME#</p></li>',
' '))
,p_theme_id=>150
,p_theme_class_id=>1
);
wwv_flow_api.component_end;
end;
/
