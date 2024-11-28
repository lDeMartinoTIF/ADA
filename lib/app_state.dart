import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
