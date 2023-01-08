prompt --application/shared_components/navigation/lists/general_ledger
begin
--   Manifest
--     LIST: General Ledger
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(38384774925780560)
,p_name=>'General Ledger'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NULL,',
'       A.PROGDESC label,',
'       ''javascript:$s(''''P321_REPNAM'''', '''''' || PROGNAME || '''''')'' target,',
'       ''YES'' is_current,',
'       ''#APP_IMAGES#del.gif'' image,',
'       ''width="20" height="20"'' image_attrib,',
'       PROGNAME image_alt',
'  FROM symenmas a',
' WHERE A.COMPCODE = ''001'' AND A.PROGTYPE = ''R''',
'       AND A.PROGNAME IN',
'              (''acbasexp'',',
'               ''acdcexp2'',',
'               ''acdocexp'',',
'               ''acgacba1'',',
'               ''acoptexp'',',
'               ''acgtbdt1'',',
'               ''acgacjo1'',',
'               ''acgjbac1'',',
'               ''acgacdt1'',',
'               ''acgcosl1'',',
'               ''acgdcas1'',',
'               ''aclvltrl'',',
'               ''acjouvou'',',
'               ''acjvouch'',',
'               ''acjvsmry'',',
'               ''actrbldt'',',
'               ''actrblsm'',',
'               ''acpayrcp'',',
'               ''acpyrcsm'',',
'               ''acpticsh'',',
'               ''acptyled'',',
'               ''acjvoait'',',
'               ''acptyadv'',',
'               ''acbnkdps'',',
'               ''accshdps'',',
'               ''accrejnl'',',
'               ''acjvouch'',',
'               ''acdbtjnl'',',
'               ''acjvcgen'',',
'               ''acjvdcnt'',',
'               ''acjvsmry'',',
'               ''acjouvou'',',
'               ''acpayvou'',',
'               ''acvouchr'',',
'               ''acvoulsr'',',
'               ''acptyadv'',',
'               ''acadtcfr'',',
'               ''acrfnreq'',',
'               ''acadjfnd'',',
'               ''acsuspnd'',',
'               ''acbgcsfl'',',
'               ''accshflw'',',
'               ''acbalanc'',',
'               ''acblnsht'',',
'               ''acincme2'',',
'               ''acprftls'',',
'               ''acincome'',',
'               ''acovrdue'',',
'               ''acchkpmo'',',
'               ''acpmnadj'',',
'               ''acpmosum'',',
'               ''acpmtord'',',
'               ''acpmtors'');'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
