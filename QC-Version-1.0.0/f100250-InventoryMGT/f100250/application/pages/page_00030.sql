prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'TS1'
,p_name=>'Search Results'
,p_step_title=>'Sample Database Application - Search Results'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'ul.sSearchResultsReport span.title span.highlight {',
'  background-color: #FFEA87;',
'  text-decoration: underline',
'  }',
'ul.sSearchResultsReport span.highlight {',
'  background-color: #FFEA87;',
'  }',
'</style>'))
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4178631556836020488)
,p_plug_name=>'Search Filters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4178632967117020490)
,p_plug_name=>'Search Results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c pls_integer := 0;',
'   l_detail varchar2(4000);',
'   i pls_integer;',
'   l pls_integer;',
'   l_max_rows    integer;',
'begin',
'l_max_rows := nvl(:P30_ROWS,10);',
'if :P30_SEARCH is null',
'and :P30_OPTIONS is null then',
'   sys.htp.p(''<p>''||',
'       apex_escape.html(''Please enter at least one search condition.'')||',
'       ''</p>'');',
'else',
'  --',
'  -- PUT YOUR QUERY HERE',
'  --',
'  for c1 in (select  1 dispay_seq',
'             , customer_id id',
'             , ''Customer'' type',
'             , cust_last_name||'', ''||cust_first_name title',
'             , cust_street_address1||'' ''||cust_street_address2||'', ''||cust_city||'' ''||cust_state||'' ''||cust_postal_code detail',
'             from DEMO_CUSTOMERS',
'             where (   instr(upper(cust_first_name),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(cust_last_name),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(cust_email),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(cust_street_address1),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(cust_street_address2),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(cust_city),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(cust_state),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(cust_postal_code),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(phone_number1),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(phone_number2),upper(:P30_SEARCH)) > 0 ',
'                    or :P30_SEARCH is null',
'                   )',
'             and instr(:P30_OPTIONS,''C'') > 0',
'             UNION',
'             select 2 display_seq',
'             , product_id id',
'             , ''Product'' type',
'             , product_name title',
'             , category||'' $''||list_price||'' ''||',
'               (case when length(product_description) > 50 then',
'                  substr(product_description,1,50)||''...''',
'                else',
'                  product_description',
'                end) detail',
'             from DEMO_PRODUCT_INFO',
'             where (   instr(upper(product_name),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(product_description),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(category),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(list_price),upper(:P30_SEARCH)) > 0 ',
'                    or :P30_SEARCH is null',
'                   )',
'             and instr(:P30_OPTIONS,''P'') > 0',
'             UNION',
'             select distinct 3 display_seq',
'             , o.order_id id',
'             , ''Order'' type',
'             , o.order_timestamp||'' $''||o.order_total title',
'             , c.cust_last_name||'', ''||c.cust_first_name detail',
'             from DEMO_ORDERS o',
'             ,    DEMO_CUSTOMERS c',
'             ,    DEMO_ORDER_ITEMS oi',
'             ,    DEMO_PRODUCT_INFO p',
'             where o.customer_id = c.customer_id',
'             and   o.order_id = oi.order_id',
'             and   oi.product_id = p.product_id',
'             and   (   instr(upper(o.order_total),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(o.order_timestamp),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(o.order_total),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(c.cust_first_name),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(c.cust_last_name),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(p.product_name),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(p.product_description),upper(:P30_SEARCH)) > 0 ',
'                    or instr(upper(p.category),upper(:P30_SEARCH)) > 0 ',
'                    or :P30_SEARCH is null',
'                   )',
'             and instr(:P30_OPTIONS,''O'') > 0',
'             UNION',
'             select  4 dispay_seq',
'             , customer_id id',
'             , ''Customer'' type',
'             , cust_last_name||'', ''||cust_first_name title',
'             , cust_street_address1||'' ''||cust_street_address2||'', ''||cust_city||'' ''||cust_state||'' ''||cust_postal_code detail',
'             from DEMO_CUSTOMERS',
'             where instr(upper(tags),upper(:P30_SEARCH)) > 0 ',
'             and instr(:P30_OPTIONS,''T'') > 0',
'             UNION',
'             select 4 display_seq',
'             , product_id id',
'             , ''Product'' type',
'             , product_name title',
'             , category||'' $''||list_price||'' ''||',
'               (case when length(product_description) > 50 then',
'                  substr(product_description,1,50)||''...''',
'                else',
'                  product_description',
'                end) detail',
'             from DEMO_PRODUCT_INFO',
'             where instr(upper(tags),upper(:P30_SEARCH)) > 0 ',
'             and instr(:P30_OPTIONS,''T'') > 0',
'             UNION',
'             select distinct 4 display_seq',
'             , o.order_id id',
'             , ''Order'' type',
'             , o.order_timestamp||'' $''||o.order_total title',
'             , c.cust_last_name||'', ''||c.cust_first_name detail',
'             from DEMO_ORDERS o',
'             ,    DEMO_CUSTOMERS c',
'             ,    DEMO_ORDER_ITEMS oi',
'             ,    DEMO_PRODUCT_INFO p',
'             where o.customer_id = c.customer_id',
'             and   o.order_id = oi.order_id',
'             and   oi.product_id = p.product_id',
'             and   instr(upper(o.tags),upper(:P30_SEARCH)) > 0 ',
'             and instr(:P30_OPTIONS,''T'') > 0',
'             order by 1',
'             ) loop',
'    c := c + 1;',
'    if c = 1 then',
'       sys.htp.p(''<ul class="sSearchResultsReport">'');',
'    end if;',
'    sys.htp.p(''<li>'');',
'    sys.htp.prn(''<span class="title">'');',
'    --',
'    -- DEFINE DRILL DOWN LINK HERE',
'    --',
'    if c1.type = ''Customer'' then',
'      sys.htp.prn(''<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':7:''||:APP_SESSION||'':::7:P7_CUSTOMER_ID,P7_BRANCH:''||apex_escape.html(c1.id)||'',30'')||''">'');',
'    elsif c1.type = ''Product'' then',
'      sys.htp.prn(''<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':6:''||:APP_SESSION||'':::6:P6_PRODUCT_ID,P6_BRANCH:''||apex_escape.html(c1.id)||'',30'')||''">'');',
'    elsif c1.type = ''Order'' then',
'      sys.htp.prn(''<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':29:''||:APP_SESSION||'':SEARCH::29:P29_ORDER_ID:''||apex_escape.html(c1.id))||''">'');',
'    end if;',
'',
'    --',
'    -- ASSIGN PRIMAY ATTRIBUTE HERE, REFERENCE QUERY COLUMN',
'    --',
'    l_detail := c1.title;',
'    --',
'    i := instr(upper(l_detail),upper(:P30_SEARCH));',
'    if  i > 0 then',
'       l := length(:P30_SEARCH);',
'       l_detail := apex_escape.html(substr(l_detail,1,i-1))||',
'          ''<span class="highlight">''||',
'          apex_escape.html(substr(l_detail,i,l))||''</span>''||',
'          apex_escape.html(substr(l_detail,i+l));',
'    end if;',
'    sys.htp.prn(l_detail);                ',
'    sys.htp.prn(''</a></span>'');',
'    --',
'    --',
'    sys.htp.prn(''<span class="description">'');',
'    --',
'    -- ASSIGN SECONDARY ATTRIBUTE HERE, REFERENCE QUERY COLUMN',
'    -- ',
'    l_detail := c1.detail;',
'    --',
'    i := instr(upper(l_detail),upper(:P30_SEARCH));',
'    if  i > 0 then',
'       l := length(:P30_SEARCH);',
'       l_detail := apex_escape.html(substr(l_detail,1,i-1))||',
'          ''<span class="highlight">''||',
'          apex_escape.html(substr(l_detail,i,l))||''</span>''||',
'          apex_escape.html(substr(l_detail,i+l));',
'    end if;',
'    sys.htp.prn(l_detail);',
'    sys.htp.prn(''</span>'');',
'    sys.htp.prn(''</li>'');',
'    if c = l_max_rows then',
'       exit;',
'    end if;',
'',
'  end loop;',
'  if c > 0 then ',
'    sys.htp.p(''</ul>'');',
'    sys.htp.p(''<p>''||c||'' results found.</p>'');',
'  else ',
'    sys.htp.p(''<p>No data found matching your search criteria.</p>'');',
'  end if;',
'end if;',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4178631952926020488)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4178631556836020488)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Reset'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:1,30::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4178631767902020488)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(4178631556836020488)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'BOTTOM'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(4178633642005020500)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 14-DEC-2011 09:16 by SHAKEEB'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4178632158733020488)
,p_name=>'P30_ROWS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4178631556836020488)
,p_item_default=>'10'
,p_prompt=>'Rows'
,p_source=>'10'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROWS'
,p_lov=>'.'||wwv_flow_api.id(4178633752779020502)||'.'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4178632352193020489)
,p_name=>'P30_OPTIONS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4178631556836020488)
,p_item_default=>'C:P:O:T'
,p_prompt=>'Options'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Customers;C,Products;P,Orders;O,Tags;T'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'VERTICAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4178632565044020489)
,p_name=>'P30_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4178631556836020488)
,p_prompt=>'Search'
,p_source=>'&P1_SEARCH.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_css_classes=>'fullWidth'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_restricted_characters=>'WEB_SAFE'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.component_end;
end;
/
