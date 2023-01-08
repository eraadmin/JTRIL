prompt --application/pages/page_00079
begin
--   Manifest
--     PAGE: 00079
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
 p_id=>79
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Page'
,p_step_title=>'shuttle item test'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
' NS4 = (document.layers) ? true : false;',
' function f_filter_shuttle_item(pThis,pShuttle1,pShuttle2,event)',
'{ ',
' var code = 0;',
' if (NS4)',
' code = event.which;',
' else',
' code = event.keyCode;',
' if (code==13)',
' {',
'    var l_Return = null;',
'    var l_Select = html_GetElement(pShuttle1);',
'	',
'    var p_array = '''';',
'    var get = new htmldb_Get(null,&APP_ID.,''APPLICATION_PROCESS=filter_shuttle_item'',0);',
'	',
'    for (i = 0; i < $x(pShuttle2).length; i++)',
'     {',
'  	  if (p_array == '''')',
'	  {',
'      p_array = $x(pShuttle2)[i].value;',
'	  }',
'	  else',
'	  {',
'      p_array = p_array + '':'' + $x(pShuttle2)[i].value;',
'	  }',
'     }',
'',
'    get.add(''SHUTTLE_ITEM_VALUE'', p_array);',
'    get.add(''FILTER_ITEM_VALUE'', pThis.value);',
'  ',
'    gReturn = get.get(''XML'');',
'',
'    if(gReturn && l_Select){',
'        var l_Count = gReturn.getElementsByTagName("option").length;',
'        l_Select.length = 0;',
'        for(var i=0;i<l_Count;i++){',
'            var l_Opt_Xml = gReturn.getElementsByTagName("option")[i];',
'            appendToSelect(l_Select, l_Opt_Xml.getAttribute(''value''), ',
'                                     l_Opt_Xml.firstChild.nodeValue)',
'        }',
'    }',
'    get = null;',
' }',
'}',
' ',
' function appendToSelect(pShuttle1, pValue, pContent) {',
'    var l_Opt = document.createElement("option");',
'    l_Opt.value = pValue;',
'    if(document.all)',
'	{',
'        pShuttle1.options.add(l_Opt);',
'        l_Opt.innerText = pContent;',
'	}',
'	else',
'	{',
'		l_Opt.appendChild(document.createTextNode(pContent));',
'	    pShuttle1.appendChild(l_Opt);',
'    }',
'',
'}',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140812'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62391257140482610)
,p_plug_name=>'shuttl'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62991311113287883)
,p_plug_name=>'a'
,p_parent_plug_id=>wwv_flow_api.id(62391257140482610)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62991748539290287)
,p_plug_name=>'b'
,p_parent_plug_id=>wwv_flow_api.id(62391257140482610)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(62393039783555236)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(62991748539290287)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_cattributes=>'style="margin-top: 103%;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'begin',
'SELECT    Count(ESTJOBNO) DOCNUMBR into v_cunt FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P129_SERVNO',
'    and DOCNUMBR=:P129_NEXTESTIMATION;',
'if  v_cunt  > 0 then',
'return true;',
'else ',
'return false;',
'end if;',
'end;'))
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(63000117854745598)
,p_branch_name=>'clear page'
,p_branch_action=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:79::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(62393039783555236)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62391628541509325)
,p_name=>'P79_CITY_SHUTTLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(62991311113287883)
,p_prompt=>'Estimation Item'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEMDESC,ITEMCODE  from nmnegitm',
'where SRVCNOFK=:P79_SRVCNOFK',
'and DOCNUMBR=:P79_NEXTESTIMATION',
'and BOQREFER is null'))
,p_cSize=>150
,p_cMaxlength=>4000
,p_cHeight=>10
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'begin',
'SELECT    Count(ESTJOBNO) DOCNUMBR into v_cunt FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P129_SERVNO',
'    and DOCNUMBR=:P129_NEXTESTIMATION;',
'if  v_cunt  > 0 then',
'return true;',
'else ',
'return false;',
'end if;',
'end;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62392245108521319)
,p_name=>'P79_CITY_FILTER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(62391257140482610)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estimation Details'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DOCNUMBR||'' / ''||DOCTDATE||'' / ''||SRVCNOFK||'' / ''||NEGMASPK d  ',
'from nmnegmas',
'where  SRVCNOFK=100130',
'and DOCNUMBR=''EST00001'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color:blue;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62989739375248772)
,p_name=>'P79_NEXTESTIMATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(62391257140482610)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_NEXTESTIMATION.'
,p_prompt=>'Nextestimation'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62990019220248776)
,p_name=>'P79_SRVCNOFK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(62391257140482610)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_SERVNO.'
,p_prompt=>'Srvcnofk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62995502744430534)
,p_name=>'P79_NEGITMFK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(62391257140482610)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_NEGMASPK.'
,p_prompt=>'Negitmfk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62997319751504201)
,p_name=>'P79_TEST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(62391257140482610)
,p_prompt=>'Test'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63601460263127290)
,p_name=>'P79_ESTIMATION_DETAILS'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(62991311113287883)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estimation Details'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DOCNUMBR||'' / ''||DOCTDATE||'' / ''||SRVCNOFK||'' / ''||NEGMASPK d ',
'from nmnegmas',
'where NEGMASPK=:P79_NEGITMFK',
'and SRVCNOFK=:P79_SRVCNOFK'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64096256665805601)
,p_name=>'P79_MESSAGE'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(62991311113287883)
,p_item_default=>'Please Create Estimation job no.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'begin',
'SELECT    Count(ESTJOBNO) DOCNUMBR into v_cunt FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P129_SERVNO',
'    and DOCNUMBR=:P129_NEXTESTIMATION;',
'if  v_cunt  > 0 then',
'return false;',
'else ',
'return true;',
'end if;',
'end;'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(62989044338232472)
,p_computation_sequence=>10
,p_computation_item=>'P129_NEXTESTIMATION'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_NEXTESTIMATION.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(62989301286241119)
,p_computation_sequence=>10
,p_computation_item=>'P129_SERVNO'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_SERVNO.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(62995089781420597)
,p_computation_sequence=>10
,p_computation_item=>'P129_NEGMASPK'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_NEGMASPK.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(62392680069552942)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update BOQREFER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'    v_boqref   VARCHAR2 (200);',
'BEGIN',
'',
' IF NOT APEX_COLLECTION.COLLECTION_EXISTS(p_collection_name => ''ESTIMATE'')',
'  THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(p_collection_name => ''ESTIMATE'');',
'  END IF;',
'   l_selected := APEX_UTIL.STRING_TO_TABLE(:P79_CITY_SHUTTLE);',
'   SELECT ''TRN''',
'          || LPAD (NVL (MAX (dfn_char2number (NVL (boqrefer, 0))) + 1, 0),',
'                   8,',
'                   ''0'')',
'     INTO v_boqref',
'     FROM nmnegitm',
'    WHERE negitmfk = :P79_NEGITMFK AND compcode = :compcode;',
'   FOR i IN 1..l_selected.count ',
'  LOOP',
'  begin',
'    APEX_COLLECTION.ADD_MEMBER(',
'      p_collection_name => ''ESTIMATE'',',
'      p_c001 => l_selected(i)',
'    );',
'   :P79_TEST:=v_boqref;',
'   end; ',
'    ',
'    begin',
'    UPDATE nmnegitm',
'                     SET boqrefer = v_boqref',
'                   WHERE     NEGITMFK = :P79_NEGITMFK',
'                         AND SRVCNOFK = :P79_SRVCNOFK',
'                        AND ITEMCODE  IN (SELECT ',
'  c001',
'FROM apex_collections',
'WHERE collection_name = ''ESTIMATE'');',
'COMMIT;',
'end;',
' apex_collection.truncate_collection (p_collection_name => ''ESTIMATE'');',
'  END LOOP;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(62393039783555236)
,p_process_success_message=>'Estimation Track No. '
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  --',
'  -- Convert the colon separated string of values into',
'  -- a PL/SQL array ',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P79_CITY_SHUTTLE);',
'',
'  --',
'  -- Loop over array to insert department numbers and sysdate',
'  --',
'  SELECT ''TRN''',
'          || LPAD (NVL (MAX (dfn_char2number (NVL (boqrefer, 0))) + 1, 0),',
'                   8,',
'                   ''0'')',
'     INTO v_boqref',
'     FROM nmnegitm',
'    WHERE negitmfk = :P79_NEGITMFK AND compcode = :compcode;',
'    ',
'   :P79_TEST:=replace(:P79_CITY_SHUTTLE,'':'','','' ); ',
'',
'  FOR i IN 1..l_selected.count ',
'  LOOP',
'  ',
'  UPDATE nmnegitm',
'                     SET boqrefer = v_boqref',
'                   WHERE     NEGITMFK = :P79_NEGITMFK',
'                         AND SRVCNOFK = :P79_SRVCNOFK',
'                        AND ITEMCODE  IN (:P79_TEST);',
'                        ',
'                        ',
'  END LOOP;',
'   ',
'END;',
''))
);
wwv_flow_api.component_end;
end;
/
