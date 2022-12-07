import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FexinventoryCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? sn = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'fexinventory',
      apiUrl: 'https://fortiextender.forticloud.com/fext/api/public/v1/devices',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token ${token}',
        'Content-Type': 'application/json',
      },
      params: {
        'sn': sn,
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic payloadresult(dynamic response) => getJsonField(
        response,
        r'''$.payload.result''',
        true,
      );
  static dynamic payloadresultsn(dynamic response) => getJsonField(
        response,
        r'''$.payload.result[:].sn''',
        true,
      );
  static dynamic payloadresultdescription(dynamic response) => getJsonField(
        response,
        r'''$.payload.result[:].description''',
        true,
      );
  static dynamic payloadresultshipdate(dynamic response) => getJsonField(
        response,
        r'''$.payload.result[:].ship_date''',
        true,
      );
  static dynamic payloadresultregistrationdate(dynamic response) =>
      getJsonField(
        response,
        r'''$.payload.result[:].registration_date''',
        true,
      );
  static dynamic payloadresultsource(dynamic response) => getJsonField(
        response,
        r'''$.payload.result[:].source''',
        true,
      );
  static dynamic payloadresultdiscoveryip(dynamic response) => getJsonField(
        response,
        r'''$.payload.result[:].discovery_ip''',
        true,
      );
  static dynamic payloadresultlastseentime(dynamic response) => getJsonField(
        response,
        r'''$.payload.result[:].last_seen_time''',
        true,
      );
  static dynamic payloadtotalCount(dynamic response) => getJsonField(
        response,
        r'''$.payload.totalCount''',
      );
}

class GetDeviceCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? sn = '',
    double? longitude,
    double? latitude,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getDevice',
      apiUrl:
          'https://fortiextender.forticloud.com/fext/api/public/v1/devices/${sn}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token ${token}',
      },
      params: {
        'sn': sn,
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.payload.status''',
      );
}

class FexrebootCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? sn = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'fexreboot',
      apiUrl:
          'https://fortiextender.forticloud.com/fext/api/public/v1/devices/reboot?sn=${sn}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Token ${token}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      cache: false,
    );
  }
}

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}
