prompt --application/pages/page_00468
begin
--   Manifest
--     PAGE: 00468
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
 p_id=>468
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Audit Inventory Adjustment'
,p_page_mode=>'MODAL'
,p_step_title=>'Audit Inventory Adjustment'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'900'
,p_dialog_chained=>'N'
,p_last_updated_by=>'RAZU'
,p_last_upd_yyyymmddhh24miss=>'20200614164424'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74535850925831533)
,p_plug_name=>'button region'
,p_region_template_options=>'t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(74536153594831536)
,p_name=>'Inventory Adjustment'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT  a.docnumbr',
'         || ''/''',
'         || a.doctdate',
'         || ''/''',
'         || a.docttype',
'         || ''/''',
'         || a.subttype',
'            AS docdetail,a.docttype,',
'         a.subttype,',
'        APEX_ITEM.checkbox (1,a.docnumbr || ''/''||a.SERLNUMB|| ''/''|| a.warecode || ''/''||a.ITEMCODE|| ''/'' ||a.BATCHNUM)checkbox,',
'         a.docnumbr AS docnumbr,',
'         a.doctdate AS doctdate,',
'         a.statuscd AS statuscd,',
'        a.INVTRQTY Inventory_Qty,',
'        a.EXCESQTY Excess_Qty,',
'        a.SHORTQTY Short_Qty,',
'         (SELECT INITCAP (a.raisedby || ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.raisedby)',
'            raisedby,',
'         a.warecode,',
'         INITCAP ( (SELECT a.warecode || '' - '' || INITCAP (waredesc)',
'                      FROM nmwhsmas',
'                     WHERE warecode = a.warecode AND compcode = a.compcode))',
'            "Ware_House",',
'         NULL post_status,',
'         a.PERIODCD',
'    FROM NMSTKINV a',
'   WHERE     a.compcode = :compcode',
'         AND a.docttype = :P468_DOCTYPE --''IV''--:p462_trantype',
'         AND a.subttype = :P468_SUBTYPE --''1''--:p462_subttype',
'         and a.DOCNUMBR = :P468_DOCNUMBER --''IV000011''',
'     --    and a.DOCTDATE = ''06/8/2020''',
'     and a.WARECODE = :P468_WAREHOUSE',
'         AND a.ADJQNTY IS NULL',
'         AND (a.costcode IN',
'                 (SELECT cabasecc',
'                    FROM sycstacc',
'                   WHERE compcode = :compcode AND grupcode = :app_user))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P468_DOCNUMBER,P468_WAREHOUSE,P468_DOCTYPE,P468_SUBTYPE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75607423748594513)
,p_query_column_id=>1
,p_column_alias=>'DOCDETAIL'
,p_column_display_sequence=>1
,p_column_heading=>'Document Details'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74536419687831539)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74536534230831540)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74536778724831542)
,p_query_column_id=>4
,p_column_alias=>'CHECKBOX'
,p_column_display_sequence=>15
,p_column_heading=>'Checkbox'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74536810819831543)
,p_query_column_id=>5
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Document No'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74536919138831544)
,p_query_column_id=>6
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74537089918831545)
,p_query_column_id=>7
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74537108030831546)
,p_query_column_id=>8
,p_column_alias=>'INVENTORY_QTY'
,p_column_display_sequence=>9
,p_column_heading=>'Inventory Qty'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74537233914831547)
,p_query_column_id=>9
,p_column_alias=>'EXCESS_QTY'
,p_column_display_sequence=>10
,p_column_heading=>'Excess Qty'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74537328816831548)
,p_query_column_id=>10
,p_column_alias=>'SHORT_QTY'
,p_column_display_sequence=>11
,p_column_heading=>'Short Qty'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74537476771831549)
,p_query_column_id=>11
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>12
,p_column_heading=>'Raisedby'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(74537522908831550)
,p_query_column_id=>12
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75607359807594512)
,p_query_column_id=>13
,p_column_alias=>'Ware_House'
,p_column_display_sequence=>7
,p_column_heading=>'Ware House'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75606373207594502)
,p_query_column_id=>14
,p_column_alias=>'POST_STATUS'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75606498832594503)
,p_query_column_id=>15
,p_column_alias=>'PERIODCD'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75606747780594506)
,p_plug_name=>'parameters'
,p_region_template_options=>'t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74535951134831534)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74535850925831533)
,p_button_name=>'save'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74536091299831535)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(74535850925831533)
,p_button_name=>'cancel'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75606880275594507)
,p_name=>'P468_DOCNUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75606747780594506)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75606951346594508)
,p_name=>'P468_WAREHOUSE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75606747780594506)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75607025279594509)
,p_name=>'P468_DOCTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(75606747780594506)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75607136204594510)
,p_name=>'P468_SUBTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(75606747780594506)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75607272962594511)
,p_name=>'P468_DOCDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75606747780594506)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75606515667594504)
,p_name=>'cancel dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74536091299831535)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75606634539594505)
,p_event_id=>wwv_flow_api.id(75606515667594504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75607585777594514)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmstkrec '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_WARECODE varchar2(45); ',
' v_COSTCODE varchar2(45); ',
' v_ITEMCODE varchar2(45); ',
' v_ITEMDESC varchar2(45);',
' v_ITEMCLAS varchar2(45);',
' v_COSTRATE number;',
' v_SALERATE number;',
' v_LUOMCODE varchar2(45);',
' v_DOCNUMBR varchar2(45);',
'',
'',
'begin',
' -- Raise_Application_Error (-20343, ''update statement .'');   ',
'FOR i IN 1..APEX_APPLICATION.G_F01.COUNT LOOP ',
'',
'',
' select a.WARECODE, a.COSTCODE, a.ITEMCODE, a.ITEMDESC, a.ITEMCLAS, a.COSTRATE, a.SALERATE, a.LUOMCODE,a.DOCNUMBR',
' into v_WARECODE, v_COSTCODE, v_ITEMCODE, v_ITEMDESC, v_ITEMCLAS, v_COSTRATE, v_SALERATE, v_LUOMCODE, v_DOCNUMBR',
'    FROM NMSTKINV a',
'   WHERE  a.docnumbr || ''/''||a.SERLNUMB|| ''/''|| a.warecode || ''/''||a.ITEMCODE|| ''/'' ||a.BATCHNUM  = APEX_APPLICATION.G_F01(i);',
'',
'           ',
'   --- update status and sale rate of the current user                ',
' insert into nmstkrec (compcode      ,docttype      ,subttype      ,docnumbr      ,doctdate             ,',
'                        serlnumb      ,partycde      ,raisedby      ,apprvdby      ,apprdate             ,',
'                        reqddate      ,commcode      ,itemcode      ,itemtype      ,itemdesc             ,',
'                        itemlong      ,itemrate      ,huomcode      ,luomcode      ,orgnqnty             ,',
'                        apprqnty      ,trnsqnty      ,trnsqty2      ,msfcamnt      ,currcode             ,',
'                        excgrate      ,mslcamnt      ,refnumbr      ,refndate      ,updoctyp             ,',
'                        upsubtyp      ,updocnum      ,updocdte      ,updocsrl      ,remarkss             ,',
'                        costcode      ,warecode      ,statuscd      ,tcstpcnt      ,oprstamp             ,',
'                        timstamp      ,batchnum      ,normrate      ,salerate             ,costrate  )',
'               values  (:compcode,''AR'',1 ,v_DOCNUMBR,sysdate,',
'                        1,null,:APP_USER,null,null       ,',
'                        null,null,v_ITEMCODE,''t'',''eee''       ,',
'                        v_ITEMDESC,v_COSTRATE,v_LUOMCODE,v_LUOMCODE,5,',
'                        5,5,null,10,''BDT'',',
'                        1,20,v_DOCNUMBR,sysdate,null,',
'                        null,null,null,null,''remarkss'',',
'                        v_COSTCODE,v_WARECODE,''APR'',null,:APP_USER,',
'                        sysdate,''batchnum'',100,200,v_COSTRATE); ',
'                                         ',
' END LOOP;',
'/*EXCEPTION ',
'   WHEN no_data_found THEN ',
'      dbms_output.put_line(''No such Invoice for approval!''); ',
'   WHEN others THEN ',
'      dbms_output.put_line(''Error!'');  */',
' ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(74535951134831534)
,p_process_success_message=>'successfully insert.'
);
wwv_flow_api.component_end;
end;
/
