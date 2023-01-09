prompt --application/shared_components/user_interface/templates/report/project_list_with_tooltip
begin
--   Manifest
--     ROW TEMPLATE: PROJECT_LIST_WITH_TOOLTIP
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(617217401089153642)
,p_row_template_name=>'Project List with Tooltip'
,p_internal_name=>'PROJECT_LIST_WITH_TOOLTIP'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li>',
'        <a href="#LINK_TARGET#"><img src="#IMAGE_PREFIX#f_spacer.gif" class="status#COLOR_NAME#" alt="#STATUS_SHORT_DESC#"><span>#PROJECT#</span>',
'            <em class="#DATE_CLASS#">#DUE_DATE#</em>',
'        </a>',
'        <section class="detailedListTooltip">',
'            <h4>#PROJECT_TT#</h4>',
'            <ul>',
'                <li>',
'                    <label>Next Milestone</label>',
'                    <span>#NEXT_MILESTONE_NAME#</span>',
'                </li>',
'                <li>',
'                    <label>Owners</label>',
'                    <span>#PROJECT_OWNERS#</span>',
'                </li>',
'                <li>',
'                    <label>Milestones</label>',
'                    <span>#MILESTONE_COUNT#, #OPEN_MILESTONES# open</span>',
'                </li>',
'                <li>',
'                    <label>Action Items</label>',
'                    <span>#AI_COUNT#, #OPEN_AI# open</span>',
'                </li>',
'                <li>',
'                    <label>Status</label>',
'                    <span>#STATUS_SHORT_DESC#</span>',
'                </li>',
'                <li>',
'                    <label>Tags</label>',
'                    <span>#TAGS#</span>',
'                </li>',
'                <li>',
'                    <label>Key</label>',
'                    <span>#ROW_KEY#</span>',
'                </li>',
'            </ul>',
'        </section>',
'    </li>'))
,p_row_template_before_rows=>'<ul class="detailedStatusList">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>152
,p_theme_class_id=>9
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
