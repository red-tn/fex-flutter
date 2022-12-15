import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';
import '../cloud_functions/cloud_functions.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class FexinventoryCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? sn = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'FexinventoryCall',
        'variables': {
          'token': token,
          'sn': sn,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetDeviceCall',
        'variables': {
          'token': token,
          'sn': sn,
          'longitude': longitude,
          'latitude': latitude,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
