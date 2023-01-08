prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Project Details'
,p_step_title=>'Project Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.permalink { margin: 10px; text-align: center;}',
'.permalink a {color: #606060; font: 11px/12px Arial, sans-serif;}',
'',
'/* Styles for Stats Badge */',
'.db-Stats {',
'  overflow: hidden;',
'}',
'.db-Stats-cell {',
'  display: block;',
'  float: left;',
'  width: 50%;',
'}',
'.db-Stats-link {',
'  display: block;',
'  padding: 8px;',
'  text-decoration: none;',
'  border-left: 1px solid #F8F8F8;',
'  transition: background .1s;',
'}',
'.db-Stats-link:hover {',
'  background-color: #EDF2FA;',
'}',
'.db-Stats-cell:first-child .db-Stats-link {',
'  border-left: none;',
'}',
'.db-Stats-count,',
'.db-Stats-label{',
'  display: block;',
'  text-align: center;',
'}',
'.db-Stats-count {',
'  font-size: 24px;',
'  font-weight: thin;',
'  height: 72px;',
'  width: 72px;',
'  line-height: 72px;',
'  margin: 0 auto 8px auto;',
'  border: 1px solid #E8E8E8;',
'  background-color: #FFF;',
'  color: #404040;',
'  border-radius: 100%;',
'}',
'.db-Stats-label {',
'  font-size: 12px;',
'  color: #707070;',
'}',
'',
'/* fill chart */',
'',
'.db-FillChart {',
'  position: relative;',
'  width: 172px;',
'  height: 172px;',
'  margin: 12px auto;',
'}',
'.db-FillChart-fillWrapper {',
'  height: 100%;',
'  width: 100%;',
'  border-radius: 100%;',
'  border: 2px solid #F0F0F0;',
'  box-sizing: border-box;',
'  position: relative;',
'  overflow: hidden;',
'  background: #FFF;',
'}',
'.db-FillChart-wrapper {',
'  box-shadow: 0 0 0 4px rgba(0,0,0,.5) inset;',
'}',
'.db-FillChart-fill {',
'  background-color: #69DE29;',
'  position: absolute;',
'  bottom: 0;',
'  width: 100%;',
'  transition: background-color .2s;',
'}',
'.db-FillChart-fill.red {',
'  background-color: #F02936;',
'}',
'.db-FillChart-fill.yellow {',
'  background-color: #F3D834;',
'}',
'.db-FillChart-fillWrapper:before {',
'  content: '''';',
'  position: absolute;',
'  border-radius: 100%;',
'  height: 100%;',
'  width: 100%;',
'  z-index: 90;',
'  box-shadow: 0 0 0 2px rgba(0,0,0,.10) inset;',
'  box-sizing: border-box;',
'}',
'.db-FillChart-heading {',
'  position: absolute;',
'  text-align: center;',
'  line-height: 40px;',
'  top: 50%;',
'  z-index: 90;',
'  left: 0;',
'  right: 0;',
'  margin: -20px 20px 0 20px;',
'  font-weight: bold;',
'  border-radius: 2px;',
'  background-color: rgba(255,255,255,.5);',
'  box-shadow: 0 4px 12px -4px rgba(0,0,0,.15);',
'  transition: box-shadow .4s, background-color .2s;',
'}',
'.db-FillChart-link {',
'  display: block;',
'  position: relative;',
'  height: 100%;',
'  width: 100%;',
'}',
'.db-FillChart-link .db-FillChart-heading {',
'  color: #000;',
'  text-decoration: underline;',
'}',
'.db-FillChart-link:hover .db-FillChart-heading {',
'  background-color: rgba(255,255,255,.85);',
'  box-shadow: 0 4px 12px 2px rgba(0,0,0,.15);',
'}',
'.db-FillChart-link:hover .db-FillChart-fillWrapper:before {',
'  box-shadow: 0 0 0 2px rgba(0,0,0,.25) inset;',
'}',
'.db-FillChart-link:hover .db-FillChart-fillWrapper {',
'  border-color: #D0D0D0;',
'}',
'',
'',
'/* Drop down Menu */',
'body .aDM-topLink.uButton {',
'    font-size: 14px;',
'    line-height: 38px;',
'    display: block;',
'}',
'body .aDM-topLink.uButton img.downArrow {',
'    margin: 8px 4px 8px 0;',
'}',
'body .aDM-top {',
'    display: block;',
'    margin: 0 !important;',
'}',
'body .aDM-subMenuContainer {',
'    width: 100%;',
'    box-sizing: border-box;',
'    border-radius: 0 0 3px 3px;',
'    margin-top: 0;',
'    border-top: 1px solid #FFF;',
'}',
'body .aMenuActive .aDM-topLink.uButton {',
'    border-bottom: 1px solid #FFF;',
'}',
'body .aDropMenuContainer {',
'    margin: 0 16px 16px 16px;',
'}',
'',
'/* child projects list */',
'',
'ul.featuredLinksList li a {',
'    height: 100px;',
'    overflow: hidden;',
'}',
'',
'ul.featuredLinksList li a {',
'    border: 1px solid #9DB3D4 !important;',
'    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,0.65) !important;',
'    -moz-box-shadow: 0 1px 0 rgba(255,255,255,0.65) !important;',
'    box-shadow: 0 1px 0 rgba(255,255,255,0.65) !important;',
'',
'    color: #4B66A7 !important;',
'    background-color: #f5f7fa !important;',
'',
'    background-image: none !important;',
'',
'    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,0.65) inset !important;',
'    -moz-box-shadow: 0 1px 0 rgba(255,255,255,0.65) inset !important;',
'    box-shadow: 0 1px 0 rgba(255,255,255,0.65) inset !important;',
'}',
'',
'ul.featuredLinksList li a:hover {',
'    background-color: #e1e9f5 !important;',
'',
'    background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #f0f4fa), color-stop(100%, #e1e9f5)) !important;',
'    background-image: -webkit-linear-gradient(#f0f4fa,#e1e9f5) !important;',
'    background-image: -moz-linear-gradient(#f0f4fa,#e1e9f5) !important;',
'    background-image: linear-gradient(#f0f4fa,#e1e9f5) !important;',
'',
'    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,0.65) inset !important;',
'    -moz-box-shadow: 0 1px 0 rgba(255,255,255,0.65) inset !important;',
'    box-shadow: 0 1px 0 rgba(255,255,255,0.65) inset !important;',
'}',
'',
'body ul.featuredLinksList {',
'    margin: 0 0 1px -1px !important;',
'}',
'body ul.featuredLinksList li {',
'    margin-right: 0;',
'    margin-bottom: 0;',
'    width: 33.3%;',
'}',
'body ul.featuredLinksList li a {',
'    padding: 8px;',
'    height: 64px !important;',
'    overflow: hidden;',
'    border-radius: 0;',
'    border-color: #F0F0F0 !important;',
'    margin-right: -1px;',
'    margin-bottom: -1px;',
'    background: none #FFF !important;',
'}',
'body ul.featuredLinksList li a:hover {',
'    box-shadow: none !important;',
'    background: none #EAF0F8 !important;',
'}',
'body ul.featuredLinksList li a h3 {',
'    font-size: 12px;',
'    margin-bottom: 4px;',
'    line-height: 16px;',
'    height: 16px;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    white-space: nowrap;',
'}',
'body ul.featuredLinksList li a p {',
'    font-size: 11px;',
'    line-height: 16px;',
'    margin: 0 !important;',
'    color: #707070;',
'}',
'',
'/* Project Status */',
'.proj-status-label {',
'  display: inline-block;',
'}',
'.proj-status-color {',
'    display: inline-block;',
'    width: 20px;',
'    height: 20px;',
'    vertical-align: top;',
'    border-radius: 100%;',
'    margin-right: 8px;',
'    box-shadow: 0 0 0 1px rgba(0,0,0,.1) inset;',
'}'))
,p_step_template=>wwv_flow_api.id(47556057873858111)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171029134505'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81744623337178304)
,p_name=>'Status Reports'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--inline:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    u.status_title,',
'    eba_proj_fw.format_status_report( dbms_lob.substr(u.status_update,450,1), ''Y'',:APP_ID,:APP_SESSION,u.project_id, ''N'', 400, u.id ) note_text,',
'    lower(u.update_owner) created_by,',
'    to_char(u.update_date,:APP_DATE_FORMAT) created_on,',
'    u.id,',
'    u.update_date',
'from eba_proj_status_rpts u,',
'     eba_proj_status p',
'where u.project_id = p.id',
'      AND (  u.update_owner = lower(:APP_USER)',
'        OR',
'         (u.viewable_by = ''Submitter and Project Owners'' and',
'          (lower(p.project_owner)   = lower(:APP_USER) or',
'           lower(p.project_owner2)  = lower(:APP_USER) or',
'           lower(p.project_owner3)  = lower(:APP_USER) or',
'           lower(p.project_owner4)  = lower(:APP_USER) or',
'           lower(p.project_owner5)  = lower(:APP_USER) or',
'           lower(p.project_owner6)  = lower(:APP_USER) or',
'           lower(p.project_owner7)  = lower(:APP_USER) or',
'           lower(p.project_owner8)  = lower(:APP_USER) or',
'           lower(p.project_owner9)  = lower(:APP_USER) or',
'           lower(p.project_owner10) = lower(:APP_USER) or',
'           lower(p.project_owner11) = lower(:APP_USER) or',
'           lower(p.project_owner12) = lower(:APP_USER)) )',
'        OR',
'         u.viewable_by = ''All''',
'        )',
'        AND ( u.project_id = :P9999_ID ',
'        or (nvl(:P9999_INC_CHILD,''N'') = ''Y''',
'            and u.project_id in (select s.id ',
'                                 from EBA_PROJ_STATUS s',
'                                 where s.parent_project_id = :P9999_ID))',
'    )',
'order by u.update_date desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_proj_status_rpts u,',
'     eba_proj_status p',
'where u.project_id = p.id',
'      AND (  u.update_owner = lower(:APP_USER)',
'        OR',
'         (u.viewable_by = ''Submitter and Project Owners'' and',
'          (lower(p.project_owner)   = lower(:APP_USER) or',
'           lower(p.project_owner2)  = lower(:APP_USER) or',
'           lower(p.project_owner3)  = lower(:APP_USER) or',
'           lower(p.project_owner4)  = lower(:APP_USER) or',
'           lower(p.project_owner5)  = lower(:APP_USER) or',
'           lower(p.project_owner6)  = lower(:APP_USER) or',
'           lower(p.project_owner7)  = lower(:APP_USER) or',
'           lower(p.project_owner8)  = lower(:APP_USER) or',
'           lower(p.project_owner9)  = lower(:APP_USER) or',
'           lower(p.project_owner10) = lower(:APP_USER) or',
'           lower(p.project_owner11) = lower(:APP_USER) or',
'           lower(p.project_owner12) = lower(:APP_USER)) )',
'        OR',
'         u.viewable_by = ''All''',
'        )',
'        AND ( u.project_id = :P9999_ID ',
'        or (nvl(:P9999_INC_CHILD,''N'') = ''Y''',
'            and u.project_id in (select s.id ',
'                                 from EBA_PROJ_STATUS s',
'                                 where s.parent_project_id = :P9999_ID))',
'    )'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No status reports'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81745053483178307)
,p_query_column_id=>1
,p_column_alias=>'STATUS_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Status Title'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:120:P120_STATUS_REPORT_ID:#ID#'
,p_column_linktext=>'#STATUS_TITLE#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81745453952178308)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Status Report'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81745864153178311)
,p_query_column_id=>3
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>3
,p_column_heading=>'Submitted By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81746131925178313)
,p_query_column_id=>4
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>4
,p_column_heading=>'Submitted'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81746506419178313)
,p_query_column_id=>5
,p_column_alias=>'ID'
,p_column_display_sequence=>6
,p_column_heading=>'Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81746959434178313)
,p_query_column_id=>6
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Update Date'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81748077548178315)
,p_plug_name=>'Project Content'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-LinksList--showIcons:t-LinksList--actions'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_api.id(81821565298178399)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47620987743858279)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status',
'where id = :P9999_ID',
'    and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'        or (upper(project_owner) = upper(:APP_USER)',
'            or upper(project_owner2) = upper(:APP_USER)',
'            or upper(project_owner3) = upper(:APP_USER)',
'            or upper(project_owner4) = upper(:APP_USER)',
'            or upper(project_owner5) = upper(:APP_USER)',
'            or upper(project_owner6) = upper(:APP_USER)',
'            or upper(project_owner7) = upper(:APP_USER)',
'            or upper(project_owner8) = upper(:APP_USER)',
'            or upper(project_owner9) = upper(:APP_USER)',
'            or upper(project_owner10) = upper(:APP_USER)',
'            or upper(project_owner11) = upper(:APP_USER)',
'            or upper(project_owner12) = upper(:APP_USER)))'))
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81748482572178315)
,p_name=>'Project Validations'
,p_region_name=>'view_validations'
,p_template=>wwv_flow_api.id(47585534000858182)
,p_display_sequence=>210
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_04'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(verified_by ) verified_by, created ver_date, created, verification_comment',
'from eba_proj_status_verifications',
'where project_id = :P9999_ID',
'order by created desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>4
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no validations have been recorded'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81748883579178315)
,p_query_column_id=>1
,p_column_alias=>'VERIFIED_BY'
,p_column_display_sequence=>1
,p_column_heading=>'Verified By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81749295896178315)
,p_query_column_id=>2
,p_column_alias=>'VER_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81749711397178319)
,p_query_column_id=>3
,p_column_alias=>'CREATED'
,p_column_display_sequence=>2
,p_column_heading=>'Verified'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81750108743178319)
,p_query_column_id=>4
,p_column_alias=>'VERIFICATION_COMMENT'
,p_column_display_sequence=>4
,p_column_heading=>'Comment'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81750551601178319)
,p_plug_name=>'Content Completeness'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Region--stacked'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>160
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    metric,',
'    the_score,',
'    max_value ',
'from',
'    (',
'        select  ''Project has an owner'' metric, ',
'                decode(PROJECT_OWNER,null,0,20) the_score,',
'                20 max_value',
'        from eba_proj_status where id = :P9999_ID',
'        union all ',
'        select  ''Project has a URL'' metric, ',
'                decode(url,null,0,10) the_score,',
'                10 max_value',
'        from eba_proj_status where id = :P9999_ID',
'        union all ',
'        select  ''Project has a goal'' metric, ',
'                decode(goal,null,0,20) the_score,',
'                20 max_value',
'        from eba_proj_status where id = :P9999_ID',
'        union all',
'        select  ''Project has a goal longer then 200 characters'' metric, ',
'                decode(goal,null,0,10) the_score,',
'                10 max_value',
'        from eba_proj_status where id = :P9999_ID and nvl(length(goal),0) >= 200',
'        union all ',
'        select  ''Project has description longer then 200 characters'' metric, ',
'                decode(description,null,0,10) the_score,',
'                10 max_value ',
'        from eba_proj_status where id = :P9999_ID and nvl(length(description),0) >= 200',
'        union all ',
'        select  ''Project has tags'' metric, ',
'                decode(s.tags,null,0,10) the_score,',
'                10 max_value ',
'        from eba_proj_status s where id = :P9999_ID',
'        union all ',
'        select  ''Project has description'' metric, ',
'                decode(description,null,0,20) the_score,',
'                20 max_value ',
'        from eba_proj_status where id = :P9999_ID',
'        union all',
'        select  nvl(max(''Project has milestones''),''Project has milestones'') metric, ',
'                decode(count(*),0,0,20) the_score,',
'                nvl(max(20),20) max_value ',
'        from EBA_PROJ_STATUS_MS m',
'        where  m.project_id = :P9999_ID ',
'        union all',
'        select  nvl(max(''Project has milestones past due (deduction)''),''Project has milestones past due (deduction)'') metric, ',
'                decode(count(*),0,0,-50) the_score,',
'                nvl(max(0),0) max_value ',
'        from EBA_PROJ_STATUS_MS m',
'        where  m.project_id = :P9999_ID and m.milestone_status = ''Open'' and milestone_date < current_date',
'        union all',
'        select  nvl(max(''Project has links''),''Project has links'') metric, ',
'                decode(count(*),0,0,10) the_score,',
'                nvl(max(10),10) max_value ',
'        from EBA_PROJ_STATUS_LINKS l',
'        where l.project_id = :P9999_ID ',
'        union all',
'        select  nvl(max(''Project has action items''),''Project has action items'') metric, ',
'                decode(count(*),0,0,20) the_score,',
'                nvl(max(20),20) max_value ',
'        from EBA_PROJ_STATUS_AIS a',
'        where a.project_id = :P9999_ID',
'        union all',
'        select  nvl(max(''Project has action items past due (deduction)''),''Project has action items pastdue (deduction)'') metric, ',
'                decode(count(*),0,0,-50) the_score,',
'                nvl(max(0),0) max_value ',
'        from EBA_PROJ_STATUS_AIS a',
'        where a.project_id = :P9999_ID and ACTION_STATUS = ''Open'' and DUE_DATE < current_date',
'        union all',
'        select  nvl(max(''Project has project updates''),''Project has project updates'') metric, ',
'                decode(count(*),0,0,10) the_score,',
'                nvl(max(10),10) max_value ',
'        from EBA_PROJ_STATUS_UPDATES u',
'        where  u.project_id = :P9999_ID ',
'        union all',
'        select  nvl(max(''Project has project updates in last week''),''Project has project updates in last week'') metric, ',
'                decode(count(*),0,0,10) the_score,',
'                nvl(max(10),10) max_value ',
'        from EBA_PROJ_STATUS_UPDATES u',
'        where  u.project_id = :P9999_ID  and UPDATE_DATE > (sysdate - 7)',
'        union all',
'        select  nvl(max(''Project has attachments''),''Project has attachments'') metric, ',
'                decode(count(*),0,0,5) the_score,',
'                nvl(max(5),5) max_value ',
'        from EBA_PROJ_STATUS_FILES u',
'        where  u.project_id = :P9999_ID ',
'        union all',
'        select  nvl(max(''Project has status reports''),''Project has status reports'') metric, ',
'                decode(count(*),0,0,10) the_score,',
'                nvl(max(10),10) max_value ',
'        from eba_proj_status_rpts u',
'        where project_id = :P9999_ID',
'        union all',
'        select  nvl(max(''Project status is not desirable''),''Project statusis not desirable'') metric, ',
'                decode(count(*),0,0,-20) the_score,',
'                nvl(max(0),0) max_value ',
'        from eba_proj_status s , EBA_PROJ_STATUS_CODES c',
'        where s.id = :P9999_ID and s.PROJECT_STATUS = c.id and nvl(c.is_desirable_yn,''Y'') = ''N''',
'        union all',
'        select  nvl(max(''Project has been validated''),''Project has been validated'') metric, ',
'                decode(max((select count(*) from eba_proj_status_verifications v',
'        where v.project_id = :P9999_ID )),0,0,20) the_score,',
'                nvl(max(20),20) max_value ',
'        from eba_proj_status where id = :P9999_ID',
'        union all',
'        select  nvl(max(''Project has been validated in last week''),''Project has been validated in last week'') metric, ',
'                decode(max((select count(*) from eba_proj_status_verifications v',
'        where v.project_id = :P9999_ID and v.created > (sysdate - 7))),0,0,30) the_score,',
'                nvl(max(30),30) max_value ',
'        from eba_proj_status where id = :P9999_ID',
'        union all',
'        select  nvl(max(''Project has been validated in last week by project owner''),''Project has been validated in last week by project owner'') metric, ',
'                decode(max((select count(*) from eba_proj_status_verifications v',
'        where v.project_id = :P9999_ID and v.created > (sysdate - 7) and (',
'        upper(v.verified_by) = upper(PROJECT_OWNER) or ',
'        upper(v.verified_by) = upper(PROJECT_OWNER2) or ',
'        upper(v.verified_by) = upper(PROJECT_OWNER3) or ',
'        upper(v.verified_by) = upper(PROJECT_OWNER4) or ',
'        upper(v.verified_by) = upper(PROJECT_OWNER5) or ',
'        upper(v.verified_by) = upper(PROJECT_OWNER6) or ',
'        upper(v.verified_by) = upper(PROJECT_OWNER7) or ',
'        upper(v.verified_by) = upper(PROJECT_OWNER8) or ',
'        upper(v.verified_by) = upper(PROJECT_OWNER9) or ',
'        upper(v.verified_by) = upper(PROJECT_OWNER10) or ',
'        upper(v.verified_by) = upper(PROJECT_OWNER11) or ',
'        upper(v.verified_by) = upper(PROJECT_OWNER12) ',
'        ))),0,0,30) the_score,',
'                nvl(max(30),30) max_value ',
'        from eba_proj_status where id = :P9999_ID',
'    ) x',
'order by',
'    1'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.COMPLETENESS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_proj_status s, eba_proj_status_codes c',
'where s.id = :P9999_ID',
'    and c.id = s.project_status(+)',
'   and is_closed_status = ''Y'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'66'
,p_attribute_02=>'Strong'
,p_attribute_03=>'33'
,p_attribute_04=>'Moderate'
,p_attribute_05=>'10'
,p_attribute_06=>'Weak'
,p_attribute_07=>'Very Weak'
,p_attribute_08=>'Completeness Score Details'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81750904812178321)
,p_plug_name=>'Usage Last 90 Days'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>170
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    count(*) c,',
'    ''Views'' l,',
'    1 disp',
'from',
'    eba_proj_status_clicks',
'where',
'    project_id = :P9999_ID ',
'and',
'    view_timestamp > sysdate - 90',
'UNION',
'select',
'    count(distinct app_username)  c,',
'    ''Users'' l,',
'    2 disp',
'from',
'    eba_proj_status_clicks',
'where',
'    project_id = :P9999_ID ',
'and',
'    view_timestamp > sysdate - 90',
'order by disp    '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'L'
,p_attribute_02=>'C'
,p_attribute_04=>'f?p=&APP_ID.:127:&APP_SESSION.:::127:P127_ID:&P9999_ID.'
,p_attribute_05=>'2'
,p_attribute_06=>'L'
,p_attribute_07=>'DOT'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81751314450178321)
,p_plug_name=>'Validations'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--stacked'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>150
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    verified_by,',
'    created',
'from',
'    eba_proj_status_verifications ',
'where',
'    project_id = :P9999_ID',
'order by',
'    created desc',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.VALIDATOR'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_proj_status s, eba_proj_status_codes c',
'where s.id = :P9999_ID',
'    and c.id = s.project_status(+)',
'   and is_closed_status = ''Y'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.:RP:P122_ID,LAST_VIEW:&P9999_ID.,200'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81751734785178321)
,p_plug_name=>'Child Projects'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--desc-2ln:t-Cards--colorize:t-Cards--displayInitials:t-Cards--4cols:t-Cards--compact'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_column=>false
,p_list_id=>wwv_flow_api.id(81824489829178400)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47616803464858276)
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_proj_status s',
'where parent_project_id = :P9999_ID'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81752527745178321)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81752911682178321)
,p_plug_name=>'Project Actions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-LinksList--showIcons:t-LinksList--actions'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>130
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_api.id(81819677041178394)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47620987743858279)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81753291791178322)
,p_plug_name=>'Go to next and previous projects'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--noBorder:t-Region--removeHeader'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81754927123178322)
,p_plug_name=>'Action Items'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    a.action title,',
'    case when a.ACTION_STATUS = ''Closed'' then',
'            ''Black''',
'        when trunc(a.due_date) < trunc(sysdate) then',
'            ''Red''',
'        when trunc(a.due_date) = trunc(sysdate) then',
'            ''Yellow''',
'        else',
'            ''Green''',
'    end as color,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':78:''||:APP_SESSION',
'                ||'':::78:LAST_VIEW,P78_ACTION_ITEM_ID,P55_ID,P9999_ID:200,''',
'                ||a.id||'',''||:P9999_ID||'',''||:P9999_ID) link,',
'    decode(PARENT_PROJECT_ID,null,null,''Parent Project: ''||(select PROJECT d from eba_proj_status where id = s.PARENT_PROJECT_ID)) parent_project,',
'    s.project,',
'    a.action_description,',
'    a.ACTION_STATUS status,',
'    a.due_date due_date,',
'   	a.ACTION_OWNER_01||',
'	      decode(a.ACTION_OWNER_02,null,null,'', ''||a.ACTION_OWNER_02)||',
'	      decode(a.ACTION_OWNER_03,null,null,'', ''||a.ACTION_OWNER_03)||',
'	      decode(a.ACTION_OWNER_04,null,null,'', ''||a.ACTION_OWNER_04)',
'	      as owner,',
'	  a.row_key,',
'  ''Project'' project_label,',
'  ''Status'' status_label',
'from eba_proj_status_ais a,',
'    eba_proj_status s,',
'    eba_proj_status_codes c',
'where a.project_id = s.id',
'    and s.project_status = c.id(+)',
'    and (a.action_status = ''Open''',
'        or a.due_date > (sysdate - 90) )',
'    and ( a.project_id = :P9999_ID',
'        or (a.project_id in (select ps.id from EBA_PROJ_STATUS ps where ps.parent_project_id = :P9999_ID)))',
'order by a.due_date, a.action'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 x',
'from eba_proj_status_ais a,',
'    eba_proj_status s,',
'    eba_proj_status_codes c',
'where a.project_id = s.id',
'    and s.project_status = c.id(+)',
'    and (a.action_status = ''Open''',
'        or a.due_date > (sysdate - 90) )',
'    and ( a.project_id = :P9999_ID',
'        or (a.project_id in (select ps.id from EBA_PROJ_STATUS ps where ps.parent_project_id = :P9999_ID)))'))
,p_attribute_01=>'DUE_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'STATUS'
,p_attribute_06=>'PROJECT'
,p_attribute_07=>'DUE_DATE'
,p_attribute_08=>'OWNER'
,p_attribute_12=>'D'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81755402008178324)
,p_name=>'ID'
,p_data_type=>'ID'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81755916201178324)
,p_name=>'TITLE'
,p_data_type=>'TITLE'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81756368435178324)
,p_name=>'COLOR'
,p_data_type=>'COLOR'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81756909052178324)
,p_name=>'LINK'
,p_data_type=>'LINK'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81757395662178324)
,p_name=>'PARENT_PROJECT'
,p_data_type=>'PARENT_PROJECT'
,p_is_visible=>true
,p_heading=>'Parent project'
,p_display_sequence=>50
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81757960577178324)
,p_name=>'PROJECT'
,p_data_type=>'PROJECT'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>60
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81758424115178324)
,p_name=>'ACTION_DESCRIPTION'
,p_data_type=>'ACTION_DESCRIPTION'
,p_is_visible=>true
,p_heading=>'Action description'
,p_display_sequence=>70
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81758915144178324)
,p_name=>'STATUS'
,p_data_type=>'STATUS'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>80
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81759408808178324)
,p_name=>'DUE_DATE'
,p_data_type=>'DUE_DATE'
,p_is_visible=>true
,p_heading=>'Due date'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81759888088178325)
,p_name=>'OWNER'
,p_data_type=>'OWNER'
,p_is_visible=>true
,p_heading=>'Owner'
,p_display_sequence=>100
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81760419341178325)
,p_name=>'ROW_KEY'
,p_data_type=>'ROW_KEY'
,p_is_visible=>true
,p_heading=>'Row key'
,p_display_sequence=>110
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81762010587178325)
,p_plug_name=>'Milestones'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    milestone_name title,',
'    case when milestone_status = ''Completed'' then',
'            ''Black''',
'        when trunc(m.milestone_date) < trunc(current_date) then',
'            ''Red''',
'        when trunc(m.milestone_date) = trunc(current_date) then',
'            ''Yellow''',
'        else',
'            ''Green''',
'    end as color,',
'    case when eba_proj_stat_ui.get_authorization_level(:APP_USER) >= 2 then',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':107:''||:APP_SESSION',
'                ||'':::107:LAST_VIEW,P107_ID,P107_PROJECT_ID,P9999_ID:200,''',
'                ||m.id||'',''||m.project_id||'',''||:P9999_ID)',
'        else',
'            ''#''',
'    end as link,',
'    case when :P9999_INC_CHILD = ''Y'' and m.project_id <> :P9999_ID then',
'            ( select p.project from eba_proj_status p where p.id = m.project_id )',
'        else',
'            null',
'    end as child_project,',
'    decode(nvl(is_major_yn,''N''),''Y'',''<b>MAJOR MILESTONE</b>'',null) description3,',
'    milestone_description,',
'    milestone_date,',
'    milestone_status,',
'    milestone_start_date,',
'    milestone_owner,',
'    nvl((select count(*) from eba_proj_status_ais a where a.milestone_id = m.id and a.action_status = ''Open''),0)',
'        ||'' Open Action Items'' ai_open',
'from eba_proj_status_ms m',
'where (m.milestone_status = ''Open'' or milestone_date > (systimestamp - 90))',
'    and ( m.project_id = :P9999_ID ',
'        or (nvl(:P9999_INC_CHILD,''N'') = ''Y'' and ',
'            m.project_id in (select id ',
'                             from eba_proj_status s',
'                             where parent_project_id = :P9999_ID))',
'    )',
'order by milestone_date, milestone_name, id'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>5000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from eba_proj_status_ms m',
'where (m.milestone_status = ''Open'' or milestone_date > (systimestamp - 90))',
'    and ( m.project_id = :P9999_ID ',
'        or (nvl(:P9999_INC_CHILD,''N'') = ''Y'' and ',
'            m.project_id in (select id ',
'                             from eba_proj_status s',
'                             where parent_project_id = :P9999_ID))',
'    )'))
,p_plug_footer=>'<span class="nodatafound" style="border-top: 1px solid #EEE">Completed milestones show when completed within the last 90 days.</span>'
,p_attribute_01=>'MILESTONE_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'AI_OPEN'
,p_attribute_06=>'MILESTONE_OWNER'
,p_attribute_07=>'CHILD_PROJECT'
,p_attribute_09=>'MILESTONE_DESCRIPTION'
,p_attribute_11=>'DESCRIPTION3'
,p_attribute_12=>'D'
,p_attribute_13=>'MILESTONE_STATUS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81762505663178325)
,p_name=>'ID'
,p_data_type=>'ID'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81763037669178325)
,p_name=>'TITLE'
,p_data_type=>'TITLE'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81763514409178325)
,p_name=>'COLOR'
,p_data_type=>'COLOR'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81764064818178325)
,p_name=>'LINK'
,p_data_type=>'LINK'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81764486504178325)
,p_name=>'CHILD_PROJECT'
,p_data_type=>'CHILD_PROJECT'
,p_is_visible=>true
,p_heading=>'Child Project'
,p_display_sequence=>50
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81764978018178327)
,p_name=>'DESCRIPTION3'
,p_data_type=>'DESCRIPTION3'
,p_is_visible=>true
,p_heading=>'Description3'
,p_display_sequence=>70
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81765478147178327)
,p_name=>'MILESTONE_DESCRIPTION'
,p_data_type=>'MILESTONE_DESCRIPTION'
,p_is_visible=>true
,p_heading=>'Milestone description'
,p_display_sequence=>80
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81766041355178327)
,p_name=>'MILESTONE_DATE'
,p_data_type=>'MILESTONE_DATE'
,p_is_visible=>true
,p_heading=>'Milestone date'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81766557144178327)
,p_name=>'MILESTONE_STATUS'
,p_data_type=>'MILESTONE_STATUS'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81767038499178327)
,p_name=>'MILESTONE_START_DATE'
,p_data_type=>'MILESTONE_START_DATE'
,p_is_visible=>true
,p_heading=>'Start'
,p_display_sequence=>130
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81767535913178327)
,p_name=>'MILESTONE_OWNER'
,p_data_type=>'MILESTONE_OWNER'
,p_is_visible=>true
,p_heading=>'Owner(s)'
,p_display_sequence=>150
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(81768041949178327)
,p_name=>'AI_OPEN'
,p_data_type=>'AI_OPEN'
,p_is_visible=>true
,p_heading=>'Open Action Items'
,p_display_sequence=>170
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81769643850178327)
,p_name=>'Project Header'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>100
,p_region_css_classes=>'flex_projects'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.project,',
'    s.row_key,',
'    s.id,',
'    s.project_customer as customer,',
'    s.parent_project_id,',
'    decode(s.parent_project_id,null,null,',
'        (   select project',
'            from eba_proj_status p',
'            where p.id = s.parent_project_id )) parent_project_name,',
'    (   select count(*)',
'        from eba_proj_status p',
'        where p.parent_project_id = s.id ) child_projects,',
'    project_owner||',
'        decode(s.project_owner2,null,null,'', ''||project_owner2)||',
'        decode(s.project_owner3,null,null,'', ''||project_owner3)||',
'        decode(s.project_owner4,null,null,'', ''||project_owner4)||',
'        decode(s.project_owner5,null,null,'', ''||project_owner5)||',
'        decode(s.project_owner6,null,null,'', ''||project_owner6)||',
'        decode(s.project_owner7,null,null,'', ''||project_owner7)||',
'        decode(s.project_owner8,null,null,'', ''||project_owner8)||',
'        decode(s.project_owner9,null,null,'', ''||project_owner9)||',
'        decode(s.project_owner10,null,null,'', ''||project_owner10)||',
'        decode(s.project_owner11,null,null,'', ''||project_owner11)||',
'        decode(s.project_owner12,null,null,'', ''||project_owner12)',
'        as owner,',
'    s.tags,',
'    ''<a href="''||apex_escape.html(url)||''">''||apex_escape.html(substr(s.url,1,120))||''</a>'' url,',
'    s.description,',
'    --',
'    (   select category',
'        from eba_proj_status_cats pc',
'        where s.cat_id = pc.id ) category,',
'    trim(s.goal) as goal,',
'    ''created ''||apex_util.get_since(s.created)',
'        ||'' by ''||apex_escape.html(lower(s.created_by))',
'        ||''<br>last updated ''||apex_util.get_since(s.updated)',
'        ||'' by ''||apex_escape.html(lower(s.updated_by)) as history,',
'    apex_escape.html(nvl((  select status_short_desc',
'                            from eba_proj_status_codes c',
'                            where c.id = s.project_status),',
'                        ''unknown'')) project_status,',
'    apex_escape.html(nvl((  select cc.color_code',
'                            from eba_proj_color_codes cc',
'                            where c.color_code_id = cc.id),',
'                        ''#777'')) project_color,',
'    s.project_flex_n01,',
'    s.project_flex_n02,',
'    s.project_flex_n03,',
'    s.project_flex_n04,',
'    s.project_flex_d01,',
'    s.project_flex_d02,',
'    s.project_flex_d03,',
'    s.project_flex_d04,',
'    s.project_flex_01,',
'    s.project_flex_02,',
'    s.project_flex_03,',
'    s.project_flex_04,',
'    s.project_flex_05,',
'    s.project_flex_06,',
'    s.project_flex_07,',
'    s.project_flex_08,',
'    s.project_flex_clob,',
'    lower(s.updated_by)||'' ''||apex_util.get_since(s.updated) last_updated',
'from eba_proj_status s, eba_proj_status_codes c',
'where s.id = :P9999_ID',
'    and c.id = s.project_status(+)',
'order by 1',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47609590927858256)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81769984772178329)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>2
,p_column_heading=>'Project'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81770461046178329)
,p_query_column_id=>2
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>1
,p_column_heading=>'Key'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81770831068178329)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81771175352178329)
,p_query_column_id=>4
,p_column_alias=>'CUSTOMER'
,p_column_display_sequence=>7
,p_column_heading=>'Customer'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81771656811178329)
,p_query_column_id=>5
,p_column_alias=>'PARENT_PROJECT_ID'
,p_column_display_sequence=>12
,p_column_heading=>'Parent Project Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81772059665178329)
,p_query_column_id=>6
,p_column_alias=>'PARENT_PROJECT_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Parent Project'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::P200_ID:#PARENT_PROJECT_ID#'
,p_column_linktext=>'#PARENT_PROJECT_NAME#'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'ITEM_IS_NOT_NULL'
,p_display_when_condition=>'P9999_PARENT_PROJECT_ID'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81772460100178330)
,p_query_column_id=>7
,p_column_alias=>'CHILD_PROJECTS'
,p_column_display_sequence=>13
,p_column_heading=>'Child Projects'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81772794007178330)
,p_query_column_id=>8
,p_column_alias=>'OWNER'
,p_column_display_sequence=>5
,p_column_heading=>'Owner(s)'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81773192308178330)
,p_query_column_id=>9
,p_column_alias=>'TAGS'
,p_column_display_sequence=>11
,p_column_heading=>'Tags'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_proj_status s',
'where s.id = :P9999_ID and tags is not null'))
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81773573472178330)
,p_query_column_id=>10
,p_column_alias=>'URL'
,p_column_display_sequence=>14
,p_column_heading=>'URL'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_proj_status s',
'where s.id = :P9999_ID and url is not null'))
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81773974995178330)
,p_query_column_id=>11
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>9
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_proj_status s',
'where s.id = :P9999_ID and description is not null'))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81774418477178330)
,p_query_column_id=>12
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>6
,p_column_heading=>'Category'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81774818680178330)
,p_query_column_id=>13
,p_column_alias=>'GOAL'
,p_column_display_sequence=>10
,p_column_heading=>'Goal'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_proj_status s',
'where s.id = :P9999_ID and goal is not null'))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81775201643178330)
,p_query_column_id=>14
,p_column_alias=>'HISTORY'
,p_column_display_sequence=>15
,p_column_heading=>'History'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81775614748178332)
,p_query_column_id=>15
,p_column_alias=>'PROJECT_STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="proj-status-color" style="background-color: #PROJECT_COLOR#"></span><span class="proj-status-label">#PROJECT_STATUS#</span>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81776028036178332)
,p_query_column_id=>16
,p_column_alias=>'PROJECT_COLOR'
,p_column_display_sequence=>16
,p_column_heading=>'Project Color'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81776383858178332)
,p_query_column_id=>17
,p_column_alias=>'PROJECT_FLEX_N01'
,p_column_display_sequence=>17
,p_column_heading=>'What?'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81776855396178332)
,p_query_column_id=>18
,p_column_alias=>'PROJECT_FLEX_N02'
,p_column_display_sequence=>18
,p_column_heading=>'Quantity On Hand'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>'STATIC2(~,*):1*1~2*2'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81777191999178332)
,p_query_column_id=>19
,p_column_alias=>'PROJECT_FLEX_N03'
,p_column_display_sequence=>19
,p_column_heading=>'Project Flex N03'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_N03''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81777597106178332)
,p_query_column_id=>20
,p_column_alias=>'PROJECT_FLEX_N04'
,p_column_display_sequence=>20
,p_column_heading=>'Project Flex N04'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_N04''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81778044906178332)
,p_query_column_id=>21
,p_column_alias=>'PROJECT_FLEX_D01'
,p_column_display_sequence=>21
,p_column_heading=>'Birthday'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81778378471178332)
,p_query_column_id=>22
,p_column_alias=>'PROJECT_FLEX_D02'
,p_column_display_sequence=>22
,p_column_heading=>'Project Flex D02'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_D02''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81778847542178332)
,p_query_column_id=>23
,p_column_alias=>'PROJECT_FLEX_D03'
,p_column_display_sequence=>23
,p_column_heading=>'Project Flex D03'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_D03''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81779201587178332)
,p_query_column_id=>24
,p_column_alias=>'PROJECT_FLEX_D04'
,p_column_display_sequence=>24
,p_column_heading=>'Project Flex D04'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_D04''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81779623114178332)
,p_query_column_id=>25
,p_column_alias=>'PROJECT_FLEX_01'
,p_column_display_sequence=>25
,p_column_heading=>'Hello World'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81780006094178332)
,p_query_column_id=>26
,p_column_alias=>'PROJECT_FLEX_02'
,p_column_display_sequence=>26
,p_column_heading=>'Nickname'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81780457509178333)
,p_query_column_id=>27
,p_column_alias=>'PROJECT_FLEX_03'
,p_column_display_sequence=>27
,p_column_heading=>'Project Flex 03'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_03''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81780821330178333)
,p_query_column_id=>28
,p_column_alias=>'PROJECT_FLEX_04'
,p_column_display_sequence=>28
,p_column_heading=>'Project Flex 04'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_04''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81781244097178333)
,p_query_column_id=>29
,p_column_alias=>'PROJECT_FLEX_05'
,p_column_display_sequence=>29
,p_column_heading=>'Project Flex 05'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_05''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81781632227178333)
,p_query_column_id=>30
,p_column_alias=>'PROJECT_FLEX_06'
,p_column_display_sequence=>30
,p_column_heading=>'Project Flex 06'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_06''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81781979402178333)
,p_query_column_id=>31
,p_column_alias=>'PROJECT_FLEX_07'
,p_column_display_sequence=>31
,p_column_heading=>'Project Flex 07'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_07''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81782371981178333)
,p_query_column_id=>32
,p_column_alias=>'PROJECT_FLEX_08'
,p_column_display_sequence=>32
,p_column_heading=>'Project Flex 08'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_08''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81782767712178333)
,p_query_column_id=>33
,p_column_alias=>'PROJECT_FLEX_CLOB'
,p_column_display_sequence=>33
,p_column_heading=>'Project Flex Clob'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where flexible_table = ''EBA_PROJ_STATUS''',
'    and flexible_column = ''PROJECT_FLEX_CLOB''',
'    and active_yn = ''Y''',
'    and assigned_yn = ''Y'''))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81783193174178333)
,p_query_column_id=>34
,p_column_alias=>'LAST_UPDATED'
,p_column_display_sequence=>34
,p_column_heading=>'Last Updated'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81783662207178333)
,p_name=>'Links'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--inline:t-Report--rowHighlight'
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project_id,',
'    nvl(link_text, link_target) link_text,',
'    link_target link_target,',
'    lower(created_by) created_by,',
'    created,',
'    link_comments,',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = l.project_id) project',
'from EBA_PROJ_STATUS_LINKS l',
'where ( l.project_id = :P9999_ID ',
'        or (nvl(:P9999_INC_CHILD,''N'') = ''Y'' and ',
'            l.project_id in (select s.id ',
'                             from EBA_PROJ_STATUS s',
'                             where s.parent_project_id = :P9999_ID))',
'    )',
'order by l.created desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_PROJ_STATUS_LINKS l',
'where ( l.project_id = :P9999_ID ',
'        or (nvl(:P9999_INC_CHILD,''N'') = ''Y'' and ',
'            l.project_id in (select s.id ',
'                             from EBA_PROJ_STATUS s',
'                             where s.parent_project_id = :P9999_ID))',
'    )'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No links'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81784065046178333)
,p_query_column_id=>1
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Project ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81784393092178333)
,p_query_column_id=>2
,p_column_alias=>'LINK_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_link=>'#LINK_TARGET#'
,p_column_linktext=>'#LINK_TEXT#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81784812741178335)
,p_query_column_id=>3
,p_column_alias=>'LINK_TARGET'
,p_column_display_sequence=>4
,p_column_heading=>'Link Target'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81785228124178335)
,p_query_column_id=>4
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'Added By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81785630824178335)
,p_query_column_id=>5
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_column_heading=>'Date Added'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81786049360178335)
,p_query_column_id=>6
,p_column_alias=>'LINK_COMMENTS'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81786452989178335)
,p_query_column_id=>7
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P9999_INC_CHILD'
,p_display_when_condition2=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81787665045178341)
,p_name=>'Attachments'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--inline:t-Report--rowHighlight'
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.id,',
'    ''<img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="''',
'        ||decode(substr(upper(f.filename),-4),',
'            ''.PPT'', ''uFileIcon powerpoint'',',
'            ''.XLS'', ''uFileIcon excel'',',
'            ''.DOC'', ''uFileIcon word'',',
'            ''.PDF'', ''uFileIcon pdf'',',
'            ''.GIF'', ''uFileIcon image'',',
'            ''.PNG'', ''uFileIcon image'',',
'            ''.JPG'', ''uFileIcon image'',',
'            decode(substr(upper(f.filename),-5),',
'                ''.PPTX'', ''uFileIcon powerpoint'',',
'                ''.XLSX'', ''uFileIcon excel'',',
'                ''.DOCX'', ''uFileIcon word'',',
'                ''.TIFF'', ''uFileIcon image'',',
'                    ''uFileIcon generic''))',
'        ||''" />'' as image,',
'    f.filename,',
'    apex_util.get_blob_file_src(''P43_FILE_BLOB'',f.id) as file_link,',
'    f.file_mimetype,',
'    f.file_charset,',
'    apex_util.filesize_mask(dbms_lob.getlength(file_blob)) f_len,',
'    decode(sign(length(f.file_comments)-100),',
'                1, substr(f.file_comments,1,100)||''...'',',
'                f.file_comments) file_comments,',
'    f.created,',
'    f.updated,',
'    lower(f.created_by) created_by,',
'    (   select project',
'        from eba_proj_status s',
'        where s.id = f.project_id ) project,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':106:''||:APP_SESSION||'':::106:P106_ID,P106_PROJECT_ID:''||f.id||'',''||f.project_id) doc_link',
'from EBA_PROJ_STATUS_FILES f',
'where ( f.project_id = :P9999_ID ',
'        or ( nvl(:P9999_INC_CHILD,''N'') = ''Y''',
'            and  f.project_id in (select s.id ',
'                                  from EBA_PROJ_STATUS s',
'                                  where s.parent_project_id = :P9999_ID))',
'    )',
'order by f.created desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_PROJ_STATUS_FILES f',
'where ( f.project_id = :P9999_ID ',
'        or ( nvl(:P9999_INC_CHILD,''N'') = ''Y''',
'            and  f.project_id in (select s.id ',
'                                  from EBA_PROJ_STATUS s',
'                                  where s.parent_project_id = :P9999_ID))',
'    )'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No attachments'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>20
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81788015867178341)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81788412027178341)
,p_query_column_id=>2
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81788820345178341)
,p_query_column_id=>3
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_link=>'#FILE_LINK#'
,p_column_linktext=>'#FILENAME#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81789212102178341)
,p_query_column_id=>4
,p_column_alias=>'FILE_LINK'
,p_column_display_sequence=>12
,p_column_heading=>'File Link'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81789588333178341)
,p_query_column_id=>5
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>5
,p_column_heading=>'File Mimetype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81789994162178346)
,p_query_column_id=>6
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>6
,p_column_heading=>'File Charset'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81790408978178346)
,p_query_column_id=>7
,p_column_alias=>'F_LEN'
,p_column_display_sequence=>7
,p_column_heading=>'Size'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81790819893178346)
,p_query_column_id=>8
,p_column_alias=>'FILE_COMMENTS'
,p_column_display_sequence=>8
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81791233466178346)
,p_query_column_id=>9
,p_column_alias=>'CREATED'
,p_column_display_sequence=>10
,p_column_heading=>'Date Added'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81791647636178346)
,p_query_column_id=>10
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>11
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81792007161178346)
,p_query_column_id=>11
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Added By'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81792404096178346)
,p_query_column_id=>12
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>3
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P9999_INC_CHILD'
,p_display_when_condition2=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81792814742178346)
,p_query_column_id=>13
,p_column_alias=>'DOC_LINK'
,p_column_display_sequence=>13
,p_column_heading=>'View'
,p_use_as_row_header=>'N'
,p_column_link=>'#DOC_LINK#'
,p_column_linktext=>'View'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81794058799178347)
,p_name=>'Updates'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''' COMMENT_MODIFIERS, --use is-systemMessage for gray look',
'    t.status_update_type||decode(t.is_active_yn,''Y'','''','' (inactive)'') note_type,',
'    eba_proj_fw.format_status_update( ',
'      u.status_update,',
'      ''Y'',',
'      :APP_ID,',
'      :APP_SESSION,',
'      u.project_id,',
'      u.row_key,',
'      ''N'',',
'      1500,',
'      u.id ) COMMENT_TEXT,',
'    '''' attribute_1,',
'    '''' attribute_2,',
'    '''' attribute_3,',
'    '''' attribute_4,',
'    lower(u.update_owner) user_name,',
'    apex_util.get_since(u.update_date) COMMENT_DATE,',
'    ora_hash(u.created_by,29) icon_modifier,',
'    --substr(u.created_by,0,2) user_icon,',
'    --',
'    upper(',
'          decode(instr(replace(u.created_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(u.created_by,1,2),',
'                 substr(u.created_by,1,1)||substr(u.created_by,instr(replace(u.created_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'    --',
'    ''Edit'' actions,',
'    u.id update_id,',
'    u.update_date',
'from EBA_PROJ_STATUS_UPDATES u,',
'    EBA_PROJ_STATUS_UPDATE_TYPES t',
'where u.update_type = t.id(+)',
'    and ( u.project_id = :P9999_ID ',
'        or (nvl(:P9999_INC_CHILD,''N'') = ''Y''',
'            and u.project_id in (select s.id ',
'                                 from EBA_PROJ_STATUS s',
'                                 where s.parent_project_id = :P9999_ID))',
'    )',
'union all',
'select ''is-systemMessage'' COMMENT_MODIFIERS, --use is-systemMessage for gray look',
'    ''Change Log'' note_type,',
'    replace(initcap(replace(replace(f.column_name,''_ID'',null),''_'','' '')), chr(10),''<br>'') COMMENT_TEXT,',
'    '' changed from <span class="t-Comments-text--prevValue">''||',
'    apex_escape.html(substr(f.old_value,1,255))||''</span>'' attribute_1,',
'    '' to <span class="t-Comments-text--newValue">''||',
'    apex_escape.html(substr(f.new_value,1,255))||''</span>'' attribute_2,',
'    '' '' attribute_3,',
'    '' '' attribute_4,',
'    lower(f.changed_by) user_name,',
'    apex_util.get_since(f.change_date) COMMENT_DATE,',
'    ora_hash(f.changed_by,29) icon_modifier,',
'    --',
'    upper(',
'          decode(instr(replace(f.changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(f.changed_by,1,2),',
'                 substr(f.changed_by,1,1)||substr(f.changed_by,instr(replace(f.changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'    --',
'    '' '' actions,',
'    null update_id,',
'    f.change_date',
'from eba_proj_history f',
'where component_id = :P9999_ID ',
'union all',
'select ''is-systemMessage'' COMMENT_MODIFIERS, --use is-systemMessage for gray look',
'    ai.action note_type,',
'    replace(initcap(replace(replace(f.column_name,''_ID'',null),''_'','' '')),chr(10),''<br>'') COMMENT_TEXT,',
'    '' changed from <span class="t-Comments-text--prevValue">''||',
'    apex_escape.html(substr(f.old_value,1,255))||''</span>'' attribute_1,',
'    '' to <span class="t-Comments-text--newValue">''||',
'    apex_escape.html(substr(f.new_value,1,255))||''</span>'' attribute_2,',
'    '' '' attribute_3,',
'    '' '' attribute_4,',
'    lower(f.changed_by) user_name,',
'    apex_util.get_since(f.change_date) comment_date,',
'    ora_hash(f.changed_by,29) icon_modifier,',
'        upper(',
'          decode(instr(replace(f.changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(f.changed_by,1,2),',
'                 substr(f.changed_by,1,1)||substr(f.changed_by,instr(replace(f.changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'    '' '' actions,',
'    null update_id,',
'    f.change_date',
'from eba_proj_history f,',
'    eba_proj_status_ais ai',
'where f.table_name = ''STATUS_AIS''',
'    and f.component_id = ai.id',
'    and ai.project_id = :P9999_ID ',
'union all',
'select ''is-systemMessage'' COMMENT_MODIFIERS, --use is-systemMessage for gray look',
'    ms.milestone_name note_type,',
'    replace(initcap(replace(replace(f.column_name,''_ID'',null),''_'','' '')),chr(10),''<br>'') COMMENT_TEXT,',
'    '' changed from <span class="t-Comments-text--prevValue">''||',
'    apex_escape.html(substr(f.old_value,1,255))||''</span>'' attribute_1,',
'    '' to <span class="t-Comments-text--newValue">''||',
'    apex_escape.html(substr(f.new_value,1,255))||''</span>'' attribute_2,',
'    '' '' attribute_3,',
'    '' '' attribute_4,',
'    lower(f.changed_by) user_name,',
'    apex_util.get_since(f.change_date) COMMENT_DATE,',
'    ora_hash(f.CHANGED_BY ,29) icon_modifier,',
'    upper(',
'          decode(instr(replace(f.changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(f.changed_by,1,2),',
'                 substr(f.changed_by,1,1)||substr(f.changed_by,instr(replace(f.changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'    '' '' actions,',
'    null update_id,',
'    f.change_date',
'from eba_proj_history f,',
'    eba_proj_status_ms ms',
'where f.table_name = ''STATUS_MS''',
'    and f.component_id = ms.id',
'    and ms.project_id = :P9999_ID ',
'order by 14 desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 x',
'from EBA_PROJ_STATUS_UPDATES u,',
'    EBA_PROJ_STATUS_UPDATE_TYPES t',
'where u.update_type = t.id(+)',
'    and ( u.project_id = :P9999_ID ',
'        or (nvl(:P9999_INC_CHILD,''N'') = ''Y''',
'            and u.project_id in (select s.id ',
'                                 from EBA_PROJ_STATUS s',
'                                 where s.parent_project_id = :P9999_ID))',
'    )',
'union all',
'select 1 x',
'from eba_proj_history f',
'where component_id = :P9999_ID ',
'union all',
'select 1 x',
'from eba_proj_history f,',
'    eba_proj_status_ais ai',
'where f.table_name = ''STATUS_AIS''',
'    and f.component_id = ai.id',
'    and ai.project_id = :P9999_ID ',
'union all',
'select 1 x',
'from eba_proj_history f,',
'    eba_proj_status_ms ms',
'where f.table_name = ''STATUS_MS''',
'    and f.component_id = ms.id',
'    and ms.project_id = :P9999_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47605655362858234)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No project updates'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81794384212178349)
,p_query_column_id=>1
,p_column_alias=>'COMMENT_MODIFIERS'
,p_column_display_sequence=>14
,p_column_heading=>'Comment modifiers'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81794803109178350)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Note Type'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81795176410178352)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>8
,p_column_heading=>'Comment text'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81795629477178352)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81796026236178352)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81796443234178354)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81796839812178355)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81797253976178357)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81797571254178358)
,p_query_column_id=>9
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Comment date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81797990657178358)
,p_query_column_id=>10
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>11
,p_column_heading=>'Icon modifier'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'u-Color-#ICON_MODIFIER#-BG--txt u-Color-#ICON_MODIFIER#-FG--bg'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81798414059178361)
,p_query_column_id=>11
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>12
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81798824193178364)
,p_query_column_id=>12
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>13
,p_column_heading=>'Actions'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_ID:#UPDATE_ID#'
,p_column_linktext=>'#ACTIONS#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81799193976178364)
,p_query_column_id=>13
,p_column_alias=>'UPDATE_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81799619905178364)
,p_query_column_id=>14
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Update Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81801241191178366)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81805583937178369)
,p_plug_name=>'Add Link'
,p_region_name=>'add_link_modal'
,p_region_template_options=>'#DEFAULT#:js-draggable:js-modal:js-resizable:js-dialog-size600x400:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>180
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81808032206178371)
,p_plug_name=>'Add Update'
,p_region_name=>'add_update_modal'
,p_region_template_options=>'#DEFAULT#:js-draggable:js-modal:js-resizable:js-dialog-size600x400:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>190
,p_plug_display_point=>'REGION_POSITION_04'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81810014642178374)
,p_plug_name=>'Add Attachment'
,p_region_name=>'add_file_modal'
,p_region_template_options=>'#DEFAULT#:js-draggable:js-modal:js-resizable:js-dialog-size600x400:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>200
,p_plug_display_point=>'REGION_POSITION_04'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81753754941178322)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_api.id(81753291791178322)
,p_button_name=>'previous'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous Project'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:9999:P9999_ID:&P9999_PREVIOUS_ID.'
,p_button_condition=>'P9999_PREVIOUS_ID'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81754151187178322)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_api.id(81753291791178322)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Next Project'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:9999:P9999_ID:&P9999_NEXT_ID.'
,p_button_condition=>'P9999_NEXT_ID'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81806040819178369)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_api.id(81805583937178369)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81808427960178371)
,p_button_sequence=>270
,p_button_plug_id=>wwv_flow_api.id(81808032206178371)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81810376802178374)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_api.id(81810014642178374)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81754523118178322)
,p_button_sequence=>240
,p_button_plug_id=>wwv_flow_api.id(81753291791178322)
,p_button_name=>'CREATE_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Create Project'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81806396686178371)
,p_button_sequence=>260
,p_button_plug_id=>wwv_flow_api.id(81805583937178369)
,p_button_name=>'ADD_LINK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Link'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status',
'where id = :P9999_ID',
'    and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'        or (upper(project_owner) = upper(:APP_USER)',
'            or upper(project_owner2) = upper(:APP_USER)',
'            or upper(project_owner3) = upper(:APP_USER)',
'            or upper(project_owner4) = upper(:APP_USER)',
'            or upper(project_owner5) = upper(:APP_USER)',
'            or upper(project_owner6) = upper(:APP_USER)',
'            or upper(project_owner7) = upper(:APP_USER)',
'            or upper(project_owner8) = upper(:APP_USER)',
'            or upper(project_owner9) = upper(:APP_USER)',
'            or upper(project_owner10) = upper(:APP_USER)',
'            or upper(project_owner11) = upper(:APP_USER)',
'            or upper(project_owner12) = upper(:APP_USER)))'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81808847999178371)
,p_button_sequence=>280
,p_button_plug_id=>wwv_flow_api.id(81808032206178371)
,p_button_name=>'ADD_UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Update'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81810813317178374)
,p_button_sequence=>300
,p_button_plug_id=>wwv_flow_api.id(81810014642178374)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status',
'where id = :P9999_ID',
'    and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'        or (upper(project_owner) = upper(:APP_USER)',
'            or upper(project_owner2) = upper(:APP_USER)',
'            or upper(project_owner3) = upper(:APP_USER)',
'            or upper(project_owner4) = upper(:APP_USER)',
'            or upper(project_owner5) = upper(:APP_USER)',
'            or upper(project_owner6) = upper(:APP_USER)',
'            or upper(project_owner7) = upper(:APP_USER)',
'            or upper(project_owner8) = upper(:APP_USER)',
'            or upper(project_owner9) = upper(:APP_USER)',
'            or upper(project_owner10) = upper(:APP_USER)',
'            or upper(project_owner11) = upper(:APP_USER)',
'            or upper(project_owner12) = upper(:APP_USER)))'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81768425394178327)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(81762010587178325)
,p_button_name=>'GAANT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Gaant'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68:P68_PROJECT:&P9999_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81768833785178327)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(81762010587178325)
,p_button_name=>'ADDMILESTONE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Add Milestone'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:RP,48:P48_PROJECT_ID,LAST_VIEW:&P9999_ID.,200'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status',
'where id = :P9999_ID',
'    and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'        or (upper(project_owner) = upper(:APP_USER)',
'            or upper(project_owner2) = upper(:APP_USER)',
'            or upper(project_owner3) = upper(:APP_USER)',
'            or upper(project_owner4) = upper(:APP_USER)',
'            or upper(project_owner5) = upper(:APP_USER)',
'            or upper(project_owner6) = upper(:APP_USER)',
'            or upper(project_owner7) = upper(:APP_USER)',
'            or upper(project_owner8) = upper(:APP_USER)',
'            or upper(project_owner9) = upper(:APP_USER)',
'            or upper(project_owner10) = upper(:APP_USER)',
'            or upper(project_owner11) = upper(:APP_USER)',
'            or upper(project_owner12) = upper(:APP_USER)))'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81769170682178327)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(81762010587178325)
,p_button_name=>'VIEWMILESTONES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'View Milestones'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:34:P34_ID,LAST_VIEW:&P9999_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81760865880178325)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(81754927123178322)
,p_button_name=>'PUSH_AI'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Push'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_ID:&P9999_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked'' from eba_proj_status',
'               where id = :P9999_ID',
'                   and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'                       or (upper(project_owner) = upper(:APP_USER)',
'                       or upper(project_owner2) = upper(:APP_USER)',
'                       or upper(project_owner3) = upper(:APP_USER)',
'                       or upper(project_owner4) = upper(:APP_USER)',
'                       or upper(project_owner5) = upper(:APP_USER)',
'                       or upper(project_owner6) = upper(:APP_USER)',
'                       or upper(project_owner7) = upper(:APP_USER)',
'                       or upper(project_owner8) = upper(:APP_USER)',
'                       or upper(project_owner9) = upper(:APP_USER)',
'                       or upper(project_owner10) = upper(:APP_USER)',
'                       or upper(project_owner11) = upper(:APP_USER)',
'                       or upper(project_owner12) = upper(:APP_USER)))'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81761214512178325)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(81754927123178322)
,p_button_name=>'ADDACTIONITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Add Action Item'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:RP,73:P73_PROJECT_ID,LAST_VIEW:&P9999_ID.,200'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status',
'where id = :P9999_ID',
'    and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'        or (upper(project_owner) = upper(:APP_USER)',
'            or upper(project_owner2) = upper(:APP_USER)',
'            or upper(project_owner3) = upper(:APP_USER)',
'            or upper(project_owner4) = upper(:APP_USER)',
'            or upper(project_owner5) = upper(:APP_USER)',
'            or upper(project_owner6) = upper(:APP_USER)',
'            or upper(project_owner7) = upper(:APP_USER)',
'            or upper(project_owner8) = upper(:APP_USER)',
'            or upper(project_owner9) = upper(:APP_USER)',
'            or upper(project_owner10) = upper(:APP_USER)',
'            or upper(project_owner11) = upper(:APP_USER)',
'            or upper(project_owner12) = upper(:APP_USER)))'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81761597242178325)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(81754927123178322)
,p_button_name=>'VIEWACTIONITEMS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'View Action Items'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:55:P55_ID,LAST_VIEW:&P9999_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81800053435178364)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(81794058799178347)
,p_button_name=>'VIEW_UPDATE_DETAIL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'View Update Detail'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.::P129_ID,P129_PROJECT_ID:&P9999_LAST_UPD_ID.,&P9999_ID.'
,p_button_condition=>'P9999_LAST_UPD_ID'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-eye'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81800420284178364)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(81794058799178347)
,p_button_name=>'ADDSTATUSUPDATE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Add Project Update'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:openModal(''add_update_modal'')'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status',
'where id = :P9999_ID',
'    and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'        or (upper(project_owner) = upper(:APP_USER)',
'            or upper(project_owner2) = upper(:APP_USER)',
'            or upper(project_owner3) = upper(:APP_USER)',
'            or upper(project_owner4) = upper(:APP_USER)',
'            or upper(project_owner5) = upper(:APP_USER)',
'            or upper(project_owner6) = upper(:APP_USER)',
'            or upper(project_owner7) = upper(:APP_USER)',
'            or upper(project_owner8) = upper(:APP_USER)',
'            or upper(project_owner9) = upper(:APP_USER)',
'            or upper(project_owner10) = upper(:APP_USER)',
'            or upper(project_owner11) = upper(:APP_USER)',
'            or upper(project_owner12) = upper(:APP_USER)))'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81800775381178364)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(81794058799178347)
,p_button_name=>'VIEWSTATUSUPDATES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'View Project Updates'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:RP,75:P75_PROJECT,LAST_VIEW:&P9999_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81786787967178335)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(81783662207178333)
,p_button_name=>'ADD_LINK'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Add Link'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:openModal(''add_link_modal'')'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status',
'where id = :P9999_ID',
'    and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'        or (upper(project_owner) = upper(:APP_USER)',
'            or upper(project_owner2) = upper(:APP_USER)',
'            or upper(project_owner3) = upper(:APP_USER)',
'            or upper(project_owner4) = upper(:APP_USER)',
'            or upper(project_owner5) = upper(:APP_USER)',
'            or upper(project_owner6) = upper(:APP_USER)',
'            or upper(project_owner7) = upper(:APP_USER)',
'            or upper(project_owner8) = upper(:APP_USER)',
'            or upper(project_owner9) = upper(:APP_USER)',
'            or upper(project_owner10) = upper(:APP_USER)',
'            or upper(project_owner11) = upper(:APP_USER)',
'            or upper(project_owner12) = upper(:APP_USER)))'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81787222829178335)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(81783662207178333)
,p_button_name=>'VIEWLINKS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'View Links'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:67:P67_ID,LAST_VIEW:&P9999_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81793199292178346)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(81787665045178341)
,p_button_name=>'ADDATTACHMENT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:openModal(''add_file_modal'')'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status',
'where id = :P9999_ID',
'    and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'        or (upper(project_owner) = upper(:APP_USER)',
'            or upper(project_owner2) = upper(:APP_USER)',
'            or upper(project_owner3) = upper(:APP_USER)',
'            or upper(project_owner4) = upper(:APP_USER)',
'            or upper(project_owner5) = upper(:APP_USER)',
'            or upper(project_owner6) = upper(:APP_USER)',
'            or upper(project_owner7) = upper(:APP_USER)',
'            or upper(project_owner8) = upper(:APP_USER)',
'            or upper(project_owner9) = upper(:APP_USER)',
'            or upper(project_owner10) = upper(:APP_USER)',
'            or upper(project_owner11) = upper(:APP_USER)',
'            or upper(project_owner12) = upper(:APP_USER)))'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81793597209178347)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_api.id(81787665045178341)
,p_button_name=>'VIEWATTACHMENTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'View Attachments'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66:P66_ID,LAST_VIEW:&P9999_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81747305798178313)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(81744623337178304)
,p_button_name=>'ADDSTATUSUPDATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Add Status Report'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:116:P116_PROJECT_ID,LAST_VIEW:&P9999_ID.,200'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status',
'where id = :P9999_ID',
'    and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'        or (upper(project_owner) = upper(:APP_USER)',
'            or upper(project_owner2) = upper(:APP_USER)',
'            or upper(project_owner3) = upper(:APP_USER)',
'            or upper(project_owner4) = upper(:APP_USER)',
'            or upper(project_owner5) = upper(:APP_USER)',
'            or upper(project_owner6) = upper(:APP_USER)',
'            or upper(project_owner7) = upper(:APP_USER)',
'            or upper(project_owner8) = upper(:APP_USER)',
'            or upper(project_owner9) = upper(:APP_USER)',
'            or upper(project_owner10) = upper(:APP_USER)',
'            or upper(project_owner11) = upper(:APP_USER)',
'            or upper(project_owner12) = upper(:APP_USER)))'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81747745941178313)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_api.id(81744623337178304)
,p_button_name=>'VIEWSTATUSUPDATES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'View Status Reports'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:117:&SESSION.::&DEBUG.:RP,117:P117_PROJECT,LAST_VIEW:&P9999_ID.,200'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81752075044178321)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_api.id(81751734785178321)
,p_button_name=>'ADD_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Add Project'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_PARENT_PROJECT_ID:&P9999_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status',
'where id = :P9999_ID',
'    and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'        or (upper(project_owner) = upper(:APP_USER)',
'            or upper(project_owner2) = upper(:APP_USER)',
'            or upper(project_owner3) = upper(:APP_USER)',
'            or upper(project_owner4) = upper(:APP_USER)',
'            or upper(project_owner5) = upper(:APP_USER)',
'            or upper(project_owner6) = upper(:APP_USER)',
'            or upper(project_owner7) = upper(:APP_USER)',
'            or upper(project_owner8) = upper(:APP_USER)',
'            or upper(project_owner9) = upper(:APP_USER)',
'            or upper(project_owner10) = upper(:APP_USER)',
'            or upper(project_owner11) = upper(:APP_USER)',
'            or upper(project_owner12) = upper(:APP_USER)))'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81812686987178382)
,p_button_sequence=>10
,p_button_name=>'view_microsite'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Microsite'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:85:P85_ID:&P9999_ID.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81814287040178382)
,p_button_sequence=>20
,p_button_name=>'printable_summary'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Print'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'javascript:popUpNamed(''f?p=&APP_ID.:112:&APP_SESSION.:::112:P112_ID:&P9999_ID.'',''Project Details'');'
,p_button_condition=>'select 1 from EBA_PROJ_PREFERENCES where preference_name = ''EMAIL_FROM'' and preference_value is not null and instr(preference_value,''@'') > 0 and instr(preference_value,''.'') > 0'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81813131933178382)
,p_button_sequence=>30
,p_button_name=>'Follow'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Follow'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Followed''',
'from eba_proj_status_favorites',
'where user_name = upper(:APP_USER)',
'    and content_id = :P9999_ID',
'    and content_type = ''PROJECT'''))
,p_button_condition_type=>'NEVER'
,p_button_cattributes=>'title="Click to follow"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81813534494178382)
,p_button_sequence=>40
,p_button_name=>'Unfollow'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Followed'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Followed''',
'from eba_proj_status_favorites',
'where user_name = upper(:APP_USER)',
'    and content_id = :P9999_ID',
'    and content_type = ''PROJECT'''))
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-check'
,p_button_cattributes=>'title="Click to unfollow"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(81813946525178382)
,p_button_sequence=>50
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Project'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_ID:&P9999_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''unlocked''',
'from eba_proj_status',
'where id = :P9999_ID',
'    and (nvl(lockdown_to_owners_yn,''N'') = ''N''',
'        or (upper(project_owner) = upper(:APP_USER)',
'            or upper(project_owner2) = upper(:APP_USER)',
'            or upper(project_owner3) = upper(:APP_USER)',
'            or upper(project_owner4) = upper(:APP_USER)',
'            or upper(project_owner5) = upper(:APP_USER)',
'            or upper(project_owner6) = upper(:APP_USER)',
'            or upper(project_owner7) = upper(:APP_USER)',
'            or upper(project_owner8) = upper(:APP_USER)',
'            or upper(project_owner9) = upper(:APP_USER)',
'            or upper(project_owner10) = upper(:APP_USER)',
'            or upper(project_owner11) = upper(:APP_USER)',
'            or upper(project_owner12) = upper(:APP_USER)))'))
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(81818831739178389)
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 30-APR-2012 13:01 by CBCHO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81801646458178366)
,p_name=>'P9999_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(81801241191178366)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81802043705178369)
,p_name=>'P9999_SHOW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(81801241191178366)
,p_item_default=>'PARENT'
,p_source=>'PARENT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81802389661178369)
,p_name=>'P9999_PROJECT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(81801241191178366)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ps.project',
'from eba_proj_status ps',
'where ps.id = :P9999_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81802856594178369)
,p_name=>'P9999_PARENT_PROJECT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(81801241191178366)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select parent_project_id',
'from eba_proj_status s',
'where id = :P9999_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81803195754178369)
,p_name=>'P9999_ROW_KEY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(81801241191178366)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select row_key',
'from eba_proj_status',
'where id = :P9999_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81803660665178369)
,p_name=>'P9999_INC_CHILD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(81801241191178366)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'U'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81804011508178369)
,p_name=>'P9999_LAST_UPD_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(81801241191178366)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81804430664178369)
,p_name=>'P9999_NEXT_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(81801241191178366)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81804800222178369)
,p_name=>'P9999_PREVIOUS_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(81801241191178366)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81806864343178371)
,p_name=>'P9999_LINK_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(81805583937178369)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81807252720178371)
,p_name=>'P9999_LINK_TARGET'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(81805583937178369)
,p_prompt=>'Link Target'
,p_source=>'http://'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81807640910178371)
,p_name=>'P9999_LINK_COMMENTS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(81805583937178369)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81809229003178371)
,p_name=>'P9999_UPDATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(81808032206178371)
,p_prompt=>'Update'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>32000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81809593673178371)
,p_name=>'P9999_UPDATE_TYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(81808032206178371)
,p_prompt=>'Type'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id',
'from EBA_PROJ_STATUS_UPDATE_TYPES',
'where is_active_yn = ''Y''',
'and status_update_type = ''Status'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'UPDATE TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status_update_type d, id r',
'from   EBA_PROJ_STATUS_UPDATE_TYPES',
'where is_active_yn = ''Y''',
'order by display_sequence'))
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'5'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81811247480178374)
,p_name=>'P9999_FILE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(81810014642178374)
,p_prompt=>'File'
,p_post_element_text=>'<p><em>Attachments must be under 15M in size.</em></p>'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'WWV_FLOW_FILES'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81811589248178374)
,p_name=>'P9999_FILE_COMMENTS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(81810014642178374)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81812065238178374)
,p_name=>'P9999_FILE_TAGS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(81810014642178374)
,p_prompt=>'Tags'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.TAGS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_proj_tags_type_sum',
' where content_type = ''FILE''',
' order by 1'))
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(81814789960178383)
,p_computation_sequence=>10
,p_computation_item=>'P9999_PROJECT_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ps.project',
'from eba_proj_status ps',
'where ps.id = :P9999_ID'))
,p_computation_error_message=>'Unable to determine project name'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(81815234117178385)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'200'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81817902973178389)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add links'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(:P9999_LINK_TARGET,''http://'') <> ''http://'' then',
'    insert into EBA_PROJ_STATUS_LINKS ',
'        (PROJECT_ID, LINK_TEXT, link_target, LINK_COMMENTS) ',
'    values',
'        (:P9999_ID, nvl(:P9999_LINK_NAME,:P9999_LINK_TARGET), :P9999_LINK_TARGET,:P9999_LINK_COMMENTS);',
'    :P9999_LINK_TARGET := null;',
'    :P9999_LINK_NAME := null;',
'    :P9999_LINK_COMMENTS := null;',
'else',
'    raise_application_error(-20354,''Invalid URL'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2680775077059957659)
,p_process_success_message=>'Link added'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81818342964178389)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into EBA_PROJ_STATUS_UPDATES ',
'(project_id, status_update, update_type, include_on_status_rpt)',
'values ',
'(:P9999_ID, :P9999_UPDATE, :P9999_UPDATE_TYPE, ''Y'');',
'',
':P9999_UPDATE := null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2680775781477977912)
,p_process_success_message=>'Updated added.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81815505402178385)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add file'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_attachment_id EBA_PROJ_STATUS_FILES.ID%type;',
'  l_attachment    EBA_PROJ_STATUS_FILES.FILE_BLOB%type;',
'  l_filename      EBA_PROJ_STATUS_FILES.FILENAME%type;',
'  l_mimetype      EBA_PROJ_STATUS_FILES.FILE_MIMETYPE%type;',
'  l_charset       EBA_PROJ_STATUS_FILES.FILE_CHARSET%type;',
'begin',
'  -- Get the data we need to insert into EBA_PROJ_STATUS_FILES with',
'  begin',
'    select f.blob_content,',
'           f.filename,',
'           f.mime_type,',
'           nvl(f.file_charset, f.dad_charset)',
'      into l_attachment,',
'           l_filename,',
'           l_mimetype,',
'           l_charset',
'      from wwv_flow_files f',
'     where f.name = :P9999_FILE;',
'  exception',
'    when no_data_found then',
'      l_attachment := null;',
'  end;',
'',
'  if l_attachment is not null then',
'    insert into EBA_PROJ_STATUS_FILES',
'    (',
'      id,',
'      project_id,',
'      filename,',
'      file_blob,',
'      file_mimetype,',
'      file_charset,',
'      file_comments,',
'      tags',
'    )',
'    values',
'    (',
'      l_attachment_id,',
'      :P9999_ID,',
'      l_filename,',
'      l_attachment,',
'      l_mimetype,',
'      l_charset,',
'      :P9999_FILE_COMMENTS,',
'      :P9999_FILE_TAGS) returning id into l_attachment_id;',
'',
'    delete from wwv_flow_files where name = :P9999_FILE;',
'',
'    :P9999_FILE_TAGS := null;',
'    :P9999_FILE  := null;',
'    :P9999_FILE_COMMENTS := null;',
'  end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2680775997060982428)
,p_process_success_message=>'Attachment added'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81815935305178389)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'follow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into eba_proj_status_favorites dest',
'using (',
'    select upper(:APP_USER) user_name, :P9999_ID content_id, ''PROJECT'' content_type',
'    from dual',
'    ) src',
'on ( dest.user_name = src.user_name and dest.content_id = src.content_id and dest.content_type = src.content_type )',
'when not matched then',
'    insert (dest.user_name, dest.content_id, dest.content_type)',
'    values (src.user_name, src.content_id, src.content_type);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(81813131933178382)
,p_process_success_message=>'Following project.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81817475905178389)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'unfollow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from eba_proj_status_favorites',
'where user_name = upper(:APP_USER)',
'    and content_id = :P9999_ID',
'    and content_type = ''PROJECT'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(81813534494178382)
,p_process_success_message=>'No longer following project.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81816344488178389)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'count clicks'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into EBA_PROJ_STATUS_CLICKS (project_id) values (:P9999_ID);',
'delete from EBA_PROJ_STATUS_CLICKS where VIEW_TIMESTAMP < (sysdate - 90);',
'commit;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81816684311178389)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set next and previous'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_NEXT_ID := 0;',
':P9999_PREVIOUS_ID := 0;',
'',
'for c1 in (',
'select id ',
'from EBA_PROJ_STATUS s',
'where PROJECT > ',
'(select PROJECT from EBA_PROJ_STATUS x where x.id = :P9999_ID) ',
'order by project) loop',
':P9999_NEXT_ID := c1.id;',
'exit;',
'end loop;',
'',
'for c1 in (',
'select id ',
'from EBA_PROJ_STATUS s',
'where PROJECT < ',
'(select PROJECT from EBA_PROJ_STATUS x where x.id = :P9999_ID) ',
'order by project desc) loop',
':P9999_PREVIOUS_ID := c1.id;',
'exit;',
'end loop;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(81817077938178389)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set P9999_LAST_UPD_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_LAST_UPD_ID := 0;',
'',
'for c1 in (',
'    select id',
'from EBA_PROJ_STATUS_UPDATES u',
'where u.project_id = :P9999_ID ',
'        or (nvl(:P9999_INC_CHILD,''N'') = ''Y''',
'            and u.project_id in (select s.id ',
'                                 from EBA_PROJ_STATUS s',
'                                 where s.parent_project_id = :P9999_ID))',
'order by UPDATE_DATE desc',
'    ) loop',
':P9999_LAST_UPD_ID := c1.id;',
'exit;',
'end loop;',
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
