prompt --application/shared_components/user_interface/templates/report/mobile_value_attribute_pairs
begin
--   Manifest
--     ROW TEMPLATE: +_MOBILE_VALUE_ATTRIBUTE_PAIRS
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
 p_id=>wwv_flow_api.id(2657701495266736317)
,p_row_template_name=>'+ Mobile Value Attribute Pairs'
,p_internal_name=>'+_MOBILE_VALUE_ATTRIBUTE_PAIRS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr>',
'  <th class="mValueHeading" align="left" valign="top">',
'    #COLUMN_HEADER#',
'  </th>',
'  <td class="mValue">',
'    #COLUMN_VALUE#',
'  </td>',
'</tr>'))
,p_row_template_before_rows=>'<table class="mobile-value-attribute-pairs" cellspacing="6" cellpadding="0" border="0" summary="0" #REPORT_ATTRIBUTES# id="report_#REPORT_STATIC_ID#">'
,p_row_template_after_rows=>'</table>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>152
,p_theme_class_id=>6
,p_reference_id=>2598799916851548060
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
