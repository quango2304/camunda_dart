//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EngineApi {
  EngineApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get List
  ///
  /// Retrieves the names of all process engines available on your platform. **Note**: You cannot prepend `/engine/{name}` to this method.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProcessEngineNamesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/engine';

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

  /// Get List
  ///
  /// Retrieves the names of all process engines available on your platform. **Note**: You cannot prepend `/engine/{name}` to this method.
  Future<List<ProcessEngineDto>?> getProcessEngineNames() async {
    final response = await getProcessEngineNamesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ProcessEngineDto>') as List)
        .cast<ProcessEngineDto>()
        .toList(growable: false);

    }
    return null;
  }
}