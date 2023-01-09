prompt --application/pages/page_99990_018
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
 p_id=>99990118
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Product Security : User Assign to Group'
,p_alias=>'PRODUCT-SECURITY-USER-ASSIGN-TO-GROUP1'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Security : User Assign to Group'
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
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'/*',
'.t-Wizard .t-Wizard-header {',
'    background-color: beige;',
'    border-color: #ededed;',
'    height: 55px;',
'}',
'*/',
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
'}'))
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220616070154'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83865409187468275)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(34910137010950924)
,p_name=>'Group Items View'
,p_parent_plug_id=>wwv_flow_api.id(83865409187468275)
,p_template=>wwv_flow_api.id(1582249860200857855)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>10
,p_display_column=>2
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEMCODE,',
'       ACTIVE,',
'       GRPECODE,',
'       COMPCODE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       BRANDCDE,',
'       MODLCODE,',
'       STARTDTE,',
'       ENDDATE,',
'       USRIDGRP,',
'       MINDISPCT,',
'       MINDISAMT,',
'       MAXDISPCT,',
'       MAXDISAMT,',
'       MODIFYDT',
'  from NMGRPITM',
'  where compcode=:compcode',
'  and GRPECODE=:P99990118_GROUPCOD'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P99990118_GROUPCOD'
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
 p_id=>wwv_flow_api.id(34910280481950925)
,p_query_column_id=>1
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>10
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34910349457950926)
,p_query_column_id=>2
,p_column_alias=>'ACTIVE'
,p_column_display_sequence=>20
,p_column_heading=>'Active'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34910475210950927)
,p_query_column_id=>3
,p_column_alias=>'GRPECODE'
,p_column_display_sequence=>30
,p_column_heading=>'Grpecode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34910584260950928)
,p_query_column_id=>4
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34910673743950929)
,p_query_column_id=>5
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34910796376950930)
,p_query_column_id=>6
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34910834123950931)
,p_query_column_id=>7
,p_column_alias=>'BRANDCDE'
,p_column_display_sequence=>70
,p_column_heading=>'Brandcde'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34910974041950932)
,p_query_column_id=>8
,p_column_alias=>'MODLCODE'
,p_column_display_sequence=>80
,p_column_heading=>'Modlcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34911011172950933)
,p_query_column_id=>9
,p_column_alias=>'STARTDTE'
,p_column_display_sequence=>90
,p_column_heading=>'Startdte'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34911159333950934)
,p_query_column_id=>10
,p_column_alias=>'ENDDATE'
,p_column_display_sequence=>100
,p_column_heading=>'Enddate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34911275672950935)
,p_query_column_id=>11
,p_column_alias=>'USRIDGRP'
,p_column_display_sequence=>110
,p_column_heading=>'Usridgrp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34911390568950936)
,p_query_column_id=>12
,p_column_alias=>'MINDISPCT'
,p_column_display_sequence=>120
,p_column_heading=>'Mindispct'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34911411862950937)
,p_query_column_id=>13
,p_column_alias=>'MINDISAMT'
,p_column_display_sequence=>130
,p_column_heading=>'Mindisamt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34911581010950938)
,p_query_column_id=>14
,p_column_alias=>'MAXDISPCT'
,p_column_display_sequence=>140
,p_column_heading=>'Maxdispct'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34911620218950939)
,p_query_column_id=>15
,p_column_alias=>'MAXDISAMT'
,p_column_display_sequence=>150
,p_column_heading=>'Maxdisamt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34911786963950940)
,p_query_column_id=>16
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67993377158203860)
,p_plug_name=>'Control Items'
,p_parent_plug_id=>wwv_flow_api.id(83865409187468275)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35361149735948827)
,p_plug_name=>'CONFIRMATION'
,p_region_name=>'CONF'
,p_parent_plug_id=>wwv_flow_api.id(67993377158203860)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(1582248828871857852)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Please Select User for Assign..'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(35361743052948833)
,p_name=>'user list'
,p_parent_plug_id=>wwv_flow_api.id(35361149735948827)
,p_template=>wwv_flow_api.id(1582249860200857855)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USRIDGRP,',
'       GRPECODE,',
'       COMPCODE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       MODIFYDT',
'  from NMUSRITM',
'  where compcode=:compcode',
'  and USRIDGRP=:P99990118_USERCODE;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P99990118_USERCODE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35361888439948834)
,p_query_column_id=>1
,p_column_alias=>'USRIDGRP'
,p_column_display_sequence=>20
,p_column_heading=>'Usridgrp'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35361984801948835)
,p_query_column_id=>2
,p_column_alias=>'GRPECODE'
,p_column_display_sequence=>30
,p_column_heading=>'Grpecode'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35362057696948836)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>10
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35362102584948837)
,p_query_column_id=>4
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35362246108948838)
,p_query_column_id=>5
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>60
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35362366166948839)
,p_query_column_id=>6
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(82214333654774236)
,p_name=>'GROUP VIEW'
,p_parent_plug_id=>wwv_flow_api.id(67993377158203860)
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
'SELECT ',
'ROWID,',
'COMPCODE,',
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
'       '''' ASSIGN_USER',
'  FROM nmcodmas',
' WHERE COMPCODE = :compcode AND NMHRDCDE = ''IGP'' AND MODLCODE = ''NM'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34912489116950947)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>10
,p_column_heading=>'VIEW_ITEM'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P99990118_GROUPCOD'',''#NMSOFCDE#'');'
,p_column_linktext=>'VIEW ITEMS'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35144893619588446)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35140403435588443)
,p_query_column_id=>3
,p_column_alias=>'MODLCODE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35140879727588443)
,p_query_column_id=>4
,p_column_alias=>'NMHRDCDE'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35141254390588443)
,p_query_column_id=>5
,p_column_alias=>'NMSOFCDE'
,p_column_display_sequence=>50
,p_column_heading=>'Group Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35141619484588444)
,p_query_column_id=>6
,p_column_alias=>'NMCODDES'
,p_column_display_sequence=>60
,p_column_heading=>'Group Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35142091173588444)
,p_query_column_id=>7
,p_column_alias=>'NMAMOUNT'
,p_column_display_sequence=>70
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35142424678588444)
,p_query_column_id=>8
,p_column_alias=>'NMMANHRS'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35142807033588444)
,p_query_column_id=>9
,p_column_alias=>'NMRTDNON'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35143262586588445)
,p_query_column_id=>10
,p_column_alias=>'LOCTAXFL'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35143631701588445)
,p_query_column_id=>11
,p_column_alias=>'PRTYFLAG'
,p_column_display_sequence=>110
,p_column_heading=>'Party Flag'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35144007324588445)
,p_query_column_id=>12
,p_column_alias=>'NMSOFTYP'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35144488933588445)
,p_query_column_id=>13
,p_column_alias=>'SERIALNM'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35138412829588442)
,p_query_column_id=>14
,p_column_alias=>'MODEL_PREFIX'
,p_column_display_sequence=>140
,p_column_heading=>'Model Prefix'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35138820130588442)
,p_query_column_id=>15
,p_column_alias=>'PRCNTFLG'
,p_column_display_sequence=>150
,p_column_heading=>'Percent Flag'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35139262123588442)
,p_query_column_id=>16
,p_column_alias=>'DFLTTYPE'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(35139626697588443)
,p_query_column_id=>17
,p_column_alias=>'PAYMNTMOD'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(34910008823950923)
,p_query_column_id=>18
,p_column_alias=>'ASSIGN_USER'
,p_column_display_sequence=>180
,p_column_heading=>'Assign User'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:openModal(''CONF'');'
,p_column_linktext=>'ASSIGN USER'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35116459568588428)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(83865409187468275)
,p_button_name=>'Previous'
,p_button_static_id=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Previous'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:99990117:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35362942684948845)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(83865409187468275)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:99990117:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35361528045948831)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(35361149735948827)
,p_button_name=>'Assign'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Assign'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35361278420948828)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(35361149735948827)
,p_button_name=>'close'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Close'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34911838311950941)
,p_name=>'P99990118_GROUPCOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(67993377158203860)
,p_prompt=>'Groupcod'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35361098919948826)
,p_name=>'P99990118_USERCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(35361149735948827)
,p_prompt=>'Groupcod'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USERNAME||''-''||USERCODE AS DIS, USERCODE AS RET ',
'FROM SYUSRMAS ',
'WHERE DIVNCODE=:COMPCODE',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'<-- SELECT USER -->'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35145229211588446)
,p_name=>'SET DBCR'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990118_DOCTTYPE,P99990118_SUBTTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35145742200588446)
,p_event_id=>wwv_flow_api.id(35145229211588446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990118_DBCRCD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DFLTDBCR ',
'from sydocmas',
'where COMPCODE= :COMPCODE',
'and MODLCODE = ''AC''',
'and TRANTYPE = :P99990118_DOCTTYPE',
'and SUBTTYPE = :P99990118_SUBTTYPE'))
,p_attribute_07=>'P99990118_DOCTTYPE,P99990118_SUBTTYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35147068644588447)
,p_name=>'set subledger'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990118_SUBLEDGER'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35147557327588447)
,p_event_id=>wwv_flow_api.id(35147068644588447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990118_SUBLEDCD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   s.partycde',
'    FROM sycompty s',
'   WHERE s.compcode = :P99990118_COMPCODE ',
'    and s.partytyp in (''VE'',''CU'',''CV'')',
'    AND  s.prtyname||'' (''||s.partycde||'')'' = :P99990118_SUBLEDGER'))
,p_attribute_07=>'P99990118_SUBLEDGER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35147940177588447)
,p_name=>'set doctype, subtype'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990118_TRANTYPE'
,p_condition_element=>'P99990118_TRANTYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35148425006588448)
,p_event_id=>wwv_flow_api.id(35147940177588447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990118_DOCTTYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   trantype',
'    FROM sydocmas d',
'   WHERE compcode = :COMPCODE',
'     AND modlcode = ''AC''',
'     AND TRANTYPE = ''B2''',
'     AND trantype||''-''||subttype=:P99990118_TRANTYPE;'))
,p_attribute_07=>'P99990118_TRANTYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35148949602588448)
,p_event_id=>wwv_flow_api.id(35147940177588447)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990118_SUBTTYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  subttype',
'    FROM sydocmas d',
'   WHERE compcode = :COMPCODE',
'     AND modlcode = ''AC''',
'     AND TRANTYPE = ''B2''',
'     AND trantype||''-''||subttype=:P99990118_TRANTYPE;'))
,p_attribute_07=>'P99990118_TRANTYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35149488179588448)
,p_event_id=>wwv_flow_api.id(35147940177588447)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99990118_SUBTTYPE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35149888276588448)
,p_name=>'hide show'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990118_GROUPTYP'
,p_condition_element=>'P99990118_GROUPTYP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35151836626588449)
,p_event_id=>wwv_flow_api.id(35149888276588448)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(82214333654774236)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35150844955588449)
,p_event_id=>wwv_flow_api.id(35149888276588448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(82214333654774236)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34911913037950942)
,p_name=>'refresh'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990118_GROUPCOD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34912042494950943)
,p_event_id=>wwv_flow_api.id(34911913037950942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(34910137010950924)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34912149183950944)
,p_name=>'not null'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990118_GROUPCOD'
,p_condition_element=>'P99990118_GROUPCOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_api.id(34912260962950945)
,p_event_id=>wwv_flow_api.id(34912149183950944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(34910137010950924)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34912374753950946)
,p_event_id=>wwv_flow_api.id(34912149183950944)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(34910137010950924)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35361311161948829)
,p_name=>'close'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(35361278420948828)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35361424917948830)
,p_event_id=>wwv_flow_api.id(35361311161948829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(35361149735948827)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35362418455948840)
,p_name=>'Refresh'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99990118_USERCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35362571622948841)
,p_event_id=>wwv_flow_api.id(35362418455948840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(35361743052948833)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35363037464948846)
,p_name=>'close page'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(35362942684948845)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35363152804948847)
,p_event_id=>wwv_flow_api.id(35363037464948846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35361639598948832)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vExists NUMBER;',
'begin',
'',
'select count(1) into vExists from NMUSRITM where compcode=:compcode and USRIDGRP=:P99990118_USERCODE and GRPECODE=:P99990118_GROUPCOD;',
'',
'    if vExists>0 then',
'        RAISE_APPLICATION_ERROR(-20014, ''This Group Already Assigned to this User ''|| :P99990118_USERCODE);',
'    else',
'        insert into NMUSRITM (USRIDGRP, GRPECODE, COMPCODE, OPRSTAMP)',
'        values( :P99990118_USERCODE, :P99990118_GROUPCOD,:compcode,:app_user);',
'    end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(35361528045948831)
,p_process_success_message=>'Group Successfully Assigned to the user. '
);
wwv_flow_api.component_end;
end;
/
