import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:top_max_task/core/api/api_consumer.dart';
import 'package:top_max_task/core/api/app_interceptor.dart';

@LazySingleton(as: ApiConsumer)
class DioConsumer implements ApiConsumer {
  final Dio _client;

  DioConsumer({required Dio dio})
    : _client = Dio(
        BaseOptions(
          followRedirects: false,
          receiveDataWhenStatusError: true,
          responseType: ResponseType.json,
        ),
      ) {
    _client.interceptors.add(AppInterceptors());

    if (kDebugMode) {
      _client.interceptors.add(
        LogInterceptor(requestBody: true, responseBody: true),
      );
    }
  }

  @override
  Future<dynamic> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    try {
      _client.options.headers = headers;
      final response = await _client.get(
        path,
        queryParameters: queryParameters,
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      throw DioHandlerExc.handle(e);
    }
  }

  @override
  Future<dynamic> post({
    required String path,
    Object? body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      _client.options.headers = headers;
      final response = await _client.post(
        path,
        data: body,
        queryParameters: queryParameters,
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      throw DioHandlerExc.handle(e);
    }
  }

  @override
  Future<dynamic> put({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    try {
      _client.options.headers = headers;
      final response = await _client.put(
        path,
        data: body,
        queryParameters: queryParameters,
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      throw DioHandlerExc.handle(e);
    }
  }

  @override
  Future<dynamic> patch({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    try {
      _client.options.headers = headers;
      final response = await _client.patch(
        path,
        data: body,
        queryParameters: queryParameters,
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      throw DioHandlerExc.handle(e);
    }
  }

  @override
  Future<dynamic> delete({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    try {
      _client.options.headers = headers;
      final response = await _client.delete(
        path,
        data: body,
        queryParameters: queryParameters,
      );
      return _handleResponse(response);
    } on DioException catch (e) {
      throw DioHandlerExc.handle(e);
    }
  }

  Future<dynamic> multipart({
    required String path,
    Map<String, String>? fields,
    List<MapEntry<String, MultipartFile>>? files,
    Map<String, String>? headers,
  }) async {
    final formData = FormData();
    if (fields != null) formData.fields.addAll(fields.entries);
    if (files != null) formData.files.addAll(files);

    try {
      _client.options.headers = headers;
      final response = await _client.post(path, data: formData);
      return _handleResponse(response);
    } on DioException catch (e) {
      throw DioHandlerExc.handle(e);
    }
  }

  dynamic _handleResponse(Response response) {
    if (response.data is String) {
      return jsonDecode(response.data);
    }
    return response.data;
  }
}

class DioHandlerExc implements Exception {
  final String message;

  DioHandlerExc._(this.message);

  factory DioHandlerExc.handle(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return DioHandlerExc._("Connection Timeout");
      case DioExceptionType.sendTimeout:
        return DioHandlerExc._("Send Timeout");
      case DioExceptionType.receiveTimeout:
        return DioHandlerExc._("Receive Timeout");
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final errorMessage = error.response?.data['message'] ?? "Unknown Error";
        return DioHandlerExc._("Error $statusCode: $errorMessage");
      case DioExceptionType.cancel:
        return DioHandlerExc._("Request Cancelled");
      case DioExceptionType.unknown:
        return DioHandlerExc._("Unknown Error");
      default:
        return DioHandlerExc._("Unexpected Error");
    }
  }

  @override
  String toString() => message;
}
