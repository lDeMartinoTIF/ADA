import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ComuniITA Group Code

class ComuniITAGroup {
  static String getBaseUrl() =>
      'https://axqvoqvbfjpaamphztgd.functions.supabase.co/';
  static Map<String, String> headers = {};
  static ComuniCall comuniCall = ComuniCall();
  static ProvinceCall provinceCall = ProvinceCall();
}

class ComuniCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ComuniITAGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Comuni',
      apiUrl: '${baseUrl}comuni',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? jpNome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ProvinceCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ComuniITAGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Province',
      apiUrl: '${baseUrl}province/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? jpNome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End ComuniITA Group Code

/// Start ADAapi Group Code

class ADAapiGroup {
  static String getBaseUrl() => 'https://www.app.tecnolife.com';
  static Map<String, String> headers = {};
  static CreateLingueLINGUECreatePostCall createLingueLINGUECreatePostCall =
      CreateLingueLINGUECreatePostCall();
  static GetLingueLINGUEGetLINGUAGetCall getLingueLINGUEGetLINGUAGetCall =
      GetLingueLINGUEGetLINGUAGetCall();
  static UpdateLingueLINGUEUpdateLINGUAPutCall
      updateLingueLINGUEUpdateLINGUAPutCall =
      UpdateLingueLINGUEUpdateLINGUAPutCall();
  static DeleteLinguaLINGUEDeleteLINGUADeleteCall
      deleteLinguaLINGUEDeleteLINGUADeleteCall =
      DeleteLinguaLINGUEDeleteLINGUADeleteCall();
  static PSWSQLInsertTokenCall pSWSQLInsertTokenCall = PSWSQLInsertTokenCall();
  static GetAllPswsqlPSWSQLGetAllPostCall getAllPswsqlPSWSQLGetAllPostCall =
      GetAllPswsqlPSWSQLGetAllPostCall();
  static GetPswsqlPSWSQLGetTokenGetCall getPswsqlPSWSQLGetTokenGetCall =
      GetPswsqlPSWSQLGetTokenGetCall();
  static UpdatePswsqlPSWSQLUpdateTokenPutCall
      updatePswsqlPSWSQLUpdateTokenPutCall =
      UpdatePswsqlPSWSQLUpdateTokenPutCall();
  static DeletePswsqlPSWSQLDeleteTokenDeleteCall
      deletePswsqlPSWSQLDeleteTokenDeleteCall =
      DeletePswsqlPSWSQLDeleteTokenDeleteCall();
  static InsertCustomBotCsvCUSTOMBOTCSVInsertPostCall
      insertCustomBotCsvCUSTOMBOTCSVInsertPostCall =
      InsertCustomBotCsvCUSTOMBOTCSVInsertPostCall();
  static GetAllCustomBotCsvCUSTOMBOTCSVGetAllPostCall
      getAllCustomBotCsvCUSTOMBOTCSVGetAllPostCall =
      GetAllCustomBotCsvCUSTOMBOTCSVGetAllPostCall();
  static GetCustomBotCsvCUSTOMBOTCSVGetTokenGetCall
      getCustomBotCsvCUSTOMBOTCSVGetTokenGetCall =
      GetCustomBotCsvCUSTOMBOTCSVGetTokenGetCall();
  static UpdateCustomBotCsvCUSTOMBOTCSVUpdateTokenPutCall
      updateCustomBotCsvCUSTOMBOTCSVUpdateTokenPutCall =
      UpdateCustomBotCsvCUSTOMBOTCSVUpdateTokenPutCall();
  static DeleteCustomBotCsvCUSTOMBOTCSVDeleteTokenDeleteCall
      deleteCustomBotCsvCUSTOMBOTCSVDeleteTokenDeleteCall =
      DeleteCustomBotCsvCUSTOMBOTCSVDeleteTokenDeleteCall();
  static UploadCsvCUSTOMBOTCSVUploadCsvPostCall
      uploadCsvCUSTOMBOTCSVUploadCsvPostCall =
      UploadCsvCUSTOMBOTCSVUploadCsvPostCall();
  static UpdateCsvCUSTOMBOTCSVUpdateCsvPutCall
      updateCsvCUSTOMBOTCSVUpdateCsvPutCall =
      UpdateCsvCUSTOMBOTCSVUpdateCsvPutCall();
  static ReadCsvCUSTOMBOTCSVReadCsvTokenFilenameGetCall
      readCsvCUSTOMBOTCSVReadCsvTokenFilenameGetCall =
      ReadCsvCUSTOMBOTCSVReadCsvTokenFilenameGetCall();
  static InsertCalendarCall insertCalendarCall = InsertCalendarCall();
  static GetAllCalendarCall getAllCalendarCall = GetAllCalendarCall();
  static GetCalendarCALENDARGetTokenGetCall getCalendarCALENDARGetTokenGetCall =
      GetCalendarCALENDARGetTokenGetCall();
  static GetCalendarCALENDARGetOneIdGetCall getCalendarCALENDARGetOneIdGetCall =
      GetCalendarCALENDARGetOneIdGetCall();
  static UpdateCalendarCALENDARUpdateTokenPutCall
      updateCalendarCALENDARUpdateTokenPutCall =
      UpdateCalendarCALENDARUpdateTokenPutCall();
  static DeleteCalendarCALENDARDeleteTokenDeleteCall
      deleteCalendarCALENDARDeleteTokenDeleteCall =
      DeleteCalendarCALENDARDeleteTokenDeleteCall();
  static GetBufferOrariCALENDARGetBufferOrariPostCall
      getBufferOrariCALENDARGetBufferOrariPostCall =
      GetBufferOrariCALENDARGetBufferOrariPostCall();
  static InsertAnagraficaCall insertAnagraficaCall = InsertAnagraficaCall();
  static GetAllAnagraficaByTokenCall getAllAnagraficaByTokenCall =
      GetAllAnagraficaByTokenCall();
  static GetAnagraficaByTokenCall getAnagraficaByTokenCall =
      GetAnagraficaByTokenCall();
  static UpdateAnagraficaByTokenCall updateAnagraficaByTokenCall =
      UpdateAnagraficaByTokenCall();
  static UpdateAnagraficaANAGRAFICAUpdateSelectTokenPutCall
      updateAnagraficaANAGRAFICAUpdateSelectTokenPutCall =
      UpdateAnagraficaANAGRAFICAUpdateSelectTokenPutCall();
  static DeleteAnagraficaANAGRAFICADeleteTokenDeleteCall
      deleteAnagraficaANAGRAFICADeleteTokenDeleteCall =
      DeleteAnagraficaANAGRAFICADeleteTokenDeleteCall();
  static GetAllPrenotazioniCall getAllPrenotazioniCall =
      GetAllPrenotazioniCall();
  static InsertPrenotazionePRENOTAZIONIInsertPostCall
      insertPrenotazionePRENOTAZIONIInsertPostCall =
      InsertPrenotazionePRENOTAZIONIInsertPostCall();
  static GetAllPrenotazioniClienteCall getAllPrenotazioniClienteCall =
      GetAllPrenotazioniClienteCall();
  static GetAppoitmentPRENOTAZIONIGetOneGetCall
      getAppoitmentPRENOTAZIONIGetOneGetCall =
      GetAppoitmentPRENOTAZIONIGetOneGetCall();
  static UpdateAppoitmentPRENOTAZIONIUpdateTOKENPutCall
      updateAppoitmentPRENOTAZIONIUpdateTOKENPutCall =
      UpdateAppoitmentPRENOTAZIONIUpdateTOKENPutCall();
  static DeleteAppoitmentPRENOTAZIONIDeleteDeleteCall
      deleteAppoitmentPRENOTAZIONIDeleteDeleteCall =
      DeleteAppoitmentPRENOTAZIONIDeleteDeleteCall();
  static DeletePrenotazionePRENOTAZIONIDeletePrenotazioniCANCELLAZIONELOGICADeleteCall
      deletePrenotazionePRENOTAZIONIDeletePrenotazioniCANCELLAZIONELOGICADeleteCall =
      DeletePrenotazionePRENOTAZIONIDeletePrenotazioniCANCELLAZIONELOGICADeleteCall();
  static GetAllAppointmentsPRENOTAZIONIGetAllPrenotazioniPostCall
      getAllAppointmentsPRENOTAZIONIGetAllPrenotazioniPostCall =
      GetAllAppointmentsPRENOTAZIONIGetAllPrenotazioniPostCall();
  static GetAllAppoitmentClientePRENOTAZIONIGetAllClientePostCall
      getAllAppoitmentClientePRENOTAZIONIGetAllClientePostCall =
      GetAllAppoitmentClientePRENOTAZIONIGetAllClientePostCall();
  static GetDatePRENOTAZIONIGetDatePostCall getDatePRENOTAZIONIGetDatePostCall =
      GetDatePRENOTAZIONIGetDatePostCall();
  static DeletePrenPRENOTAZIONIDeletePrenDeleteCall
      deletePrenPRENOTAZIONIDeletePrenDeleteCall =
      DeletePrenPRENOTAZIONIDeletePrenDeleteCall();
  static GetAppoitmentPRENOTAZIONIGetOneDataGetCall
      getAppoitmentPRENOTAZIONIGetOneDataGetCall =
      GetAppoitmentPRENOTAZIONIGetOneDataGetCall();
  static InsertClientiCall insertClientiCall = InsertClientiCall();
  static InsertSelectClientiCLIENTIInsertSelectPostCall
      insertSelectClientiCLIENTIInsertSelectPostCall =
      InsertSelectClientiCLIENTIInsertSelectPostCall();
  static InsertSelectClientiCLIENTIInsertSelectTelefonoPostCall
      insertSelectClientiCLIENTIInsertSelectTelefonoPostCall =
      InsertSelectClientiCLIENTIInsertSelectTelefonoPostCall();
  static GetAllClientiCall getAllClientiCall = GetAllClientiCall();
  static GetClientiCLIENTIGetTokenGetCall getClientiCLIENTIGetTokenGetCall =
      GetClientiCLIENTIGetTokenGetCall();
  static GetClientiByMailCLIENTIGetByDataMailPostCall
      getClientiByMailCLIENTIGetByDataMailPostCall =
      GetClientiByMailCLIENTIGetByDataMailPostCall();
  static GetClientiByTelefonoCLIENTIGetByDataTelefonoGetCall
      getClientiByTelefonoCLIENTIGetByDataTelefonoGetCall =
      GetClientiByTelefonoCLIENTIGetByDataTelefonoGetCall();
  static UpdateClientiCLIENTIUpdateTokenPutCall
      updateClientiCLIENTIUpdateTokenPutCall =
      UpdateClientiCLIENTIUpdateTokenPutCall();
  static UpdateClientiSelectCLIENTIUpdateSelectTokenPutCall
      updateClientiSelectCLIENTIUpdateSelectTokenPutCall =
      UpdateClientiSelectCLIENTIUpdateSelectTokenPutCall();
  static DeleteClientiCLIENTIDeleteTokenDeleteCall
      deleteClientiCLIENTIDeleteTokenDeleteCall =
      DeleteClientiCLIENTIDeleteTokenDeleteCall();
  static CreateTipiServizioTIPISERVIZIOCreatePostCall
      createTipiServizioTIPISERVIZIOCreatePostCall =
      CreateTipiServizioTIPISERVIZIOCreatePostCall();
  static ReadAllTipiServizioTIPISERVIZIOTipiservizioGetCall
      readAllTipiServizioTIPISERVIZIOTipiservizioGetCall =
      ReadAllTipiServizioTIPISERVIZIOTipiservizioGetCall();
  static ReadTipiServizioTIPISERVIZIOTipiservizioTipoServizioGetCall
      readTipiServizioTIPISERVIZIOTipiservizioTipoServizioGetCall =
      ReadTipiServizioTIPISERVIZIOTipiservizioTipoServizioGetCall();
  static UpdateTipiServizioTIPISERVIZIOTipiservizioTipoServizioPutCall
      updateTipiServizioTIPISERVIZIOTipiservizioTipoServizioPutCall =
      UpdateTipiServizioTIPISERVIZIOTipiservizioTipoServizioPutCall();
  static DeleteTipiServizioTIPISERVIZIOTipiservizioTipoServizioDeleteCall
      deleteTipiServizioTIPISERVIZIOTipiservizioTipoServizioDeleteCall =
      DeleteTipiServizioTIPISERVIZIOTipiservizioTipoServizioDeleteCall();
  static GetAllPagamentiPAGAMENTIGetAllPostCall
      getAllPagamentiPAGAMENTIGetAllPostCall =
      GetAllPagamentiPAGAMENTIGetAllPostCall();
  static InsertPagamentiPAGAMENTIPostPostCall
      insertPagamentiPAGAMENTIPostPostCall =
      InsertPagamentiPAGAMENTIPostPostCall();
  static GetPagamentiPAGAMENTIGetTokenGetCall
      getPagamentiPAGAMENTIGetTokenGetCall =
      GetPagamentiPAGAMENTIGetTokenGetCall();
  static UpdatePagamentiPAGAMENTIUpdateTokenPutCall
      updatePagamentiPAGAMENTIUpdateTokenPutCall =
      UpdatePagamentiPAGAMENTIUpdateTokenPutCall();
  static DeletePagamentiPAGAMENTIDeleteTokenDeleteCall
      deletePagamentiPAGAMENTIDeleteTokenDeleteCall =
      DeletePagamentiPAGAMENTIDeleteTokenDeleteCall();
  static CheckingLoginLoginLoginCheckPostCall
      checkingLoginLoginLoginCheckPostCall =
      CheckingLoginLoginLoginCheckPostCall();
  static ConfirmEmailLoginLoginVerifyPutCall
      confirmEmailLoginLoginVerifyPutCall =
      ConfirmEmailLoginLoginVerifyPutCall();
  static DeleteLoginLoginDeleteDeleteCall deleteLoginLoginDeleteDeleteCall =
      DeleteLoginLoginDeleteDeleteCall();
  static GetLoginLoginGetTokenGetCall getLoginLoginGetTokenGetCall =
      GetLoginLoginGetTokenGetCall();
  static GetAllLoginLoginGetAllGetCall getAllLoginLoginGetAllGetCall =
      GetAllLoginLoginGetAllGetCall();
  static ConfirmEmailLoginLoginVerifyCheckTokenGetCall
      confirmEmailLoginLoginVerifyCheckTokenGetCall =
      ConfirmEmailLoginLoginVerifyCheckTokenGetCall();
  static InsertCustomBotCUSTOMBOTInsertPostCall
      insertCustomBotCUSTOMBOTInsertPostCall =
      InsertCustomBotCUSTOMBOTInsertPostCall();
  static GetAllCustomBotCall getAllCustomBotCall = GetAllCustomBotCall();
  static GetAllCustomBotIdCUSTOMBOTGetAllIdGetCall
      getAllCustomBotIdCUSTOMBOTGetAllIdGetCall =
      GetAllCustomBotIdCUSTOMBOTGetAllIdGetCall();
  static GetCustomBotByTokenIdPrgCUSTOMBOTGetIdPrgGetCall
      getCustomBotByTokenIdPrgCUSTOMBOTGetIdPrgGetCall =
      GetCustomBotByTokenIdPrgCUSTOMBOTGetIdPrgGetCall();
  static GetCustomBotByTokenCUSTOMBOTGetTokenGetCall
      getCustomBotByTokenCUSTOMBOTGetTokenGetCall =
      GetCustomBotByTokenCUSTOMBOTGetTokenGetCall();
  static DeleteCustomBotCUSTOMBOTDeleteTokenDeleteCall
      deleteCustomBotCUSTOMBOTDeleteTokenDeleteCall =
      DeleteCustomBotCUSTOMBOTDeleteTokenDeleteCall();
  static GetDurataServizioCalendarCUSTOMBOTGetDurataServizioPostCall
      getDurataServizioCalendarCUSTOMBOTGetDurataServizioPostCall =
      GetDurataServizioCalendarCUSTOMBOTGetDurataServizioPostCall();
  static GetFreeSlotCALCOLATOREGetFreeSlotsPostCall
      getFreeSlotCALCOLATOREGetFreeSlotsPostCall =
      GetFreeSlotCALCOLATOREGetFreeSlotsPostCall();
  static ReadRootGetCall readRootGetCall = ReadRootGetCall();
  static InsertTipoServizioCall insertTipoServizioCall =
      InsertTipoServizioCall();
  static GetTipoServizioCall getTipoServizioCall = GetTipoServizioCall();
  static DeleteTipoServizioCall deleteTipoServizioCall =
      DeleteTipoServizioCall();
  static UpdateTipoServizioCall updateTipoServizioCall =
      UpdateTipoServizioCall();
  static GetAllTipiServizioCall getAllTipiServizioCall =
      GetAllTipiServizioCall();
  static InsertTipiServiziCall insertTipiServiziCall = InsertTipiServiziCall();
  static ADAchatbotCall aDAchatbotCall = ADAchatbotCall();
}

class CreateLingueLINGUECreatePostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "LINGUA": "",
  "DESCRIZIONE_LINGUA": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_lingue_LINGUE_create_post',
      apiUrl: '${baseUrl}/LINGUE/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetLingueLINGUEGetLINGUAGetCall {
  Future<ApiCallResponse> call({
    String? lingua = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_lingue_LINGUE_get__LINGUA__get',
      apiUrl: '${baseUrl}/LINGUE/get/${lingua}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateLingueLINGUEUpdateLINGUAPutCall {
  Future<ApiCallResponse> call({
    String? lingua = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "LINGUA": "",
  "DESCRIZIONE_LINGUA": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update_lingue_LINGUE_update__LINGUA__put',
      apiUrl: '${baseUrl}/LINGUE/update/${lingua}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteLinguaLINGUEDeleteLINGUADeleteCall {
  Future<ApiCallResponse> call({
    String? lingua = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_lingua_LINGUE_delete__LINGUA__delete',
      apiUrl: '${baseUrl}/LINGUE/delete/${lingua}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PSWSQLInsertTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PSWSQL Insert Token',
      apiUrl: '${baseUrl}/PSWSQL/conversation_token',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllPswsqlPSWSQLGetAllPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get_all_pswsql_PSWSQL_get_all_post',
      apiUrl: '${baseUrl}/PSWSQL/get_all',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPswsqlPSWSQLGetTokenGetCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_pswsql_PSWSQL_get__token__get',
      apiUrl: '${baseUrl}/PSWSQL/get/${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePswsqlPSWSQLUpdateTokenPutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "MYSQL_HOST_NAME": "",
  "MYSQL_DATABASE": "",
  "MYSQL_TCP_PORT": "",
  "LIQUIBASE_DB_USERNAME": "",
  "LIQUIBASE_DB_PASSWORD": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update_pswsql_PSWSQL_update__token__put',
      apiUrl: '${baseUrl}/PSWSQL/update/${token}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePswsqlPSWSQLDeleteTokenDeleteCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_pswsql_PSWSQL_delete__token__delete',
      apiUrl: '${baseUrl}/PSWSQL/delete/${token}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertCustomBotCsvCUSTOMBOTCSVInsertPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "TITOLO_CSV": "",
  "CSV_PATH": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insert_custom_bot_csv_CUSTOM_BOT_CSV_insert_post',
      apiUrl: '${baseUrl}/CUSTOM_BOT_CSV/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllCustomBotCsvCUSTOMBOTCSVGetAllPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get_all_custom_bot_csv_CUSTOM_BOT_CSV_get_all_post',
      apiUrl: '${baseUrl}/CUSTOM_BOT_CSV/get_all',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCustomBotCsvCUSTOMBOTCSVGetTokenGetCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_custom_bot_csv_CUSTOM_BOT_CSV_get__token__get',
      apiUrl: '${baseUrl}/CUSTOM_BOT_CSV/get/${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateCustomBotCsvCUSTOMBOTCSVUpdateTokenPutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "TITOLO_CSV": "",
  "CSV_PATH": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update_custom_bot_csv_CUSTOM_BOT_CSV_update__token__put',
      apiUrl: '${baseUrl}/CUSTOM_BOT_CSV/update/${token}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCustomBotCsvCUSTOMBOTCSVDeleteTokenDeleteCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_custom_bot_csv_CUSTOM_BOT_CSV_delete__token__delete',
      apiUrl: '${baseUrl}/CUSTOM_BOT_CSV/delete/${token}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadCsvCUSTOMBOTCSVUploadCsvPostCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'upload_csv_CUSTOM_BOT_CSV_upload_csv_post',
      apiUrl: '${baseUrl}/CUSTOM_BOT_CSV/upload_csv',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'token': token,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateCsvCUSTOMBOTCSVUpdateCsvPutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'update_csv_CUSTOM_BOT_CSV_update_csv_put',
      apiUrl: '${baseUrl}/CUSTOM_BOT_CSV/update_csv',
      callType: ApiCallType.PUT,
      headers: {},
      params: {
        'token': token,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadCsvCUSTOMBOTCSVReadCsvTokenFilenameGetCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? filename = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'read_csv_CUSTOM_BOT_CSV_read_csv__token___filename__get',
      apiUrl: '${baseUrl}/CUSTOM_BOT_CSV/read_csv/${token}/${filename}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertCalendarCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? mail = '',
    String? nomeCalendario = '',
    String? buffer = '',
    String? lunediX = '',
    String? lunediDa = '',
    String? lunediA = '',
    String? lunediPausaDa = '',
    String? lunediPausaA = '',
    String? martediX = '',
    String? martediDa = '',
    String? martediA = '',
    String? martediPausaDa = '',
    String? martediPausaA = '',
    String? mercolediX = '',
    String? mercolediDa = '',
    String? mercolediA = '',
    String? mercolediPausaDa = '',
    String? mercolediPausaA = '',
    String? giovediX = '',
    String? giovediDa = '',
    String? giovediA = '',
    String? giovediPausaDa = '',
    String? giovediPausaA = '',
    String? venerdiX = '',
    String? venerdiDa = '',
    String? venerdiA = '',
    String? venerdiPausaDa = '',
    String? venerdiPausaA = '',
    String? sabatoX = '',
    String? sabatoDa = '',
    String? sabatoA = '',
    String? sabatoPausaDa = '',
    String? sabatoPausaA = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "${escapeStringForJson(token)}",
  "MAIL": "${escapeStringForJson(mail)}",
  "NOME_CALENDARIO": "${escapeStringForJson(nomeCalendario)}",
  "BUFFER": "${escapeStringForJson(buffer)}",
  "LUNEDI_X": "${escapeStringForJson(lunediX)}",
  "LUNEDI_DA": "${escapeStringForJson(lunediDa)}",
  "LUNEDI_A": "${escapeStringForJson(lunediA)}",
  "LUNEDI_PAUSA_DA": "${escapeStringForJson(lunediPausaDa)}",
  "LUNEDI_PAUSA_A": "${escapeStringForJson(lunediPausaA)}",
  "MARTEDI_X": "${escapeStringForJson(martediX)}",
  "MARTEDI_DA": "${escapeStringForJson(martediDa)}",
  "MARTEDI_A": "${escapeStringForJson(martediA)}",
  "MARTEDI_PAUSA_DA": "${escapeStringForJson(martediPausaDa)}",
  "MARTEDI_PAUSA_A": "${escapeStringForJson(martediPausaA)}",
  "MERCOLEDI_X": "${escapeStringForJson(mercolediX)}",
  "MERCOLEDI_DA": "${escapeStringForJson(mercolediDa)}",
  "MERCOLEDI_A": "${escapeStringForJson(mercolediA)}",
  "MERCOLEDI_PAUSA_DA": "${escapeStringForJson(mercolediPausaDa)}",
  "MERCOLEDI_PAUSA_A": "${escapeStringForJson(mercolediPausaA)}",
  "GIOVEDI_X": "${escapeStringForJson(giovediX)}",
  "GIOVEDI_DA": "${escapeStringForJson(giovediDa)}",
  "GIOVEDI_A": "${escapeStringForJson(giovediA)}",
  "GIOVEDI_PAUSA_DA": "${escapeStringForJson(giovediPausaDa)}",
  "GIOVEDI_PAUSA_A": "${escapeStringForJson(giovediPausaA)}",
  "VENERDI_X": "${escapeStringForJson(venerdiX)}",
  "VENERDI_DA": "${escapeStringForJson(venerdiDa)}",
  "VENERDI_A": "${escapeStringForJson(venerdiA)}",
  "VENERDI_PAUSA_DA": "${escapeStringForJson(venerdiPausaDa)}",
  "VENERDI_PAUSA_A": "${escapeStringForJson(venerdiPausaA)}",
  "SABATO_X": "${escapeStringForJson(sabatoX)}",
  "SABATO_DA": "${escapeStringForJson(sabatoDa)}",
  "SABATO_A": "${escapeStringForJson(sabatoA)}",
  "SABATO_PAUSA_DA": "${escapeStringForJson(sabatoPausaDa)}",
  "SABATO_PAUSA_A": "${escapeStringForJson(sabatoPausaA)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert Calendar',
      apiUrl: '${baseUrl}/CALENDAR/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllCalendarCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Calendar',
      apiUrl: '${baseUrl}/CALENDAR/get_all',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic? jspAllData(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
  String? jspNomeCalendario(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].NOME_CALENDARIO''',
      ));
  String? jspLunediX(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].LUNEDI_X''',
      ));
  String? jspMartediX(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].MARTEDI_X''',
      ));
  String? jspMercolediX(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].MERCOLEDI_X''',
      ));
  String? jspGiovediX(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].GIOVEDI_X''',
      ));
  String? jspVenerdiX(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].VENERDI_X''',
      ));
  String? jspSabatoX(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].SABATO_X''',
      ));
}

class GetCalendarCALENDARGetTokenGetCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_calendar_CALENDAR_get__token__get',
      apiUrl: '${baseUrl}/CALENDAR/get/${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCalendarCALENDARGetOneIdGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_calendar_CALENDAR_get_one_id_get',
      apiUrl: '${baseUrl}/CALENDAR/get_one_id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateCalendarCALENDARUpdateTokenPutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "MAIL": "",
  "CALENDARIO_PRG": "",
  "NOME_CALENDARIO": "",
  "BUFFER": "",
  "LUNEDI_X": "",
  "LUNEDI_DA": "",
  "LUNEDI_A": "",
  "LUNEDI_PAUSA_DA": "",
  "LUNEDI_PAUSA_A": "",
  "MARTEDI_X": "",
  "MARTEDI_DA": "",
  "MARTEDI_A": "",
  "MARTEDI_PAUSA_DA": "",
  "MARTEDI_PAUSA_A": "",
  "MERCOLEDI_X": "",
  "MERCOLEDI_DA": "",
  "MERCOLEDI_A": "",
  "MERCOLEDI_PAUSA_DA": "",
  "MERCOLEDI_PAUSA_A": "",
  "GIOVEDI_X": "",
  "GIOVEDI_DA": "",
  "GIOVEDI_A": "",
  "GIOVEDI_PAUSA_DA": "",
  "GIOVEDI_PAUSA_A": "",
  "VENERDI_X": "",
  "VENERDI_DA": "",
  "VENERDI_A": "",
  "VENERDI_PAUSA_DA": "",
  "VENERDI_PAUSA_A": "",
  "SABATO_X": "",
  "SABATO_DA": "",
  "SABATO_A": "",
  "SABATO_PAUSA_DA": "",
  "SABATO_PAUSA_A": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update_calendar_CALENDAR_update__token__put',
      apiUrl: '${baseUrl}/CALENDAR/update/${token}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCalendarCALENDARDeleteTokenDeleteCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_calendar_CALENDAR_delete__token__delete',
      apiUrl: '${baseUrl}/CALENDAR/delete/${token}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBufferOrariCALENDARGetBufferOrariPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get_buffer_orari_CALENDAR_get_buffer_orari_post',
      apiUrl: '${baseUrl}/CALENDAR/get_buffer_orari',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertAnagraficaCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? mail = '',
    String? sesso = '',
    String? nome = '',
    String? cognome = '',
    String? numTelWp = '',
    String? numTel = '',
    String? dataNascita = '',
    String? luogoNascita = '',
    String? nomeAzienda = '',
    String? viaAzienda = '',
    String? cittaAzienda = '',
    String? provinciaAzienda = '',
    String? codiceFiscale = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "${escapeStringForJson(token)}",
  "MAIL": "${escapeStringForJson(mail)}",
  "NOME": "${escapeStringForJson(nome)}",
  "SESSO": "${escapeStringForJson(sesso)}",
  "COGNOME": "${escapeStringForJson(cognome)}",
  "NUM_TEL_WP": "${escapeStringForJson(numTelWp)}",
  "NUM_TEL": "${escapeStringForJson(numTel)}",
  "DATA_NASCITA": "${escapeStringForJson(dataNascita)}",
  "LUOGO_NASCITA": "${escapeStringForJson(luogoNascita)}",
  "NOME_AZIENDA": "${escapeStringForJson(nomeAzienda)}",
  "VIA_AZIENDA": "${escapeStringForJson(viaAzienda)}",
  "CITTA_AZIENDA": "${escapeStringForJson(cittaAzienda)}",
  "PROVINCIA_AZIENDA": "${escapeStringForJson(provinciaAzienda)}",
  "CODICE_FISCALE": "${escapeStringForJson(codiceFiscale)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert Anagrafica',
      apiUrl: '${baseUrl}/ANAGRAFICA/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllAnagraficaByTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetAll Anagrafica ByToken',
      apiUrl: '${baseUrl}/ANAGRAFICA/get_all',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? jspToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].TOKEN''',
      ));
  String? jspMail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].MAIL''',
      ));
  String? jspSesso(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].SESSO''',
      ));
  String? jspNome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].NOME''',
      ));
  String? jspCognome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].COGNOME''',
      ));
  String? jspNumTelWP(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].NUM_TEL_WP''',
      ));
  String? jspNumTel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].NUM_TEL''',
      ));
  String? jspDataNascita(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].DATA_NASCITA''',
      ));
  String? jspLuogoNascita(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].LUOGO_NASCITA''',
      ));
  String? jspNomeAzienda(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].NOME_AZIENDA''',
      ));
  String? jspViaAzienda(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].VIA_AZIENDA''',
      ));
  String? jspCittaAzienda(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].CITTA_AZIENDA''',
      ));
  String? jspProvinciaAzienda(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].PROVINCIA_AZIENDA''',
      ));
  String? jspCodiceFiscale(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].CODICE_FISCALE''',
      ));
}

class GetAnagraficaByTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Anagrafica ByToken',
      apiUrl: '${baseUrl}/ANAGRAFICA/get/${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAnagraficaByTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? mail = '',
    String? sesso = '',
    String? nome = '',
    String? cognome = '',
    String? numTelWp = '',
    String? numTel = '',
    String? dataNascita = '',
    String? luogoNascita = '',
    String? nomeAzienda = '',
    String? viaAzienda = '',
    String? cittaAzienda = '',
    String? provinciaAzienda = '',
    String? codiceFiscale = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "${escapeStringForJson(token)}",
  "SESSO": "${escapeStringForJson(sesso)}",
  "MAIL": "${escapeStringForJson(mail)}",
  "NOME": "${escapeStringForJson(nome)}",
  "COGNOME": "${escapeStringForJson(cognome)}",
  "NUM_TEL_WP": "${escapeStringForJson(numTelWp)}",
  "NUM_TEL": "${escapeStringForJson(numTel)}",
  "DATA_NASCITA": "${escapeStringForJson(dataNascita)}",
  "LUOGO_NASCITA": "${escapeStringForJson(luogoNascita)}",
  "NOME_AZIENDA": "${escapeStringForJson(nomeAzienda)}",
  "VIA_AZIENDA": "${escapeStringForJson(viaAzienda)}",
  "CITTA_AZIENDA": "${escapeStringForJson(cittaAzienda)}",
  "PROVINCIA_AZIENDA": "${escapeStringForJson(provinciaAzienda)}",
  "CODICE_FISCALE": "${escapeStringForJson(codiceFiscale)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Anagrafica ByToken',
      apiUrl: '${baseUrl}/ANAGRAFICA/update',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAnagraficaANAGRAFICAUpdateSelectTokenPutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "MAIL": "",
  "NOME": "",
  "COGNOME": "",
  "NUM_TEL_WP": "",
  "NUM_TEL": "",
  "DATA_NASCITA": "",
  "LUOGO_NASCITA": "",
  "NOME_AZIENDA": "",
  "VIA_AZIENDA": "",
  "CITTA_AZIENDA": "",
  "PROVINCIA_AZIENDA": "",
  "CODICE_FISCALE": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update_anagrafica_ANAGRAFICA_update_select__token__put',
      apiUrl: '${baseUrl}/ANAGRAFICA/update_select/${token}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAnagraficaANAGRAFICADeleteTokenDeleteCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_anagrafica_ANAGRAFICA_delete__token__delete',
      apiUrl: '${baseUrl}/ANAGRAFICA/delete/${token}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllPrenotazioniCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Prenotazioni',
      apiUrl: '${baseUrl}/PRENOTAZIONI/get_all',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic jspAllData(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class InsertPrenotazionePRENOTAZIONIInsertPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "PRENOTAZIONI_PRG": "",
  "IDPROGRESSIVO": 0,
  "CLIENTE_PRG": 0,
  "TITOLO_SERVIZIO": "",
  "DATA": "",
  "ORA_DA": "",
  "ORA_A": "",
  "CALENDARIO_PRG": 0,
  "NOME": "",
  "COGNOME": "",
  "TELEFONO": "",
  "MAIL": "",
  "NOTE": "",
  "ALLEGATO": "",
  "CANCELLAZIONE_LOGICA": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insert_prenotazione_PRENOTAZIONI_insert_post',
      apiUrl: '${baseUrl}/PRENOTAZIONI/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllPrenotazioniClienteCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? clienteAttuale = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Token": "${escapeStringForJson(token)}",
  "cliente_attuale": "${escapeStringForJson(clienteAttuale)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Prenotazioni cliente',
      apiUrl: '${baseUrl}/PRENOTAZIONI/get/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAppoitmentPRENOTAZIONIGetOneGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_appoitment_PRENOTAZIONI_get_one__get',
      apiUrl: '${baseUrl}/PRENOTAZIONI/get_one/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAppoitmentPRENOTAZIONIUpdateTOKENPutCall {
  Future<ApiCallResponse> call({
    int? token,
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "PRENOTAZIONI_PRG": "",
  "IDPROGRESSIVO": "",
  "CLIENTE_PRG": "",
  "TITOLO_SERVIZIO": "",
  "DATA": "",
  "ORA_DA": "",
  "ORA_A": "",
  "CALENDARIO_PRG": "",
  "NOME": "",
  "COGNOME": "",
  "TELEFONO": "",
  "MAIL": "",
  "NOTE": "",
  "ALLEGATO": "",
  "CANCELLAZIONE_LOGICA": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update_appoitment_PRENOTAZIONI_update__TOKEN__put',
      apiUrl: '${baseUrl}/PRENOTAZIONI/update/${token}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAppoitmentPRENOTAZIONIDeleteDeleteCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_appoitment_PRENOTAZIONI_delete_delete',
      apiUrl: '${baseUrl}/PRENOTAZIONI/delete',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePrenotazionePRENOTAZIONIDeletePrenotazioniCANCELLAZIONELOGICADeleteCall {
  Future<ApiCallResponse> call({
    String? token = '',
    bool? cancellazioneLogica,
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'delete_prenotazione_PRENOTAZIONI_delete_prenotazioni__CANCELLAZIONE_LOGICA__delete',
      apiUrl:
          '${baseUrl}/PRENOTAZIONI/delete/prenotazioni/${cancellazioneLogica}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'TOKEN': token,
        'CANCELLAZIONE_LOGICA': cancellazioneLogica,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllAppointmentsPRENOTAZIONIGetAllPrenotazioniPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get_all_appointments_PRENOTAZIONI_get_all_prenotazioni_post',
      apiUrl: '${baseUrl}/PRENOTAZIONI/get_all_prenotazioni',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllAppoitmentClientePRENOTAZIONIGetAllClientePostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Token": "",
  "cliente_attuale": 0,
  "Canc": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get_all_appoitment_cliente_PRENOTAZIONI_get_all_cliente_post',
      apiUrl: '${baseUrl}/PRENOTAZIONI/get_all_cliente',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDatePRENOTAZIONIGetDatePostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Token_cliente": "",
  "cliente_attuale": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get_date_PRENOTAZIONI_get_date_post',
      apiUrl: '${baseUrl}/PRENOTAZIONI/get_date',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePrenPRENOTAZIONIDeletePrenDeleteCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_pren_PRENOTAZIONI_delete_pren_delete',
      apiUrl: '${baseUrl}/PRENOTAZIONI/delete_pren',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAppoitmentPRENOTAZIONIGetOneDataGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_appoitment_PRENOTAZIONI_get_one_data__get',
      apiUrl: '${baseUrl}/PRENOTAZIONI/get_one_data/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertClientiCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? tipoRuolo = 'user',
    String? nome = '',
    String? cognome = '',
    String? mail = '',
    String? telefono = '',
    String? img = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "${escapeStringForJson(token)}",
  "TIPO_RUOLO": "${escapeStringForJson(tipoRuolo)}",
  "NOME": "${escapeStringForJson(nome)}",
  "COGNOME": "${escapeStringForJson(cognome)}",
  "MAIL": "${escapeStringForJson(mail)}",
  "TELEFONO": "${escapeStringForJson(telefono)}",
  "IMG": "${escapeStringForJson(img)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert Clienti',
      apiUrl: '${baseUrl}/CLIENTI/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertSelectClientiCLIENTIInsertSelectPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "CLIENTE_PRG": "",
  "TOKEN": "",
  "TIPO_RUOLO": "",
  "NOME": "",
  "COGNOME": "",
  "MAIL": "",
  "TELEFONO": "",
  "IMG": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insert_select_clienti_CLIENTI_insert_select_post',
      apiUrl: '${baseUrl}/CLIENTI/insert_select',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertSelectClientiCLIENTIInsertSelectTelefonoPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "CLIENTE_PRG": "",
  "TOKEN": "",
  "TIPO_RUOLO": "",
  "NOME": "",
  "COGNOME": "",
  "MAIL": "",
  "TELEFONO": "",
  "IMG": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insert_select_clienti_CLIENTI_insert_select_telefono_post',
      apiUrl: '${baseUrl}/CLIENTI/insert_select_telefono',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllClientiCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Clienti',
      apiUrl: '${baseUrl}/CLIENTI/get_all',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? jspAllData(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetClientiCLIENTIGetTokenGetCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_clienti_CLIENTI_get__token__get',
      apiUrl: '${baseUrl}/CLIENTI/get/${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetClientiByMailCLIENTIGetByDataMailPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "MAIL": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get_clienti_by_mail_CLIENTI_get_by_data_mail_post',
      apiUrl: '${baseUrl}/CLIENTI/get_by_data/mail',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetClientiByTelefonoCLIENTIGetByDataTelefonoGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_clienti_by_telefono_CLIENTI_get_by_data_telefono_get',
      apiUrl: '${baseUrl}/CLIENTI/get_by_data/telefono',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateClientiCLIENTIUpdateTokenPutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "CLIENTE_PRG": "",
  "TOKEN": "",
  "TIPO_RUOLO": "",
  "NOME": "",
  "COGNOME": "",
  "MAIL": "",
  "TELEFONO": "",
  "IMG": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update_clienti_CLIENTI_update__token__put',
      apiUrl: '${baseUrl}/CLIENTI/update/${token}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateClientiSelectCLIENTIUpdateSelectTokenPutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "CLIENTE_PRG": "",
  "TOKEN": "",
  "TIPO_RUOLO": "",
  "NOME": "",
  "COGNOME": "",
  "MAIL": "",
  "TELEFONO": "",
  "IMG": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update_clienti_select_CLIENTI_update_select__token__put',
      apiUrl: '${baseUrl}/CLIENTI/update_select/${token}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteClientiCLIENTIDeleteTokenDeleteCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_clienti_CLIENTI_delete__token__delete',
      apiUrl: '${baseUrl}/CLIENTI/delete/${token}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateTipiServizioTIPISERVIZIOCreatePostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TIPO_SERVIZIO": "",
  "CALENDAR": "",
  "PREAVVISO_ANNULLAMENTO": "",
  "SCADENZA": "",
  "INDIRIZZO_SPECIFICO": "",
  "FILE": "",
  "MAIL_REF": "",
  "LINK": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_tipi_servizio_TIPI_SERVIZIO_create_post',
      apiUrl: '${baseUrl}/TIPI_SERVIZIO/create',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadAllTipiServizioTIPISERVIZIOTipiservizioGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'read_all_tipi_servizio_TIPI_SERVIZIO_tipiservizio_get',
      apiUrl: '${baseUrl}/TIPI_SERVIZIO/tipiservizio',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadTipiServizioTIPISERVIZIOTipiservizioTipoServizioGetCall {
  Future<ApiCallResponse> call({
    String? tipoServizio = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'read_tipi_servizio_TIPI_SERVIZIO_tipiservizio__tipo_servizio__get',
      apiUrl: '${baseUrl}/TIPI_SERVIZIO/tipiservizio/${tipoServizio}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateTipiServizioTIPISERVIZIOTipiservizioTipoServizioPutCall {
  Future<ApiCallResponse> call({
    String? tipoServizio = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TIPO_SERVIZIO": "",
  "CALENDAR": "",
  "PREAVVISO_ANNULLAMENTO": "",
  "SCADENZA": "",
  "INDIRIZZO_SPECIFICO": "",
  "FILE": "",
  "MAIL_REF": "",
  "LINK": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'update_tipi_servizio_TIPI_SERVIZIO_tipiservizio__tipo_servizio__put',
      apiUrl: '${baseUrl}/TIPI_SERVIZIO/tipiservizio/${tipoServizio}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteTipiServizioTIPISERVIZIOTipiservizioTipoServizioDeleteCall {
  Future<ApiCallResponse> call({
    String? tipoServizio = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'delete_tipi_servizio_TIPI_SERVIZIO_tipiservizio__tipo_servizio__delete',
      apiUrl: '${baseUrl}/TIPI_SERVIZIO/tipiservizio/${tipoServizio}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllPagamentiPAGAMENTIGetAllPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get_all_pagamenti_PAGAMENTI_get_all_post',
      apiUrl: '${baseUrl}/PAGAMENTI/get_all',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertPagamentiPAGAMENTIPostPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "tipo_di_pag": "",
  "MAIL_PAYPAL": "",
  "TOKEN_CARD": "",
  "STATO_SERVIZIO": "",
  "TIPO_ABBONAMENTO": "",
  "DATA_PAGAMENTO": "",
  "DATA_SCADENZA": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insert_pagamenti_PAGAMENTI_post_post',
      apiUrl: '${baseUrl}/PAGAMENTI/post',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPagamentiPAGAMENTIGetTokenGetCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_pagamenti_PAGAMENTI_get__token__get',
      apiUrl: '${baseUrl}/PAGAMENTI/get/${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePagamentiPAGAMENTIUpdateTokenPutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "tipo_di_pag": "",
  "MAIL_PAYPAL": "",
  "TOKEN_CARD": "",
  "STATO_SERVIZIO": "",
  "TIPO_ABBONAMENTO": "",
  "DATA_PAGAMENTO": "",
  "DATA_SCADENZA": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update_pagamenti_PAGAMENTI_update__token__put',
      apiUrl: '${baseUrl}/PAGAMENTI/update/${token}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePagamentiPAGAMENTIDeleteTokenDeleteCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_pagamenti_PAGAMENTI_delete__token__delete',
      apiUrl: '${baseUrl}/PAGAMENTI/delete/${token}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckingLoginLoginLoginCheckPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "MAIL": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'checking_login_Login_login_check__post',
      apiUrl: '${baseUrl}/Login/login_check/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmEmailLoginLoginVerifyPutCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "CHECK_TOKEN": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'confirm_email_Login_login_verify__put',
      apiUrl: '${baseUrl}/Login/login_verify/',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteLoginLoginDeleteDeleteCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_login_Login_delete__delete',
      apiUrl: '${baseUrl}/Login/delete/',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetLoginLoginGetTokenGetCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_login_Login_get__token__get',
      apiUrl: '${baseUrl}/Login/get/${token}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllLoginLoginGetAllGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_all_login_Login_get_all_get',
      apiUrl: '${baseUrl}/Login/get_all',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmEmailLoginLoginVerifyCheckTokenGetCall {
  Future<ApiCallResponse> call({
    String? checkToken = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'confirm_email_Login_login_verify__check_token__get',
      apiUrl: '${baseUrl}/Login/login_verify/${checkToken}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertCustomBotCUSTOMBOTInsertPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "",
  "IDPROGRESSIVO": "",
  "TITOLO_SERVIZIO": "",
  "TIPO_SERVIZIO": "",
  "CONTENUTO": "",
  "PREZZO": "",
  "TEMPO_SERVIZIO": "",
  "CALENDAR": "",
  "PREAVVISO_ANNULLAMENTO": "",
  "SCADENZA": "",
  "LINK": "",
  "INDIRIZZO_SPECIFICO": "",
  "FILE": "",
  "MAIL_REF": "",
  "CSV_PRG": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'insert_custom_bot_CUSTOM_BOT_insert_post',
      apiUrl: '${baseUrl}/CUSTOM_BOT/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllCustomBotCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Custom Bot',
      apiUrl: '${baseUrl}/CUSTOM_BOT/get_all',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? jspAllData(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetAllCustomBotIdCUSTOMBOTGetAllIdGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_all_custom_bot_id_CUSTOM_BOT_get_all_id_get',
      apiUrl: '${baseUrl}/CUSTOM_BOT/get_all_id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCustomBotByTokenIdPrgCUSTOMBOTGetIdPrgGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_custom_bot_by_token_id_prg_CUSTOM_BOT_get_id_prg_get',
      apiUrl: '${baseUrl}/CUSTOM_BOT/get/id_prg',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCustomBotByTokenCUSTOMBOTGetTokenGetCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_custom_bot_by_token_CUSTOM_BOT_get__token___get',
      apiUrl: '${baseUrl}/CUSTOM_BOT/get/${token}/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCustomBotCUSTOMBOTDeleteTokenDeleteCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_custom_bot_CUSTOM_BOT_delete__token__delete',
      apiUrl: '${baseUrl}/CUSTOM_BOT/delete/${token}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDurataServizioCalendarCUSTOMBOTGetDurataServizioPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'get_durata_servizio_calendar_CUSTOM_BOT_get_durata_servizio_post',
      apiUrl: '${baseUrl}/CUSTOM_BOT/get_durata_servizio',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFreeSlotCALCOLATOREGetFreeSlotsPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "DATA": "",
  "IDPROGRESSIVO": 0,
  "TOKEN": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get_free_slot_CALCOLATORE_get_free_slots_post',
      apiUrl: '${baseUrl}/CALCOLATORE/get_free_slots',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadRootGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'read_root__get',
      apiUrl: '${baseUrl}/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsertTipoServizioCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? tipoServizio = '',
    String? tipoServizioDescr = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Token": "${escapeStringForJson(token)}",
  "TIPO_SERVIZIO": "${escapeStringForJson(tipoServizio)}",
  "TIPO_SERVIZIO_DESCR": "${escapeStringForJson(tipoServizioDescr)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert Tipo Servizio',
      apiUrl: '${baseUrl}/TIPO_SERVIZIO/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTipoServizioCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Token": "${escapeStringForJson(token)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Tipo Servizio',
      apiUrl: '${baseUrl}/TIPO_SERVIZIO/get_all',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? jspTipoServizioPRG(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].TIPO_SERVIZIO_PRG''',
      ));
  String? jspTipoServizioDescr(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].TIPO_SERVIZIO_DESCR''',
      ));
  String? jspTipoServizioTitolo(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].TIPO_SERVIZIO''',
      ));
  List? allData(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class DeleteTipoServizioCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? tipoServizioPrg,
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Token": "${escapeStringForJson(token)}",
  "TIPO_SERVIZIO_PRG": ${tipoServizioPrg}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Tipo Servizio',
      apiUrl: '${baseUrl}/TIPO_SERVIZIO/delete',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: true,
    );
  }
}

class UpdateTipoServizioCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? tipoServizio = '',
    String? tipoServizioDescr = '',
    int? tipoServizioPrg,
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Token": "${escapeStringForJson(token)}",
  "TIPO_SERVIZIO_PRG": ${tipoServizioPrg},
  "TIPO_SERVIZIO": "${escapeStringForJson(tipoServizio)}",
  "TIPO_SERVIZIO_DESCR": "${escapeStringForJson(tipoServizioDescr)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Tipo Servizio',
      apiUrl: '${baseUrl}/TIPO_SERVIZIO/update',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllTipiServizioCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Token": "${token}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Tipi Servizio',
      apiUrl: '${baseUrl}/TIPI_SERVIZIO/get_all',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? jspScadenza(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].SCADENZA''',
      ));
  String? jspTipoServizio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].TIPO_SERVIZIO''',
      ));
  String? jspCalendar(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].CALENDAR''',
      ));
  String? jspFile(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].FILE''',
      ));
  String? jspLink(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].LINK''',
      ));
  int? jspTipoServizioPRG(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].TIPO_SERVIZIO_PRG''',
      ));
  String? jspMailRef(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].MAIL_REF''',
      ));
  dynamic? jspAllData(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class InsertTipiServiziCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? tipoServizio = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "TOKEN": "string",
  "TIPO_SERVIZIO_PRG": 0,
  "TIPO_SERVIZIO": "string",
  "CALENDAR": "string",
  "PREAVVISO_ANNULLAMENTO": "2024-11-28",
  "SCADENZA": "2024-11-28",
  "INDIRIZZO_SPECIFICO": "string",
  "FILE": "string",
  "MAIL_REF": "string",
  "LINK": "string"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Insert Tipi Servizi',
      apiUrl: '${baseUrl}TIPI_SERVIZIO/insert',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ADAchatbotCall {
  Future<ApiCallResponse> call({
    String? idsession = '258',
    String? query = '',
    String? token = '258',
    String? email = '',
    String? telephone = '',
  }) async {
    final baseUrl = ADAapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "idsession": "${escapeStringForJson(idsession)}",
  "query": "${escapeStringForJson(query)}",
  "token": "${escapeStringForJson(token)}",
  "email": "${escapeStringForJson(email)}",
  "telephone": "${escapeStringForJson(telephone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ADAchatbot',
      apiUrl: '${baseUrl}/Chatbot',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? content(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Resp''',
      ));
  String? idSession(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.IdSession''',
      ));
  String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

/// End ADAapi Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
