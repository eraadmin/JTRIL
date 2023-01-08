prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'&APPLICATION_TITLE.: Project Tracking'
,p_step_title=>'&APPLICATION_TITLE.: Project Tracking'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(694590486541516341)
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'detailedStatusListToolTip();',
'$x(''P10_SEARCH'').focus();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.uRegion.scrollable-region>.uRegionContent {',
'box-sizing: border-box;',
'height: 360px;',
'overflow: auto;',
'}',
'#warningmsg {',
'    width: auto;',
'    position: static;',
'    margin: 0 0 8px 0;',
'    border: 1px solid #FFDE6D;',
'    border-radius: 3px;',
'    background: #FFFAE8;',
'    box-shadow: none;',
'}',
'#warningmsg div.uMessageText {',
'width: auto;',
'padding: 0;',
'}',
'#warningmsg .uWarningIcon {',
'margin-right: 8px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<link rel="stylesheet" href="#IMAGE_PREFIX#eba/css/eba_header.css" type="text/css" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#eba/css/eba_search_filter.css" type="text/css" />',
'<style type="text/css" media="all">',
'table.uReport > tbody > tr > td.rowHeader {font-weight: bold; padding-left: 8px;}',
'div.body_inner div.region div.content_block{height:200px;overflow:scroll;overflow-y:scroll;overflow-x:hidden;}',
'.tbl-main .rounded-corner-region .rc-body-r{height:170px !important;}',
'',
'#MILESTONES .rc-body-r{height:390px !important;}',
'',
'span.uButtonContainer a {padding: 7px 7px 7px 0; display: inline-block;}',
'ul.ebaStatusList {margin: 0 !important;}',
'</style>',
'',
'<link rel="stylesheet" href="#IMAGE_PREFIX#eba/css/eba_status_list.css" type="text/css" charset="utf-8">',
'<script src="#IMAGE_PREFIX#eba/js/eba_status_list.js" type="text/javascript" charset="utf-8"></script>'))
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51618491755893952)
,p_plug_name=>'About this application'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<p>Track projects, milestones, action items, attach documents, add tags, and comment.  P-Track enhances your project management effectiveness by promoting collaboration, transparency, and information sharing.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51619688928893952)
,p_name=>'Project Milestones by Due Date'
,p_parent_plug_id=>wwv_flow_api.id(51618491755893952)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>120
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.id,',
'    p.project,',
'    p.project project_tt,',
'    p.row_key,',
'    initcap(cc.color_name) color_name,',
'    s.status_short_desc,',
'    p.project_owner||',
'        decode(p.project_owner2,null,null,'', ''||p.project_owner2)||',
'        decode(p.project_owner3,null,null,'', ''||p.project_owner3)||',
'        decode(p.project_owner4,null,null,'', ''||p.project_owner4)||',
'        decode(p.project_owner5,null,null,'', ''||p.project_owner5)||',
'        decode(p.project_owner6,null,null,'', ''||p.project_owner6)||',
'        decode(p.project_owner7,null,null,'', ''||p.project_owner7)||',
'        decode(p.project_owner8,null,null,'', ''||p.project_owner8)||',
'        decode(p.project_owner9,null,null,'', ''||p.project_owner9)||',
'        decode(p.project_owner10,null,null,'', ''||p.project_owner10)||',
'        decode(p.project_owner11,null,null,'', ''||p.project_owner11)||',
'        decode(p.project_owner12,null,null,'', ''||p.project_owner12)',
'            as project_owners,',
'    (   select count(*) from eba_proj_status_ms m',
'        where m.project_id = p.id ) milestone_count,',
'    (   select count(*) from eba_proj_status_ms m',
'        where m.project_id = p.id and milestone_status = ''Open'' ) open_milestones,',
'    (   select count(*) from eba_proj_status_ais a',
'        where a.project_id = p.id ) ai_count,',
'    (   select count(*) from eba_proj_status_ais a',
'        where a.project_id = p.id and action_status = ''Open'' ) open_ai,',
'    nvl(p.tags,''No tags'') tags,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||',
'            :APP_SESSION||'':::2,46:P2_ID,P200_ID:''||p.id||'',''||p.id) link_target,',
'    case when trunc(ms.milestone_date) < trunc(localtimestamp)',
'        then ''dateOverdue''',
'        else ''''',
'    end date_class,',
'    ms.milestone_name next_milestone_name,',
'    ms.milestone_date due_date',
'from EBA_PROJ_STATUS p,',
'    EBA_PROJ_STATUS_CODES s,',
'    eba_proj_color_codes cc,',
'    (   select project_id, milestone_id, milestone_date, milestone_name',
'        from (',
'            select p.id project_id,',
'                first_value(m.id) over (partition by m.project_id order by m.milestone_date asc) milestone_id,',
'                first_value(m.milestone_date) over (partition by m.project_id order by m.milestone_date asc) milestone_date,',
'                first_value(m.milestone_name) over (partition by m.project_id order by m.milestone_date asc) milestone_name',
'            from eba_proj_status p,',
'                eba_proj_status_ms m',
'            where m.project_id = p.id',
'                and m.milestone_status = ''Open''',
'            )',
'        group by project_id, milestone_id, milestone_date, milestone_name',
'        ) ms',
'where p.PROJECT_STATUS = s.id(+)',
'    and ms.project_id = p.id',
'    and cc.id = s.color_code_id',
'    and (:P74_SHOW_COMPLETED_PROJECTS = ''Y'' or s.is_closed_status != ''Y'')',
'order by ms.milestone_date asc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606387019858234)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No projects with open milestones found.'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>20
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51619893801893953)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51619977855893953)
,p_query_column_id=>2
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>2
,p_column_heading=>'PROJECT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51620081642893953)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_TT'
,p_column_display_sequence=>15
,p_column_heading=>'Project Tt'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51620189713893953)
,p_query_column_id=>4
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>3
,p_column_heading=>'ROW_KEY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51620279354893953)
,p_query_column_id=>5
,p_column_alias=>'COLOR_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'COLOR_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51620394751893953)
,p_query_column_id=>6
,p_column_alias=>'STATUS_SHORT_DESC'
,p_column_display_sequence=>5
,p_column_heading=>'STATUS_SHORT_DESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51620475876893953)
,p_query_column_id=>7
,p_column_alias=>'PROJECT_OWNERS'
,p_column_display_sequence=>16
,p_column_heading=>'Project Owners'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51620596071893953)
,p_query_column_id=>8
,p_column_alias=>'MILESTONE_COUNT'
,p_column_display_sequence=>6
,p_column_heading=>'MILESTONE_COUNT'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51620693427893953)
,p_query_column_id=>9
,p_column_alias=>'OPEN_MILESTONES'
,p_column_display_sequence=>8
,p_column_heading=>'OPEN_MILESTONES'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51620796457893953)
,p_query_column_id=>10
,p_column_alias=>'AI_COUNT'
,p_column_display_sequence=>7
,p_column_heading=>'AI_COUNT'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51620891493893953)
,p_query_column_id=>11
,p_column_alias=>'OPEN_AI'
,p_column_display_sequence=>9
,p_column_heading=>'OPEN_AI'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51620997890893953)
,p_query_column_id=>12
,p_column_alias=>'TAGS'
,p_column_display_sequence=>10
,p_column_heading=>'TAGS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51621072690893953)
,p_query_column_id=>13
,p_column_alias=>'LINK_TARGET'
,p_column_display_sequence=>11
,p_column_heading=>'LINK_TARGET'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51621193309893953)
,p_query_column_id=>14
,p_column_alias=>'DATE_CLASS'
,p_column_display_sequence=>12
,p_column_heading=>'DATE_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51621285933893953)
,p_query_column_id=>15
,p_column_alias=>'NEXT_MILESTONE_NAME'
,p_column_display_sequence=>13
,p_column_heading=>'NEXT_MILESTONE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51621399136893953)
,p_query_column_id=>16
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>14
,p_column_heading=>'Due Date'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51623578163893955)
,p_name=>'Recently Edited Projects'
,p_parent_plug_id=>wwv_flow_api.id(51618491755893952)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>90
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.id,',
'    p.project,',
'    p.project project_tt,',
'    nvl(p.updated,p.created) due_date,',
'    p.row_key,',
'    initcap(cc.color_name) color_name,',
'    s.status_short_desc,',
'    p.project_owner||',
'        decode(p.project_owner2,null,null,'', ''||p.project_owner2)||',
'        decode(p.project_owner3,null,null,'', ''||p.project_owner3)||',
'        decode(p.project_owner4,null,null,'', ''||p.project_owner4)||',
'        decode(p.project_owner5,null,null,'', ''||p.project_owner5)||',
'        decode(p.project_owner6,null,null,'', ''||p.project_owner6)||',
'        decode(p.project_owner7,null,null,'', ''||p.project_owner7)||',
'        decode(p.project_owner8,null,null,'', ''||p.project_owner8)||',
'        decode(p.project_owner9,null,null,'', ''||p.project_owner9)||',
'        decode(p.project_owner10,null,null,'', ''||p.project_owner10)||',
'        decode(p.project_owner11,null,null,'', ''||p.project_owner11)||',
'        decode(p.project_owner12,null,null,'', ''||p.project_owner12)',
'            as project_owners,',
'    (   select count(*) from eba_proj_status_ms m',
'        where m.project_id = p.id ) milestone_count,',
'    (   select count(*) from eba_proj_status_ms m',
'        where m.project_id = p.id and milestone_status = ''Open'' ) open_milestones,',
'    (   select count(*) from eba_proj_status_ais a',
'        where a.project_id = p.id ) ai_count,',
'    (   select count(*) from eba_proj_status_ais a',
'        where a.project_id = p.id and action_status = ''Open'' ) open_ai,',
'    p.tags,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||',
'            :APP_SESSION||'':::2,46:P2_ID,P200_ID:''||p.id||'',''||p.id) link_target,',
'    '''' date_class,',
'    ms.milestone_name next_milestone_name',
'from eba_proj_status p,',
'    eba_proj_status_codes s,',
'    eba_proj_color_codes cc,',
'    (   select project_id, milestone_id, milestone_date, milestone_name',
'        from (',
'            select p.id project_id,',
'                first_value(m.id) over (partition by m.project_id order by m.milestone_date asc) milestone_id,',
'                first_value(m.milestone_date) over (partition by m.project_id order by m.milestone_date asc) milestone_date,',
'                first_value(m.milestone_name) over (partition by m.project_id order by m.milestone_date asc) milestone_name',
'            from eba_proj_status p,',
'                eba_proj_status_ms m',
'            where m.project_id = p.id',
'                and m.milestone_status = ''Open''',
'            )',
'        group by project_id, milestone_id, milestone_date, milestone_name',
'        ) ms',
'where p.project_status = s.id(+)',
'    and ms.project_id(+) = p.id',
'    and cc.id = s.color_code_id',
'    and p.project is not null',
'order by 4 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606387019858234)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>20
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51623796907893957)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51623879272893957)
,p_query_column_id=>2
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51623970119893957)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_TT'
,p_column_display_sequence=>15
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51624085243893957)
,p_query_column_id=>4
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51624198200893957)
,p_query_column_id=>5
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>4
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51624295607893957)
,p_query_column_id=>6
,p_column_alias=>'COLOR_NAME'
,p_column_display_sequence=>5
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51624375421893957)
,p_query_column_id=>7
,p_column_alias=>'STATUS_SHORT_DESC'
,p_column_display_sequence=>6
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51624478323893957)
,p_query_column_id=>8
,p_column_alias=>'PROJECT_OWNERS'
,p_column_display_sequence=>16
,p_column_heading=>'Project Owners'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51624599547893957)
,p_query_column_id=>9
,p_column_alias=>'MILESTONE_COUNT'
,p_column_display_sequence=>7
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51624689671893957)
,p_query_column_id=>10
,p_column_alias=>'OPEN_MILESTONES'
,p_column_display_sequence=>8
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51624794945893957)
,p_query_column_id=>11
,p_column_alias=>'AI_COUNT'
,p_column_display_sequence=>9
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51624887236893957)
,p_query_column_id=>12
,p_column_alias=>'OPEN_AI'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51624982260893957)
,p_query_column_id=>13
,p_column_alias=>'TAGS'
,p_column_display_sequence=>11
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51625073754893957)
,p_query_column_id=>14
,p_column_alias=>'LINK_TARGET'
,p_column_display_sequence=>12
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51625184342893957)
,p_query_column_id=>15
,p_column_alias=>'DATE_CLASS'
,p_column_display_sequence=>13
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51625295487893957)
,p_query_column_id=>16
,p_column_alias=>'NEXT_MILESTONE_NAME'
,p_column_display_sequence=>14
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51625772169893958)
,p_name=>'I''m Following'
,p_parent_plug_id=>wwv_flow_api.id(51618491755893952)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>170
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.id,',
'    p.project,',
'    p.project project_tt,',
'    p.row_key,',
'    initcap(cc.color_name) color_name,',
'    s.status_short_desc,',
'    p.project_owner||',
'        decode(p.project_owner2,null,null,'', ''||p.project_owner2)||',
'        decode(p.project_owner3,null,null,'', ''||p.project_owner3)||',
'        decode(p.project_owner4,null,null,'', ''||p.project_owner4)||',
'        decode(p.project_owner5,null,null,'', ''||p.project_owner5)||',
'        decode(p.project_owner6,null,null,'', ''||p.project_owner6)||',
'        decode(p.project_owner7,null,null,'', ''||p.project_owner7)||',
'        decode(p.project_owner8,null,null,'', ''||p.project_owner8)||',
'        decode(p.project_owner9,null,null,'', ''||p.project_owner9)||',
'        decode(p.project_owner10,null,null,'', ''||p.project_owner10)||',
'        decode(p.project_owner11,null,null,'', ''||p.project_owner11)||',
'        decode(p.project_owner12,null,null,'', ''||p.project_owner12)',
'            as project_owners,',
'    (   select count(*) from eba_proj_status_ms m',
'        where m.project_id = p.id ) milestone_count,',
'    (   select count(*) from eba_proj_status_ms m',
'        where m.project_id = p.id and milestone_status = ''Open'' ) open_milestones,',
'    (   select count(*) from eba_proj_status_ais a',
'        where a.project_id = p.id ) ai_count,',
'    (   select count(*) from eba_proj_status_ais a',
'        where a.project_id = p.id and action_status = ''Open'' ) open_ai,',
'    nvl(p.tags,''No tags'') tags,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||',
'            :APP_SESSION||'':::2,46:P2_ID,P200_ID:''||p.id||'',''||p.id) link_target,',
'    case when trunc(ms.milestone_date) < trunc(localtimestamp)',
'        then ''dateOverdue''',
'        else ''''',
'    end date_class,',
'    ms.milestone_name next_milestone_name,',
'    ms.milestone_date due_date',
'from EBA_PROJ_STATUS p,',
'    EBA_PROJ_STATUS_CODES s,',
'    eba_proj_color_codes cc,',
'    (   select project_id, milestone_id, milestone_date, milestone_name',
'        from (',
'            select p.id project_id,',
'                first_value(m.id) over (partition by m.project_id order by m.milestone_date asc) milestone_id,',
'                first_value(m.milestone_date) over (partition by m.project_id order by m.milestone_date asc) milestone_date,',
'                first_value(m.milestone_name) over (partition by m.project_id order by m.milestone_date asc) milestone_name',
'            from eba_proj_status p,',
'                eba_proj_status_ms m',
'            where m.project_id = p.id',
'                and m.milestone_status = ''Open''',
'            )',
'        group by project_id, milestone_id, milestone_date, milestone_name',
'        ) ms,',
'    eba_proj_status_favorites f',
'where p.PROJECT_STATUS = s.id(+)',
'    and ms.project_id(+) = p.id',
'    and cc.id = s.color_code_id',
'    and f.content_id = p.id',
'    and f.user_name = upper(:APP_USER)',
'    and f.content_type = ''PROJECT''',
'union all',
'select p.id,',
'    a.action||'' (''||p.project||'')'' project,',
'    p.project project_tt,',
'    p.row_key,',
'    initcap(cc.color_name) color_name,',
'    s.status_short_desc,',
'    p.project_owner||',
'        decode(p.project_owner2,null,null,'', ''||p.project_owner2)||',
'        decode(p.project_owner3,null,null,'', ''||p.project_owner3)||',
'        decode(p.project_owner4,null,null,'', ''||p.project_owner4)||',
'        decode(p.project_owner5,null,null,'', ''||p.project_owner5)||',
'        decode(p.project_owner6,null,null,'', ''||p.project_owner6)||',
'        decode(p.project_owner7,null,null,'', ''||p.project_owner7)||',
'        decode(p.project_owner8,null,null,'', ''||p.project_owner8)||',
'        decode(p.project_owner9,null,null,'', ''||p.project_owner9)||',
'        decode(p.project_owner10,null,null,'', ''||p.project_owner10)||',
'        decode(p.project_owner11,null,null,'', ''||p.project_owner11)||',
'        decode(p.project_owner12,null,null,'', ''||p.project_owner12)',
'            as owner,',
'    (   select count(*) from eba_proj_status_ms m',
'        where m.project_id = p.id ) milestone_count,',
'    (   select count(*) from eba_proj_status_ms m',
'        where m.project_id = p.id and milestone_status = ''Open'' ) open_milestones,',
'    (   select count(*) from eba_proj_status_ais a',
'        where a.project_id = p.id ) ai_count,',
'    (   select count(*) from eba_proj_status_ais a',
'        where a.project_id = p.id and action_status = ''Open'' ) open_ai,',
'    nvl(p.tags,''No tags'') tags,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||',
'            :APP_SESSION||'':::2,46:P2_ID,P200_ID:''||p.id||'',''||p.id) link_target,',
'    case when trunc(a.due_date) < trunc(localtimestamp)',
'        then ''dateOverdue''',
'        else ''''',
'    end date_class,',
'    ms.milestone_name next_milestone_name,',
'    a.due_date',
'from eba_proj_status p,',
'	eba_proj_status_ais a,',
'    eba_proj_status_codes s,',
'    eba_proj_color_codes cc,',
'    (   select project_id, milestone_id, milestone_date, milestone_name',
'        from (',
'            select p.id project_id,',
'                first_value(m.id) over (partition by m.project_id order by m.milestone_date asc) milestone_id,',
'                first_value(m.milestone_date) over (partition by m.project_id order by m.milestone_date asc) milestone_date,',
'                first_value(m.milestone_name) over (partition by m.project_id order by m.milestone_date asc) milestone_name',
'            from eba_proj_status p,',
'                eba_proj_status_ms m',
'            where m.project_id = p.id',
'                and m.milestone_status = ''Open''',
'            )',
'        group by project_id, milestone_id, milestone_date, milestone_name',
'        ) ms,',
'    eba_proj_status_favorites f',
'where p.id = a.project_id',
'    and p.project_status = s.id(+)',
'    and ms.project_id(+) = p.id',
'    and cc.id = s.color_code_id',
'    and f.content_id = a.id',
'    and f.user_name = upper(:APP_USER)',
'    and f.content_type = ''ACTION ITEM''',
'order by due_date asc nulls last'))
,p_header=>'<p class="largeLinkListDescription">You can follow both projects and action items.</p>'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606387019858234)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'You are not following any projects or action items.'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>20
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51625970235893958)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51626076018893958)
,p_query_column_id=>2
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>2
,p_column_heading=>'PROJECT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51626188699893958)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_TT'
,p_column_display_sequence=>15
,p_column_heading=>'Project Tt'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51626295631893958)
,p_query_column_id=>4
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>3
,p_column_heading=>'ROW_KEY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51626389273893958)
,p_query_column_id=>5
,p_column_alias=>'COLOR_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'COLOR_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51626497451893958)
,p_query_column_id=>6
,p_column_alias=>'STATUS_SHORT_DESC'
,p_column_display_sequence=>5
,p_column_heading=>'STATUS_SHORT_DESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51626572807893960)
,p_query_column_id=>7
,p_column_alias=>'PROJECT_OWNERS'
,p_column_display_sequence=>16
,p_column_heading=>'Project Owners'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51626689073893960)
,p_query_column_id=>8
,p_column_alias=>'MILESTONE_COUNT'
,p_column_display_sequence=>6
,p_column_heading=>'MILESTONE_COUNT'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51626790365893960)
,p_query_column_id=>9
,p_column_alias=>'OPEN_MILESTONES'
,p_column_display_sequence=>8
,p_column_heading=>'OPEN_MILESTONES'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51626882346893960)
,p_query_column_id=>10
,p_column_alias=>'AI_COUNT'
,p_column_display_sequence=>7
,p_column_heading=>'AI_COUNT'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51626984170893960)
,p_query_column_id=>11
,p_column_alias=>'OPEN_AI'
,p_column_display_sequence=>9
,p_column_heading=>'OPEN_AI'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51627069546893960)
,p_query_column_id=>12
,p_column_alias=>'TAGS'
,p_column_display_sequence=>10
,p_column_heading=>'TAGS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51627188793893960)
,p_query_column_id=>13
,p_column_alias=>'LINK_TARGET'
,p_column_display_sequence=>11
,p_column_heading=>'LINK_TARGET'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51627293159893960)
,p_query_column_id=>14
,p_column_alias=>'DATE_CLASS'
,p_column_display_sequence=>12
,p_column_heading=>'DATE_CLASS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51627388369893960)
,p_query_column_id=>15
,p_column_alias=>'NEXT_MILESTONE_NAME'
,p_column_display_sequence=>13
,p_column_heading=>'NEXT_MILESTONE_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51627467740893960)
,p_query_column_id=>16
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>14
,p_column_heading=>'Due Date'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51629195686893961)
,p_plug_name=>'Show Timezone'
,p_parent_plug_id=>wwv_flow_api.id(51618491755893952)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="clear:both;"'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>150
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<div class="subInfoTextRegion"><p>Dates and Times are displayed in the <a href="&P74_TIMEZONE_URL.">&P74_TIMEZONE.</a> timezone.</p></div>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51621685238893953)
,p_name=>'Notifications'
,p_template=>wwv_flow_api.id(43326379440992151)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id, nvl(lower(NOTIFICATION_TYPE),''yellow'') as NOTIFICATION_TYPE, NOTIFICATION_NAME, NOTIFICATION_DESCRIPTION',
'  from EBA_PROJ_STATUS_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)',
' order by nvl(DISPLAY_SEQUENCE,0),NOTIFICATION_NAME'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_PROJ_STATUS_NOTIFICATIONS',
' where (DISPLAY_FROM is null or DISPLAY_FROM <= current_date) and',
'       (DISPLAY_UNTIL is null or DISPLAY_UNTIL >= current_date)'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606387019858234)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
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
 p_id=>wwv_flow_api.id(51621890266893953)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51621987166893953)
,p_query_column_id=>2
,p_column_alias=>'NOTIFICATION_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'NOTIFICATION_TYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51622077056893953)
,p_query_column_id=>3
,p_column_alias=>'NOTIFICATION_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'NOTIFICATION_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51622196834893953)
,p_query_column_id=>4
,p_column_alias=>'NOTIFICATION_DESCRIPTION'
,p_column_display_sequence=>4
,p_column_heading=>'NOTIFICATION_DESCRIPTION'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51622269666893953)
,p_name=>'Legend'
,p_template=>wwv_flow_api.id(43326379440992151)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BEFORE_FOOTER'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    c.sprite_url,',
'    c.sprite_position_x,',
'    c.sprite_position_y,',
'    initcap(c.color_name) color_name,',
'    s.Status_Short_Desc',
'from',
'    EBA_PROJ_STATUS_CODES s,',
'    eba_proj_color_codes c',
'where',
'    s.color_code_id = c.id',
'and',
'    s.is_active_yn = ''Y''',
'order by',
'    s.display_sequence'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606387019858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51622470103893953)
,p_query_column_id=>1
,p_column_alias=>'SPRITE_URL'
,p_column_display_sequence=>1
,p_column_heading=>'SPRITE_URL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51622582448893953)
,p_query_column_id=>2
,p_column_alias=>'SPRITE_POSITION_X'
,p_column_display_sequence=>2
,p_column_heading=>'SPRITE_POSITION_X'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51622691910893953)
,p_query_column_id=>3
,p_column_alias=>'SPRITE_POSITION_Y'
,p_column_display_sequence=>3
,p_column_heading=>'SPRITE_POSITION_Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51622794416893953)
,p_query_column_id=>4
,p_column_alias=>'COLOR_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Color Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51622885607893953)
,p_query_column_id=>5
,p_column_alias=>'STATUS_SHORT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'STATUS_SHORT_DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51627790512893960)
,p_plug_name=>'Tags'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'data-grid="col_1" data-grid-start="yes"'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>90
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag, tag_count',
'  from eba_proj_tags_type_sum',
' where tag_count > 0',
' order by tag_count desc'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TAG_CLOUD'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'f?p=&APP_ID.:113:&APP_SESSION.:::113:P113_SEARCH:#TAG#'
,p_attribute_02=>'250'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51627990377893960)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47595508514858189)
,p_plug_display_sequence=>160
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(47631212475858359)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51628198688893960)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
,p_plug_header=>'<div class="sCustomSearch">'
,p_plug_footer=>'</div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51628571869893961)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51629373305893961)
,p_plug_name=>'ACL Warning'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<div id="no_acl">'');',
'sys.htp.p(''<div class="alertMessage yellow">'');',
'sys.htp.p(apex_application.do_substitutions(''<img src="#IMAGE_PREFIX#f_spacer.gif" alt="Warning">''));',
'sys.htp.p(''<div class="innerMessage">'');',
'sys.htp.p(''<p>''||apex_lang.message(''ACCESS_CONTROL_IS_DISABLED'',''f?p=''||:APP_ID||'':settings:''||:APP_SESSION)||''</p>'');',
'sys.htp.p(''</div>'');',
'sys.htp.p(''</div>'');',
'sys.htp.p('' </div>'');'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'EBA_proj_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''N'''
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51629584759893963)
,p_plug_name=>'preferences'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>100
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51625583738893958)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(51623578163893955)
,p_button_name=>'VIEW_projects'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Projects'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51621498336893953)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(51619688928893952)
,p_button_name=>'VIEW_milestones'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Milestones'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,RIR::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51627578785893960)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(51625772169893958)
,p_button_name=>'View_Following'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Followed Projects & Action Items'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51625382756893957)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(51623578163893955)
,p_button_name=>'CREATE_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create Project'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51631277447893964)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,10:P8_SEARCH:&P74_SEARCH.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 07-OCT-2010 13:32 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51628377632893961)
,p_name=>'P74_SEARCH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(51628198688893960)
,p_prompt=>'Search'
,p_placeholder=>'Search projects, action items, people, tags ...'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project',
'from EBA_PROJ_STATUS',
'order by 1'))
,p_cSize=>70
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_cattributes_element=>'nowrap="nowrap"'
,p_tag_attributes=>'class="sSearchFieldBig"'
,p_label_alignment=>'BELOW'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_05=>'500'
,p_attribute_06=>'N'
,p_attribute_07=>'N'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51628795947893961)
,p_name=>'P74_TIMEZONE_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51628571869893961)
,p_source=>'apex_util.prepare_url(''f?p=''||:APP_ID||'':99:''||:APP_SESSION)'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51628988799893961)
,p_name=>'P74_TIMEZONE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51628571869893961)
,p_source=>'nvl(apex_util.get_session_time_zone(),''unknown'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51629798991893963)
,p_name=>'P74_SHOW_COMPLETED_PROJECTS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(51629584759893963)
,p_item_default=>'N'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(51630077666893963)
,p_computation_sequence=>10
,p_computation_item=>'P74_SHOW_COMPLETED_PROJECTS'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'N'
,p_compute_when=>'P74_SHOW_COMPLETED_PROJECTS'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(51630469054893963)
,p_computation_sequence=>20
,p_computation_item=>'P74_SEARCH'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(51630693240893963)
,p_computation_sequence=>30
,p_computation_item=>'P74_SHOW_COMPLETED_PROJECTS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'N'
,p_compute_when=>'P74_SHOW_COMPLETED_PROJECTS'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(51630879045893963)
,p_computation_sequence=>40
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'10'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51630987637893963)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'replace commas'
,p_process_sql_clob=>':P74_SEARCH := replace(:P74_SEARCH,'','',''[comma]'');'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
