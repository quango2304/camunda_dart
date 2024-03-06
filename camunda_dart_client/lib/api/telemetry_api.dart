//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TelemetryApi {
  TelemetryApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Configure Telemetry
  ///
  /// Configures whether Camunda receives data collection of the process engine setup and usage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TelemetryConfigurationDto] telemetryConfigurationDto:
  Future<Response> configureTelemetryWithHttpInfo({ TelemetryConfigurationDto? telemetryConfigurationDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/telemetry/configuration';

    // ignore: prefer_final_locals
    Object? postBody = telemetryConfigurationDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Configure Telemetry
  ///
  /// Configures whether Camunda receives data collection of the process engine setup and usage.
  ///
  /// Parameters:
  ///
  /// * [TelemetryConfigurationDto] telemetryConfigurationDto:
  Future<void> configureTelemetry({ TelemetryConfigurationDto? telemetryConfigurationDto, }) async {
    final response = await configureTelemetryWithHttpInfo( telemetryConfigurationDto: telemetryConfigurationDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch Telemetry Configuration
  ///
  /// Fetches Telemetry Configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTelemetryConfigurationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/telemetry/configuration';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Fetch Telemetry Configuration
  ///
  /// Fetches Telemetry Configuration.
  Future<TelemetryConfigurationDto?> getTelemetryConfiguration() async {
    final response = await getTelemetryConfigurationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TelemetryConfigurationDto',) as TelemetryConfigurationDto;
    
    }
    return null;
  }

  /// Fetch Telemetry Data
  ///
  /// Fetches Telemetry Data.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTelemetryDataWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/telemetry/data';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Fetch Telemetry Data
  ///
  /// Fetches Telemetry Data.
  Future<TelemetryDataDto?> getTelemetryData() async {
    final response = await getTelemetryDataWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TelemetryDataDto',) as TelemetryDataDto;
    
    }
    return null;
  }
}
