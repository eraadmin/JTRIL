prompt --application/pages/page_01007
begin
--   Manifest
--     PAGE: 01007
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
 p_id=>1007
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Program Master'
,p_alias=>'SYMENMAS'
,p_page_mode=>'MODAL'
,p_step_title=>'&TITLE.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180830132827'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(82095946828475977)
,p_plug_name=>'Program Master List'
,p_region_name=>'symenmas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60228630206866564)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "PROGNAME",',
'"PROGDESC",',
'(select M.MODLCODE||'' - ''||M.MODLNAME',
'  from SYMODULE M where m.modlcode="SYMENMAS"."MODLCODE") AS "Module",',
'DECODE("PROGTYPE", ''F'', ''Forms'', ''R'', ''Reports'') AS "Program Type",',
'(select M.PATHCODE||'' - ''||M.SYPTHDIR',
'  from SYSYSPTH M where m.PATHCODE="SYMENMAS"."PATHCODE") AS "Path",',
'DECODE("VALDFLAG", ''Y'', ''Yes'', ''N'', ''No'') AS "Valid?",',
'"STARTIME",',
'"STOPTIME",',
'"RGHTTYPE",',
'"HELPTEXT",',
'"PAGEID", ',
'"ROWID",',
'apex_item.checkbox2(11, PROGNAME) delcheckbox',
'from "#OWNER#"."SYMENMAS" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(82096314908475986)
,p_name=>'Report on SYMENMAS'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1006:&SESSION.::&DEBUG.::P1006_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ADMINORBHRM'
,p_internal_uid=>44941447782795492
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82096387474475999)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ROWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82096708898476002)
,p_db_column_name=>'PROGNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Program Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PROGNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82097131182476005)
,p_db_column_name=>'PROGDESC'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PROGDESC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82097538099476007)
,p_db_column_name=>'HELPTEXT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Help Text'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'HELPTEXT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82097905027476007)
,p_db_column_name=>'STARTIME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Start Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'STARTIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82098281727476007)
,p_db_column_name=>'STOPTIME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Stop Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'STOPTIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82098719514476007)
,p_db_column_name=>'RGHTTYPE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Right Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'RGHTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82099167115476010)
,p_db_column_name=>'PAGEID'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Page Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PAGEID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82099558625476010)
,p_db_column_name=>'Module'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Module'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Module'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82099950651476010)
,p_db_column_name=>'Program Type'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Program Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Program Type'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82100685648476011)
,p_db_column_name=>'Path'
,p_display_order=>21
,p_column_identifier=>'X'
,p_column_label=>'Path'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Path'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82100280723476011)
,p_db_column_name=>'Valid?'
,p_display_order=>22
,p_column_identifier=>'U'
,p_column_label=>'Valid?'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Valid?'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127467584157482498)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>23
,p_column_identifier=>'Y'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_del_d varchar2(10);',
'begin',
' select DELSTATS into v_del_d from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_del_d=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(82101140089476021)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'449463'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROGNAME:PROGDESC:Module:Program Type:Valid?:Path:HELPTEXT:DELCHECKBOX:'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(127484857869650734)
,p_report_id=>wwv_flow_api.id(82101140089476021)
,p_name=>'Row text contains ''nmtest02'''
,p_condition_type=>'SEARCH'
,p_allow_delete=>'Y'
,p_expr=>'nmtest02'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82101660762476046)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(82095946828475977)
,p_button_name=>'New_Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Program Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1006:&SESSION.::&DEBUG.:1006,1007::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127479182335522389)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(82095946828475977)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure Delete the Program &P1007_DELDOCNUMBER. Really?'', ''DELETE'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_del_d varchar2(10);',
'begin',
' select DELSTATS into v_del_d from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_del_d=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39487221937019721)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(82095946828475977)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39486806273009063)
,p_name=>'P1007_RANDOMNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(82095946828475977)
,p_prompt=>'Randomno'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127473391398501134)
,p_name=>'P1007_DELDOCNUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(82095946828475977)
,p_prompt=>'Deldocnumber'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127485401377661455)
,p_name=>'P1007_PROGNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(82095946828475977)
,p_item_default=>':PROGNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127473641517509624)
,p_name=>'Delete'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f11"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127473980274509624)
,p_event_id=>wwv_flow_api.id(127473641517509624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1007_DELDOCNUMBER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var deldoc=  $(''#symenmas input[name="f11"]:checked'').map(function(){',
'                  return $(this).val()',
'              }).get().join('':'')',
'',
'$(''#P1007_DELDOCNUMBER'').val(deldoc)'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47042798933358148)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39487221937019721)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47042896147358149)
,p_event_id=>wwv_flow_api.id(47042798933358148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127472883545496824)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Program name on Delete button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_deldoc  apex_application_global.vc_arr2 := apex_util.string_to_table(:P1007_DELDOCNUMBER);',
'begin',
'',
'  for i in 1 .. l_deldoc.count',
'   loop',
'      delete from symenmas  where PROGNAME = l_deldoc(i);',
'   end loop;',
'',
'  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
