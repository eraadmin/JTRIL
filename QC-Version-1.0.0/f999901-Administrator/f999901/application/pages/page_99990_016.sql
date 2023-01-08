prompt --application/pages/page_99990_016
begin
--   Manifest
--     PAGE: 99990
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>99990116
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'PRODUCT SECURITY : GROUP CREATE'
,p_alias=>'PRODUCT_SECURITY_GROUP'
,p_page_mode=>'MODAL'
,p_step_title=>'PRODUCT SECURITY : GROUP CREATE'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                $(document).ready(function() { ',
'                $(function() { ',
'                    $(".textDate").datepicker({ ',
'                        dateFormat: ''dd-mm-yy'', ',
'                        beforeShowDay: my_check ',
'                    }); ',
'                }); ',
'            function my_check(in_date) { ',
'            var firstDay = new Date(in_date.getFullYear(), in_date.getMonth(), 1); ',
'            var saturday = 6 - firstDay.getDay() ',
'            var friday   = 5 - firstDay.getDay() ',
'            if (in_date.getDay() == 0 || in_date.getDate() == saturday ',
'                                      || in_date.getDate() == friday) { ',
'                return [false, "notav", ''Not Available'']; ',
'            } else { ',
'                return [true, "av", "available"]; ',
'            } ',
'                    ',
'  /*',
'                function my_check(in_date) { ',
'                    if (in_date.getDay() == 5) { ',
'                        return [false, "notav", ''Not Available'']; ',
'                    } else { ',
'                        return [true, "av", "available"]; ',
'                    }',
'                   ',
'                } ',
'                ',
'                https://www.geeksforgeeks.org/jquery-ui-beforeshowday/',
'   */             ',
'            }) ',
''))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-WizardSteps-label {',
'    display: block;',
'    text-align: center;',
'    margin-top: 22px;',
'    padding: 4px 8px 0;',
'    line-height: 18px;',
'    font-size: 1.2rem;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'',
'.t-Wizard .t-Wizard-header {',
'    background-color: lightgrey;',
'    border-color: #ededed;',
'    height: 55px;',
'}',
'',
'.t-Wizard .t-Wizard-body, .t-Wizard .t-Wizard-controls {',
'    padding: 5px 5px;',
'}',
'',
'.t-Wizard .t-Wizard-body, .t-Wizard .t-Wizard-controls {',
'    padding: 0px 5px;',
'}',
'',
'.t-Wizard {',
'    max-width: 100%;',
'    margin: 0px auto 1px;',
'    padding: 0px;',
'    border: 1px solid;',
'    box-shadow: rgba(0, 0, 0, 0.05) 0px 1px 2px;',
'    background-clip: padding-box;',
'}',
'',
'.ui-dialog .ui-dialog-titlebar-close {',
'    position: absolute;',
'    right: 12px;',
'    top: 2px;',
'    width: 24px;',
'    margin: 0;',
'    padding: 0;',
'    height: 24px;',
'    border-radius: 100%;',
'}',
'',
'',
'/*=================classic report css =================*/',
'.t-Report-colHead{',
'    font-size: 12px;',
'    /*line-height: 10px;',
'    color: black;',
'    transition: background-color .1s;*/',
'    color: black;',
'    font-weight:bold;',
'    border-right-width: 0;',
'    border: 1px solid grey;  ',
'	padding: 2px;',
'	BACKGROUND-COLOR: lightgrey;',
'    text-align: center;',
'    vertical-align: middle;',
'}',
'',
'.t-Report-cell{',
'    font-size: 10px;',
'    /*line-height: 10px;*/',
'    border-right-width: 0;',
'    border: 1px solid grey;  ',
'	padding: 2px;',
'	    --BACKGROUND-COLOR: lightgrey;',
'    transition: background-color .1s;',
'	color: black;',
'}',
'',
'',
'/*=============== region header small ===========*/',
'.ui-dialog .ui-dialog-titlebar {',
'    padding: 5px;',
'    position: relative;',
'    border: 0;',
'    font-weight: 700;',
'    color:darkblue;',
'    background-color: #F8F8F8;',
'    border-bottom: 1px solid #F0F0F0;',
'    border-bottom-right-radius: 0;',
'    border-bottom-left-radius: 0;',
'}',
'',
'',
'.t-AVPList-label, .t-AVPList-value {',
'    min-height: 2.6rem;',
'    display: flex;',
'    font-size: 1.4rem;',
'    line-height: 1.5rem;',
'    padding: 0.8rem 1.2rem;',
'    margin: 0;',
'    box-shadow: 0 0.1rem rgb(0 0 0 / 5%) inset;',
'    transition: background-color .1s;',
'}',
'',
'.t-Body-info .t-AVPList-label, .t-Region .t-AVPList-label {',
'    color: #262626;',
'    font-weight: 800;',
'    font-size:13px',
'}',
'.t-Body-info .t-AVPList-value, .t-Region .t-AVPList-value {',
'    color: darkblue;',
'    font-weight: 500;',
'    font-size:13px',
'}',
'',
'.t-Report-tableWrap{',
'    border: 1px solid black;',
'}',
'',
'',
'.t-Region-header {',
'    border-bottom-right-radius: 0!important;',
'    border-bottom-left-radius: 0!important;',
'    border-bottom: 1px solid rgba(0,0,0,.075);',
'    width: 100%;',
'    font-size: 1.3rem;',
'    font-weight: 500;',
'    line-height: 0.4rem;',
'    display: flex;',
'    align-items: center;',
'}',
'',
'.t-Region-headerItems--title {',
'    flex-grow: 1;',
'    text-align: center;',
'    padding: .8rem;',
'    display: block;',
'}',
'',
'',
'.t-Region {',
'    display: block;',
'    border: 1px solid rgba(0,0,0,.1);',
'    box-shadow: 0 2px 4px -2px rgb(0 0 0 / 8%);',
'    margin-bottom: 5px;',
'}',
'',
'/*=========POP UP LOV CSS ===============*/',
'.a-PopupLOV-results .a-IconList-item {',
'    color: inherit;',
'}',
'',
'.a-PopupLOV-results .a-IconList-item {',
'    border-radius: 0;',
'    padding: 4px 8px;',
'    font-size: 12px;',
'    line-height: 10px;',
'    border-bottom: 1px solid black;',
'}',
'.a-PopupLOV-results .a-IconList-item {',
'    float: none;',
'    width: 100%;',
'    margin: 0;',
'    cursor: var(--a-menu-cursor,pointer);',
'}',
'}'))
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20221128113654'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48749578890879850)
,p_plug_name=>'wizard progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:margin-top-lg:margin-bottom-lg'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(1582253198556857860)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_api.id(34445990889603605)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1582271165273857916)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32877546861615435)
,p_plug_name=>'Control Items'
,p_parent_plug_id=>wwv_flow_api.id(48749578890879850)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32877763005615437)
,p_plug_name=>'Group Creation'
,p_parent_plug_id=>wwv_flow_api.id(32877546861615435)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'NMCODMAS'
,p_include_rowid_column=>true
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(47098503358185811)
,p_name=>'GROUP_VIEW'
,p_parent_plug_id=>wwv_flow_api.id(32877546861615435)
,p_template=>wwv_flow_api.id(1582249860200857855)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="margin-top:3%;"'
,p_grid_column_span=>10
,p_display_column=>2
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       COMPCODE,',
'       MODLCODE,',
'       NMHRDCDE,',
'       NMSOFCDE,',
'       NMCODDES,',
'       NMAMOUNT,',
'       NMMANHRS,',
'       NMRTDNON,',
'       LOCTAXFL,',
'       PRTYFLAG,',
'       NMSOFTYP,',
'       SERIALNM,',
'       MODEL_PREFIX,',
'       PRCNTFLG,',
'       DFLTTYPE,',
'       PAYMNTMOD,',
'       '''' ASSIGN_ITEM',
'  FROM nmcodmas',
' WHERE COMPCODE = :compcode AND NMHRDCDE = ''IGP'' AND MODLCODE = ''NM'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34909472643950917)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>10
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:99990119:&SESSION.::&DEBUG.::P99990119_ROWID:#ROWID#'
,p_column_linktext=>'MODIFY'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32875940050615419)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32876038675615420)
,p_query_column_id=>3
,p_column_alias=>'MODLCODE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32876145147615421)
,p_query_column_id=>4
,p_column_alias=>'NMHRDCDE'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32876203114615422)
,p_query_column_id=>5
,p_column_alias=>'NMSOFCDE'
,p_column_display_sequence=>60
,p_column_heading=>'Group Code'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32876396572615423)
,p_query_column_id=>6
,p_column_alias=>'NMCODDES'
,p_column_display_sequence=>70
,p_column_heading=>'Group Description'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32876402863615424)
,p_query_column_id=>7
,p_column_alias=>'NMAMOUNT'
,p_column_display_sequence=>80
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32876518864615425)
,p_query_column_id=>8
,p_column_alias=>'NMMANHRS'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32876694992615426)
,p_query_column_id=>9
,p_column_alias=>'NMRTDNON'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32876793910615427)
,p_query_column_id=>10
,p_column_alias=>'LOCTAXFL'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32876805556615428)
,p_query_column_id=>11
,p_column_alias=>'PRTYFLAG'
,p_column_display_sequence=>120
,p_column_heading=>'Party Flag'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32876954867615429)
,p_query_column_id=>12
,p_column_alias=>'NMSOFTYP'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32877029253615430)
,p_query_column_id=>13
,p_column_alias=>'SERIALNM'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32877150423615431)
,p_query_column_id=>14
,p_column_alias=>'MODEL_PREFIX'
,p_column_display_sequence=>150
,p_column_heading=>'Model Prefix'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32877218458615432)
,p_query_column_id=>15
,p_column_alias=>'PRCNTFLG'
,p_column_display_sequence=>160
,p_column_heading=>'Percent Flag'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32877350625615433)
,p_query_column_id=>16
,p_column_alias=>'DFLTTYPE'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32877435144615434)
,p_query_column_id=>17
,p_column_alias=>'PAYMNTMOD'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34908370518950906)
,p_query_column_id=>18
,p_column_alias=>'ASSIGN_ITEM'
,p_column_display_sequence=>190
,p_column_heading=>'Assign Item'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:99990117:&SESSION.::&DEBUG.::P99990117_GROUPCODE,P99990117_GROUPNAME:#NMSOFCDE#,#NMCODDES#'
,p_column_linktext=>'ASSIGN ITEM'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34909748265950920)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_api.id(32877763005615437)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Create'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34452422257691693)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(48749578890879850)
,p_button_name=>'Cancel'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34453256346691695)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(48749578890879850)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:99990117:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-right-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34909816948950921)
,p_branch_name=>'go to same'
,p_branch_action=>'f?p=&APP_ID.:99990116:&SESSION.::&DEBUG.:99990116::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34909748265950920)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32877629202615436)
,p_name=>'P99990116_GROUPTYP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32877546861615435)
,p_item_default=>'E'
,p_prompt=>'Grouptyp'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:New Group;N,Existing;E'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32877996771615439)
,p_name=>'P99990116_COMPCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COMPCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32878005774615440)
,p_name=>'P99990116_MODLCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_default=>'NM'
,p_source=>'MODLCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32878196043615441)
,p_name=>'P99990116_NMHRDCDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_default=>'IGP'
,p_source=>'NMHRDCDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32878205791615442)
,p_name=>'P99990116_NMSOFCDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_prompt=>'Group Code'
,p_source=>'NMSOFCDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_tag_attributes=>'style="text-transform: uppercase;" onKeyUp="this.value=this.value.toUpperCase();"'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32878344712615443)
,p_name=>'P99990116_NMCODDES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_prompt=>'Group Description'
,p_source=>'NMCODDES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32878455421615444)
,p_name=>'P99990116_NMAMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_prompt=>'Group Amount'
,p_source=>'NMAMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32878591738615445)
,p_name=>'P99990116_NMMANHRS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'NMMANHRS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32878690154615446)
,p_name=>'P99990116_NMRTDNON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'NMRTDNON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32878723537615447)
,p_name=>'P99990116_NMACCTCD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'NMACCTCD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32878865994615448)
,p_name=>'P99990116_DBCRCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'DBCRCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32878914431615449)
,p_name=>'P99990116_SUBLEDCD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'SUBLEDCD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32879015919615450)
,p_name=>'P99990116_COSTCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_prompt=>'Costcode'
,p_source=>'COSTCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34491239563776101)
,p_name=>'P99990116_LOCTAXFL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'LOCTAXFL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34491345985776102)
,p_name=>'P99990116_PRTYFLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'PRTYFLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34491440106776103)
,p_name=>'P99990116_OPRSTAMP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'OPRSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34491517844776104)
,p_name=>'P99990116_TIMSTAMP'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'TIMSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34491662948776105)
,p_name=>'P99990116_NMSOFTYP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_prompt=>'Nmsoftyp'
,p_source=>'NMSOFTYP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34491700600776106)
,p_name=>'P99990116_SERIALNM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'SERIALNM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34491853761776107)
,p_name=>'P99990116_MODEL_PREFIX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'MODEL_PREFIX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34491906554776108)
,p_name=>'P99990116_PRCNTFLG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'PRCNTFLG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34492035629776109)
,p_name=>'P99990116_MODIFYDT'
,p_source_data_type=>'DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'MODIFYDT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34492125441776110)
,p_name=>'P99990116_NMUPCDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'NMUPCDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34492201043776111)
,p_name=>'P99990116_NMUPSDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'NMUPSDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34492316609776112)
,p_name=>'P99990116_NMUPHRD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'NMUPHRD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34492442093776113)
,p_name=>'P99990116_BANKCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'BANKCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34492596860776114)
,p_name=>'P99990116_DFLTTYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'DFLTTYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34492621597776115)
,p_name=>'P99990116_PAYMNTMOD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'PAYMNTMOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34493210970776121)
,p_name=>'P99990116_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(32877763005615437)
,p_item_source_plug_id=>wwv_flow_api.id(32877763005615437)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34462493076691707)
,p_name=>'SET DBCR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990116_DOCTTYPE,P99990116_SUBTTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34462963273691708)
,p_event_id=>wwv_flow_api.id(34462493076691707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990116_DBCRCD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DFLTDBCR ',
'from sydocmas',
'where COMPCODE= :COMPCODE',
'and MODLCODE = ''AC''',
'and TRANTYPE = :P99990116_DOCTTYPE',
'and SUBTTYPE = :P99990116_SUBTTYPE'))
,p_attribute_07=>'P99990116_DOCTTYPE,P99990116_SUBTTYPE,P99990116_COMPCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34463312792691709)
,p_name=>'Clost'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34452422257691693)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34463841296691709)
,p_event_id=>wwv_flow_api.id(34463312792691709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34464263900691709)
,p_name=>'set subledger'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990116_SUBLEDGER'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34464787368691709)
,p_event_id=>wwv_flow_api.id(34464263900691709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990116_SUBLEDCD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   s.partycde',
'    FROM sycompty s',
'   WHERE s.compcode = :P99990116_COMPCODE ',
'    and s.partytyp in (''VE'',''CU'',''CV'')',
'    AND  s.prtyname||'' (''||s.partycde||'')'' = :P99990116_SUBLEDGER'))
,p_attribute_07=>'P99990116_SUBLEDGER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34465132383691709)
,p_name=>'set doctype, subtype'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990116_TRANTYPE'
,p_condition_element=>'P99990116_TRANTYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34465670129691710)
,p_event_id=>wwv_flow_api.id(34465132383691709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990116_DOCTTYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   trantype',
'    FROM sydocmas d',
'   WHERE compcode = :COMPCODE',
'     AND modlcode = ''AC''',
'     AND TRANTYPE = ''B2''',
'     AND trantype||''-''||subttype=:P99990116_TRANTYPE;'))
,p_attribute_07=>'P99990116_TRANTYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34466119665691710)
,p_event_id=>wwv_flow_api.id(34465132383691709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990116_SUBTTYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  subttype',
'    FROM sydocmas d',
'   WHERE compcode = :COMPCODE',
'     AND modlcode = ''AC''',
'     AND TRANTYPE = ''B2''',
'     AND trantype||''-''||subttype=:P99990116_TRANTYPE;'))
,p_attribute_07=>'P99990116_TRANTYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34466633327691710)
,p_event_id=>wwv_flow_api.id(34465132383691709)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990116_SUBTTYPE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34492707993776116)
,p_name=>'hide show'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990116_GROUPTYP'
,p_condition_element=>'P99990116_GROUPTYP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34492855591776117)
,p_event_id=>wwv_flow_api.id(34492707993776116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32877763005615437)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34493181498776120)
,p_event_id=>wwv_flow_api.id(34492707993776116)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(47098503358185811)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34492988326776118)
,p_event_id=>wwv_flow_api.id(34492707993776116)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(47098503358185811)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34493001672776119)
,p_event_id=>wwv_flow_api.id(34492707993776116)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32877763005615437)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34909623850950919)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(32877763005615437)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'automatic row process'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34909748265950920)
,p_process_success_message=>'Group Successfully Created..'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32877848959615438)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(32877763005615437)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form PRODUCT SECURITY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
