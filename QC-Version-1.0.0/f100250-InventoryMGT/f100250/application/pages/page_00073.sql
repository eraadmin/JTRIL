prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'ORBITS HRM SYSTEM'
,p_step_title=>'ORBITS HRM SYSTEM'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'function change_page(p_progname, p_pageid, p_parentnm, p_progtype) {',
'var v_url = ''f?p=&APP_ID.:'' + p_progname + '':&SESSION.::NO:''+p_pageid',
'                 +'':P''+p_pageid+''_NO,P''+p_pageid+''_prognm,P''+p_pageid+''_parent,fx_tree_node:''',
'                 +p_pageid+'',''+p_progname+'',''+p_parentnm+'',''+p_progname;',
'if (p_progtype == ''R'')',
' {window.open(v_url);}',
'else',
' {window.open(v_url, "_self");}',
'}',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50648387038169022)
,p_plug_name=>'Welcome! &P1_USER_NAME.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50649389345169038)
,p_plug_name=>'ORBITS HRM SYSTEM'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:40%; float:left; clear: none;"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, b.progdesc as title, ',
'       case ',
'         when b.menuleaf = ''M'' THEN ''#IMAGE_PREFIX#icon_item.gif''',
'         else ''#IMAGE_PREFIX#r_blue_arrow.gif''',
'       END  as icon, a.progname as value, ',
'       null as tooltip,  a.lnk as link ',
'FROM (',
'Select compcode, usercode, ',
'         parentnm,  progname,',
'          menuleaf, ',
'          ''javascript:change_page('''''' || S.progname|| '''''',''|| (SELECT PAGEID FROM SYMENMAS WHERE PROGNAME=S.PROGNAME) || '','''''' || S.parentnm||'''''')'' lnk',
'         from SYRIGHTS S Where    upper(USERCODE) = upper(:app_user)',
'         ) a, ',
'symentre b',
'WHERE a.PARENTNM = b.PARENTNM',
'                 and a.PROGNAME = b.PROGNAME',
'                 and upper(a.usercode) = upper(:app_user)',
'                    START WITH a.parentnm = ''ROOTP''',
'                    CONNECT BY PRIOR a.progname = a.parentnm                  ',
'                    order siblings by b.MENUSLNO',
'     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P73_CACMPNAM'
,p_attribute_01=>'apple'
,p_attribute_02=>'S'
,p_attribute_03=>'FX_TREE_NODE'
,p_attribute_04=>'N'
,p_attribute_06=>'tree13494715666488547'
,p_attribute_07=>'JSTREE'
,p_attribute_10=>'"3"'
,p_attribute_11=>'"2"'
,p_attribute_12=>'"4"'
,p_attribute_15=>'"1"'
,p_attribute_20=>'"5"'
,p_attribute_22=>'"6"'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'"7"'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50650596383169046)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:14px;color:#6633FF; font-weight:bold;"><br>User: &P73_USER_ID.<Br>&P73_USER_NAME.<Br></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:#336633; font-weight:bold;">&P73_COMPNAME.<br><font size=''2'' color=''#336633''>&P73_COMPADD.</font>',
'',
'<div>',
'',
'<html>',
'<head>',
'<script type="text/javascript">',
'function startTime()',
'{',
'var today=new Date();',
'var h=today.getHours();',
'var m=today.getMinutes();',
'var s=today.getSeconds();',
'var don="AM"',
'// add a zero in front of numbers<10',
'm=checkTime(m);',
's=checkTime(s);',
'',
'if (h>=12){ don="PM" }',
'if (h>12) { h-=12 }',
'if (h==0) { h=12 }',
'',
'document.getElementById(''txt'').innerHTML=h+":"+m+":"+s+" "+don;',
't=setTimeout(''startTime()'',500);',
'}',
'',
'function checkTime(i)',
'{',
'if (i<10)',
'  {',
'  i="0" + i;',
'  }',
'return i;',
'}',
'</script>',
'</head>',
'',
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'',
'</div>',
'',
'</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(50650791470169049)
,p_name=>'Recent Acitivities'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:40%; float:right; clear: none;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select PROGNAME, PROGDESC, TIMSTAMP,   recent_lnk from (',
'select a.PROGNAME, b.PROGDESC, a.TIMSTAMP,',
'''f?p=''||:app_id||'':''||a.progname||'':''||:app_Session||''::NO:''||pageID',
'               ||'':P''||pageID||''_NO,''||''P''||pageID||''_prognm,''||''P''||pageID||''_parent''',
'               ||'':''||pageID||'',''||a.progname||'',''||a.parentnm recent_lnk ',
'from SYFAVORS a, symenmas b',
'where a.usercode  = :app_user',
'and A.PROGNAME = B.PROGNAME order by a.TIMSTAMP desc)',
'where rownum <= 11'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606387019858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>100
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
 p_id=>wwv_flow_api.id(50650989878169049)
,p_query_column_id=>1
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'#RECENT_LNK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#jtfunexe.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50651070215169053)
,p_query_column_id=>2
,p_column_alias=>'PROGDESC'
,p_column_display_sequence=>2
,p_column_heading=>'Acitivity'
,p_use_as_row_header=>'N'
,p_column_css_style=>'display: block; width: 15em;'
,p_column_link=>'#RECENT_LNK#'
,p_column_linktext=>'#PROGDESC#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50651187304169053)
,p_query_column_id=>3
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>3
,p_column_heading=>'Access Time'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50651275033169053)
,p_query_column_id=>4
,p_column_alias=>'RECENT_LNK'
,p_column_display_sequence=>4
,p_column_heading=>'RECENT_LNK'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50651368431169055)
,p_plug_name=>'MSG'
,p_parent_plug_id=>wwv_flow_api.id(50650791470169049)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'<br><br><div style="text-align:justify; width:370px; height:150px; font-size:15px;</div>'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50649779532169043)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50649389345169038)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''tree18556714038140077'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50649983807169046)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50649389345169038)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Expand All'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''tree18556714038140077'');'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(50652694968169071)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_validate Varchar2(1);',
'Begin',
'Select nvl(VALDFLAG,''N'')',
'Into v_validate ',
'From SYUSRMAS',
'Where USERCODE = :app_user;',
'If v_validate  = ''N'' Then',
'Return TRUE;',
'Else',
'Return FALSE;',
'End If;',
'End;'))
,p_branch_condition_text=>'PLSQL'
,p_branch_comment=>'Created 09-FEB-2012 11:41 by ADMINORBHRM'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50648591331169030)
,p_name=>'P73_CACMPNAM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50648387038169022)
,p_prompt=>'Select Company'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct A.CACMPCDE||'' - ''||A.CACMPNAM, A.CACMPCDE Compnay',
'From SYPARMAS A, SYRIGHTS B',
'Where A.CACMPCDE = B.COMPCODE',
'And B.USERCODE = Decode(:app_user,''SYSTEM'',B.USERCODE,:app_user)'))
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'style="font-size:15px; color:red; font-weight:bold;"'
,p_tag_attributes=>'style="color:#6633FF;font-weight:bold;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50648796229169036)
,p_name=>'P73_COMPNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50648387038169022)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50648983555169036)
,p_name=>'P73_COMPADD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(50648387038169022)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50649193172169036)
,p_name=>'P73_VALDFLAG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(50648387038169022)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50650198015169046)
,p_name=>'P73_USER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50649389345169038)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50650370592169046)
,p_name=>'P73_USER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(50649389345169038)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50651597475169057)
,p_name=>'P73_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50651368431169055)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'style="text-align:justify; width:370px; height:150px; font-size:15px;color: #0033ff"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50655269566625899)
,p_name=>'P73_PROGID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(50649389345169038)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&FX_TREE_NODE.'
,p_prompt=>'Progid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50652196928169066)
,p_name=>'Submit_Page'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_CACMPNAM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50652476920169068)
,p_event_id=>wwv_flow_api.id(50652196928169066)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50651795921169060)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P73_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50651982187169064)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/19 15:44 (Formatter Plus v4.8.8) */',
'   --system',
'',
'DECLARE',
'   vnmsession   NUMBER                   := :SESSION;',
'   v_pageid     NUMBER;',
'   v_link       VARCHAR2 (100);',
'   v1           VARCHAR2 (100);',
'   v_progtype   symenmas.progtype%TYPE;',
'BEGIN',
'   SELECT INITCAP (cacmpnam),',
'          INITCAP (   caaddrs1',
'                   || caaddrs2',
'                   || '' ''',
'                   || caaddrs3',
'                   || '',  ''',
'                   || caaddrs4',
'                   || ''.''',
'                  )',
'     INTO :p73_compname,',
'          :p73_compadd',
'     FROM syparmas',
'    WHERE cacmpcde = :p73_cacmpnam;',
'',
'   dpr_random_quotes (:p73_msg);',
'',
'   DELETE FROM stglobtm',
'         WHERE UPPER (colmc2) = UPPER (:app_user);',
'',
'   SELECT username, username, :app_user',
'     INTO :p73_user_name, :fx_username, :p73_user_id',
'     FROM syusrmas',
'    WHERE usercode = :app_user;',
'',
'   FOR c1 IN (SELECT DISTINCT a.compcode, a.usercode, a.parentnm, a.progname,',
'                              a.menuleaf',
'                         FROM syrights a',
'                        WHERE a.compcode = :p73_cacmpnam',
'                          AND a.usercode = :app_user',
'              UNION',
'              SELECT DISTINCT :p73_cacmpnam compcode, :app_user usercode,',
'                              a.parentnm, a.progname, a.menuleaf',
'                         FROM syrights a',
'                        WHERE compcode = :p73_cacmpnam',
'                              AND a.usercode = :app_user',
'              UNION',
'              SELECT :p73_cacmpnam compcode, :app_user usercode, ''ROOTP'',',
'                     ''ROOT'' progname, ''M'' menuleaf',
'                FROM DUAL',
'               WHERE :p73_cacmpnam IS NOT NULL)',
'   LOOP',
'      v_link := NULL;',
'',
'      IF c1.menuleaf = ''L''',
'      THEN',
'         BEGIN',
'            SELECT pageid, progtype',
'              INTO v_pageid, v_progtype',
'              FROM symenmas b',
'             WHERE progname = c1.progname;',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               v_pageid := NULL;',
'               v_progtype := ''F'';',
'         END;',
'',
'         IF v_pageid IS NOT NULL AND v_progtype IN (''R'', ''F'')',
'         THEN',
'            v_link :=',
'                  ''javascript:change_page(''''''',
'               || c1.progname',
'               || '''''',''',
'               || v_pageid',
'               || '',''''''',
'               || c1.parentnm',
'               || '''''',''''''',
'               || v_progtype',
'               || '''''')'';',
'         END IF;',
'      ELSE',
'         v_progtype := ''F'';',
'      END IF;',
'',
'      INSERT INTO stglobtm',
'                  (colmc1, colmc2, colmc3, colmc4,',
'                   colmc5, colmc7',
'                  )',
'           VALUES (c1.compcode, c1.usercode, c1.parentnm, c1.progname,',
'                   c1.menuleaf, v_link',
'                  );',
'   END LOOP;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :p73_compname := ''Please Select Your Company'';',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
