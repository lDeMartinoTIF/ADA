import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_mockDataTipoServizio') != null) {
        try {
          _mockDataTipoServizio = jsonDecode(
              await secureStorage.getString('ff_mockDataTipoServizio') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_mockDataTipiServizio') != null) {
        try {
          _mockDataTipiServizio = jsonDecode(
              await secureStorage.getString('ff_mockDataTipiServizio') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_mockDataCustomBot') != null) {
        try {
          _mockDataCustomBot = jsonDecode(
              await secureStorage.getString('ff_mockDataCustomBot') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _isNewChat = true;
  bool get isNewChat => _isNewChat;
  set isNewChat(bool value) {
    _isNewChat = value;
  }

  String _emptyStringAPP = '';
  String get emptyStringAPP => _emptyStringAPP;
  set emptyStringAPP(String value) {
    _emptyStringAPP = value;
  }

  dynamic _mockDataTipoServizio = jsonDecode(
      '[{\"TOKEN\":null,\"TIPO_SERVIZIO_PRG\":1.0,\"TIPO_SERVIZIO\":\"Informativa\",\"TIPO_SERVIZIO_DESCR\":\"Informazioni offerte al cliente\"},{\"TOKEN\":null,\"TIPO_SERVIZIO_PRG\":2.0,\"TIPO_SERVIZIO\":\"Pagamento con prenotazione\",\"TIPO_SERVIZIO_DESCR\":\"Servizi a pagamento che possono essere prenotati\"},{\"TOKEN\":null,\"TIPO_SERVIZIO_PRG\":null,\"TIPO_SERVIZIO\":null,\"TIPO_SERVIZIO_DESCR\":null},{\"TOKEN\":\" \",\"TIPO_SERVIZIO_PRG\":null,\"TIPO_SERVIZIO\":null,\"TIPO_SERVIZIO_DESCR\":null}]');
  dynamic get mockDataTipoServizio => _mockDataTipoServizio;
  set mockDataTipoServizio(dynamic value) {
    _mockDataTipoServizio = value;
    secureStorage.setString('ff_mockDataTipoServizio', jsonEncode(value));
  }

  void deleteMockDataTipoServizio() {
    secureStorage.delete(key: 'ff_mockDataTipoServizio');
  }

  dynamic _mockDataTipiServizio = jsonDecode(
      '[{\"token\":null,\"TIPO_SERVIZIO\":\"Informativa\",\"PREZZO\":null,\"TEMPO_SERVIZIO\":null,\"CALENDAR\":null,\"PREAVVISO_ANNULLAMENTO\":null,\"SCADENZA\":null,\"LINK\":\"X\",\"INDIRIZZO_SPECIFICO\":\"X\",\"FILE\":null,\"MAIL_REF\":\"X\",\"TELEFONO_REF\":\"X\"},{\"token\":null,\"TIPO_SERVIZIO\":\"Pagamento con prenotazione\",\"PREZZO\":null,\"TEMPO_SERVIZIO\":\"X\",\"CALENDAR\":null,\"PREAVVISO_ANNULLAMENTO\":null,\"SCADENZA\":null,\"LINK\":\"X\",\"INDIRIZZO_SPECIFICO\":\"X\",\"FILE\":null,\"MAIL_REF\":\"X\",\"TELEFONO_REF\":\"X\"}]');
  dynamic get mockDataTipiServizio => _mockDataTipiServizio;
  set mockDataTipiServizio(dynamic value) {
    _mockDataTipiServizio = value;
    secureStorage.setString('ff_mockDataTipiServizio', jsonEncode(value));
  }

  void deleteMockDataTipiServizio() {
    secureStorage.delete(key: 'ff_mockDataTipiServizio');
  }

  dynamic _mockDataCustomBot;
  dynamic get mockDataCustomBot => _mockDataCustomBot;
  set mockDataCustomBot(dynamic value) {
    _mockDataCustomBot = value;
    secureStorage.setString('ff_mockDataCustomBot', jsonEncode(value));
  }

  void deleteMockDataCustomBot() {
    secureStorage.delete(key: 'ff_mockDataCustomBot');
  }

  final _provinceManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> province({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _provinceManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProvinceCache() => _provinceManager.clear();
  void clearProvinceCacheKey(String? uniqueKey) =>
      _provinceManager.clearRequest(uniqueKey);

  final _comuniManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> comuni({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _comuniManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearComuniCache() => _comuniManager.clear();
  void clearComuniCacheKey(String? uniqueKey) =>
      _comuniManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
